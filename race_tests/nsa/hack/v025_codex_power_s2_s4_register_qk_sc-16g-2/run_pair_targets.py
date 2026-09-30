import csv
import importlib.util
import json
import sys
import os
import hashlib
from pathlib import Path

import tilelang


tilelang.set_log_level('ERROR')
root = Path('/root/tilelang-metax/race_tests/nsa')
rep = root / 'rep/v025_codex_power_s2_s4_register_qk_sc-16g-2'
sources = {
    'v028': Path(os.environ['NSA_V028_SOURCE']),
    'v024': root / 'experiments/v024_codex_power_host_kernel_cache_sc-16g-2/candidate.py',
    'v025': root / 'experiments/v025_codex_power_s2_s4_register_qk_sc-16g-2/candidate.py',
}
hashes = {label: hashlib.sha256(path.read_bytes()).hexdigest() for label, path in sources.items()}
assert hashes['v028'] == '42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'
(rep / 'paired_target_source_hashes.json').write_text(json.dumps(hashes, indent=2) + '\n')

modules = {}
for label, path in sources.items():
    spec = importlib.util.spec_from_file_location('nsa_' + label, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    modules[label] = module
sys.modules['submission'] = modules['v028']
runner = root / 'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py'
spec = importlib.util.spec_from_file_location('nsa_official_runner', runner)
test = importlib.util.module_from_spec(spec)
spec.loader.exec_module(test)
cases = json.loads((root / 'official_case.json').read_text())
with (rep / 'paired_case10_case11_sc-16g-2.csv').open('w', newline='') as handle:
    writer = csv.writer(handle)
    writer.writerow(('case', 'run', 'variant', 'latency_ms', 'status'))
    for case_index, case in enumerate(cases, 1):
        if case_index not in (10,11):continue
        for run, label in enumerate(('v028','v024','v025','v025','v024','v028'),1):
            test.run_kernel = modules[label].run_kernel
            latency = test._run_one_case(case['B'], case['SEQ_LEN'], case['H'], case['HQ'], case['D'], case['S'], case['block_size'], case['is_causal'])
            writer.writerow((case_index, run, label, f'{latency:.6f}', 'PASS'))
            handle.flush()
            print(case_index, run, label, latency, flush=True)
