import csv
import hashlib
import importlib.util
import json
import os
import sys
from pathlib import Path
import tilelang

tilelang.set_log_level('ERROR')
root = Path('/root/tilelang-metax/race_tests/nsa')
rep = root / 'rep/compare_power_v013_vs_v028_20260930_sc-16g-2'
sources = {
    'v028': Path(os.environ['NSA_V028_SOURCE']),
    'power_v013': root / 'submission/v013_codex_power_best_promotion_sc-16g-2/submission.py',
}
expected = {
    'v028': '42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd',
    'power_v013': 'e51d49834fdf06bb02f4c7c2ea0bc2bbc9d6a95b81578e58c2317eee0bdfbe76',
}
modules = {}
for label, path in sources.items():
    digest = hashlib.sha256(path.read_bytes()).hexdigest()
    assert digest == expected[label], (label, digest)
    spec = importlib.util.spec_from_file_location('nsa_compare_' + label, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    modules[label] = module
assert (root/'submission.py').read_bytes() == sources['power_v013'].read_bytes()
sys.modules['submission'] = modules['v028']
runner = root / 'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py'
assert hashlib.sha256(runner.read_bytes()).hexdigest() == '6ebdb82ab43a844a908aeb33c08e2b4a6cf2b7385a20f903f123875b53534568'
spec = importlib.util.spec_from_file_location('nsa_official_comparison', runner)
test = importlib.util.module_from_spec(spec)
spec.loader.exec_module(test)
cases = json.loads((root/'official_case.json').read_text())
with (rep/'paired_case6_case12_sc-16g-2.csv').open('w', newline='') as handle:
    writer = csv.writer(handle)
    writer.writerow(('case', 'run', 'variant', 'latency_ms', 'status'))
    for case_id in (6, 12):
        case = cases[case_id - 1]
        print('case', case_id, case, flush=True)
        for run, label in enumerate(('v028', 'power_v013', 'power_v013', 'v028') * 2, 1):
            test.run_kernel = modules[label].run_kernel
            latency = test._run_one_case(case['B'], case['SEQ_LEN'], case['H'], case['HQ'], case['D'], case['S'], case['block_size'], case['is_causal'])
            writer.writerow((case_id, run, label, f'{latency:.6f}', 'PASS'))
            handle.flush()
            print(case_id, run, label, latency, 'PASS', flush=True)
print('source hashes:', expected, flush=True)
