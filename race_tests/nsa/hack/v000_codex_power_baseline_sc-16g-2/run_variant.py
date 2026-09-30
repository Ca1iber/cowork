import csv
import importlib.util
import json
import os
import sys
from pathlib import Path

import tilelang


tilelang.set_log_level('ERROR')
root = Path('/root/tilelang-metax/race_tests/nsa')
source = Path(os.environ['NSA_VARIANT_SOURCE'])
results = Path(os.environ['NSA_RESULTS_PATH'])
case_filter = os.environ.get('NSA_CASES', '')
selected = {int(value) for value in case_filter.split(',') if value} if case_filter else None
spec = importlib.util.spec_from_file_location('submission', source)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
sys.modules['submission'] = module
runner = root / 'hack/v000_codex_power_baseline_sc-16g-2/test_tilelang_nsa_fwd_v28.py'
spec = importlib.util.spec_from_file_location('nsa_official_runner', runner)
test = importlib.util.module_from_spec(spec)
spec.loader.exec_module(test)
cases = json.loads((root / 'official_case.json').read_text())
results.parent.mkdir(parents=True, exist_ok=True)
with results.open('w', newline='') as handle:
    writer = csv.writer(handle)
    writer.writerow(('case', 'B', 'SEQ_LEN', 'H', 'HQ', 'D', 'S', 'block_size', 'latency_ms', 'status'))
    for index, case in enumerate(cases, 1):
        if selected is not None and index not in selected:
            continue
        print(f'case {index}: {case}', flush=True)
        latency = test._run_one_case(case['B'], case['SEQ_LEN'], case['H'], case['HQ'], case['D'], case['S'], case['block_size'], case['is_causal'])
        writer.writerow((index, case['B'], case['SEQ_LEN'], case['H'], case['HQ'], case['D'], case['S'], case['block_size'], f'{latency:.6f}', 'PASS'))
        handle.flush()
        print(f'{index} {latency:.6f} PASS', flush=True)
