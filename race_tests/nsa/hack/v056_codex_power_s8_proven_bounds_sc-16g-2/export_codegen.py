import importlib.util
from pathlib import Path
import tilelang
tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax/race_tests/nsa');id='v056_codex_power_s8_proven_bounds_sc-16g-2';out=root/'rep'/id/'codegen';out.mkdir(exist_ok=True)
spec=importlib.util.spec_from_file_location('candidate','/tmp/nsa_power_v056_proven_bounds.py');m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
k=m._make_power_s8_proven_bounds(4,1024,1,16,64,8,16,True)
try:k(None,None,None,None,None)
except RuntimeError as e:
 if 'non-NULL pointer' not in str(e):raise
k.export_sources(kernel_path=str(out/'case12.device.cpp'),host_path=str(out/'case12.host.cpp'));print('EXPORTED case12')
