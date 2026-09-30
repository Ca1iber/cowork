import csv
import importlib.util
import json
import sys
from pathlib import Path

import tilelang


tilelang.set_log_level('ERROR')
root = Path('/root/tilelang-metax/race_tests/nsa')
rep = root / 'rep/v012_codex_power_s8_direct_output_sc-16g-2'
sources = {
    'v010': root / 'submission/v010_codex_power_s8_register_qk_sc-16g-2/submission.py',
    'v012': root / 'experiments/v012_codex_power_s8_direct_output_sc-16g-2/candidate.py',
}
modules = {}
for label, path in sources.items():
    spec = importlib.util.spec_from_file_location('nsa_' + label, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    modules[label] = module
sys.modules['submission'] = modules['v010']
runner = root / 'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py'
spec = importlib.util.spec_from_file_location('nsa_official_runner', runner)
test = importlib.util.module_from_spec(spec)
spec.loader.exec_module(test)
case = json.loads((root / 'official_case.json').read_text())[11]
sequence = ('v010', 'v012', 'v012', 'v010') * 4
with (rep / 'paired_case12_sc-16g-2.csv').open('w', newline='') as handle:
    writer = csv.writer(handle)
    writer.writerow(('run', 'variant', 'latency_ms', 'status'))
    for index, label in enumerate(sequence, 1):
        test.run_kernel = modules[label].run_kernel
        latency = test._run_one_case(case['B'], case['SEQ_LEN'], case['H'], case['HQ'], case['D'], case['S'], case['block_size'], case['is_causal'])
        writer.writerow((index, label, f'{latency:.6f}', 'PASS'))
        handle.flush()
        print(index, label, latency, flush=True)
