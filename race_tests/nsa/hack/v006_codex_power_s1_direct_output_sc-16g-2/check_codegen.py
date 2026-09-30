import csv
import hashlib
import importlib.util
import json
from pathlib import Path

import tilelang


tilelang.set_log_level('ERROR')
root = Path('/root/tilelang-metax/race_tests/nsa')
id = 'v006_codex_power_s1_direct_output_sc-16g-2'
rep = root / 'rep' / id
out = rep / 'codegen_all14'
out.mkdir(parents=True, exist_ok=True)
sources = {'v000': root / 'submission.py', 'v006': root / 'experiments' / id / 'candidate.py'}
modules = {}
for label, source in sources.items():
    spec = importlib.util.spec_from_file_location('nsa_' + label, source)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    modules[label] = module
cases = json.loads((root / 'official_case.json').read_text())
with (rep / 'all14_codegen_sc-16g-2.csv').open('w', newline='') as handle:
    writer = csv.writer(handle)
    writer.writerow(('case', 'v000_device_sha256', 'v006_device_sha256', 'device_identical', 'host_identical'))
    for index, case in enumerate(cases, 1):
        for label, module in modules.items():
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
                kernel_path=str(out / f'case{index:02d}_{label}.device.cpp'),
                host_path=str(out / f'case{index:02d}_{label}.host.cpp'),
            )
        before = (out / f'case{index:02d}_v000.device.cpp').read_bytes()
        after = (out / f'case{index:02d}_v006.device.cpp').read_bytes()
        host_before = (out / f'case{index:02d}_v000.host.cpp').read_bytes()
        host_after = (out / f'case{index:02d}_v006.host.cpp').read_bytes()
        same_device = before == after
        same_host = host_before == host_after
        writer.writerow((index, hashlib.sha256(before).hexdigest(), hashlib.sha256(after).hexdigest(), same_device, same_host))
        handle.flush()
        print(index, same_device, same_host, flush=True)
        if same_device != (index != 6) or not same_host:
            raise RuntimeError(f'unexpected codegen change in case {index}')
