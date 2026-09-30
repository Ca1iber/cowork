import importlib.util
import json
from pathlib import Path

import tilelang


tilelang.set_log_level('ERROR')
root = Path('/root/tilelang-metax/race_tests/nsa')
source = root / 'experiments/v006_codex_power_s1_direct_output_sc-16g-2/candidate_direct_copy.py'
out = root / 'rep/v006_codex_power_s1_direct_output_sc-16g-2/codegen'
out.mkdir(parents=True, exist_ok=True)
spec = importlib.util.spec_from_file_location('nsa_baseline', source)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
cases = json.loads((root / 'official_case.json').read_text())
for index in (6,):
    case = cases[index - 1]
    kernel = module._make_native_sparse_attention(
        batch=case['B'], seq_len=case['SEQ_LEN'], kv_heads=case['H'],
        query_heads=case['HQ'], dim=case['D'], selected_blocks=case['S'],
        block_size=case['block_size'], is_causal=case['is_causal'],
    )
    try:
        kernel(None, None, None, None, None)
    except RuntimeError as error:
        if 'non-NULL pointer' not in str(error):
            raise
    kernel.export_sources(
        kernel_path=str(out / f'case{index:02d}.device.cpp'),
        host_path=str(out / f'case{index:02d}.host.cpp'),
    )
    print('exported', index, flush=True)
