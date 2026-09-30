import csv
import importlib.util
import json
import sys
from pathlib import Path

import tilelang


tilelang.set_log_level('ERROR')
root = Path('/root/tilelang-metax/race_tests/nsa')
rep = root / 'rep/v013_codex_power_best_promotion_sc-16g-2'
sources = {
    'baseline': root / 'experiments/v013_codex_power_best_promotion_sc-16g-2/baseline_from_start.py',
    'root': root / 'submission.py',
}
modules = {}
for label, path in sources.items():
    spec = importlib.util.spec_from_file_location('nsa_' + label, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    modules[label] = module
sys.modules['submission'] = modules['baseline']
runner = root / 'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py'
spec = importlib.util.spec_from_file_location('nsa_official_runner', runner)
test = importlib.util.module_from_spec(spec)
spec.loader.exec_module(test)
cases = json.loads((root / 'official_case.json').read_text())
with (rep / 'paired_all14_sc-16g-2.csv').open('w', newline='') as handle:
    writer = csv.writer(handle)
    writer.writerow(('case', 'run', 'variant', 'latency_ms', 'status'))
    for case_index, case in enumerate(cases, 1):
        for run, label in enumerate(('baseline', 'root', 'root', 'baseline'), 1):
            test.run_kernel = modules[label].run_kernel
            latency = test._run_one_case(case['B'], case['SEQ_LEN'], case['H'], case['HQ'], case['D'], case['S'], case['block_size'], case['is_causal'])
            writer.writerow((case_index, run, label, f'{latency:.6f}', 'PASS'))
            handle.flush()
            print(case_index, run, label, latency, flush=True)
