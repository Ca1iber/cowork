import importlib.util
from pathlib import Path

import tilelang


tilelang.set_log_level('ERROR')
root = Path('/root/tilelang-metax/race_tests/nsa')
id = 'v009_codex_power_s8_group2_two_waves_sc-16g-2'
source = root / 'experiments' / id / 'candidate.py'
out = root / 'rep' / id / 'codegen'
out.mkdir(parents=True, exist_ok=True)
spec = importlib.util.spec_from_file_location('nsa_candidate', source)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
kernel = module._make_s8_group2(4, 1024, 1, 16, 64, 8, 16, True)
try:
    kernel(None, None, None, None, None)
except RuntimeError as error:
    if 'non-NULL pointer' not in str(error):
        raise
kernel.export_sources(kernel_path=str(out / 'case12.device.cpp'), host_path=str(out / 'case12.host.cpp'))
print('exported case12')
