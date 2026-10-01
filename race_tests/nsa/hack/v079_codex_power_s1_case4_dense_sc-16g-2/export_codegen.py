import importlib.util
from pathlib import Path
import tilelang
tilelang.set_log_level('ERROR')
root=Path('/root/tilelang-metax/race_tests/nsa');id='v079_codex_power_s1_case4_dense_sc-16g-2';out=root/'rep'/id/'codegen';out.mkdir(exist_ok=True)
spec=importlib.util.spec_from_file_location('candidate','/tmp/nsa_power_v079_proven_bounds.py');m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m)
k=m._make_power_s1_case4_dense(2,512,1,16,64,1,16,True)
try:k(None,None,None,None,None)
except RuntimeError as e:
 if 'non-NULL pointer' not in str(e):raise
k.export_sources(kernel_path=str(out/'case4.device.cpp'),host_path=str(out/'case4.host.cpp'));print('EXPORTED case4')
