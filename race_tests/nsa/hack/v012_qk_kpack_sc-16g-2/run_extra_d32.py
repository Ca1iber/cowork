import importlib.util
import sys
from pathlib import Path
import tilelang

tilelang.set_log_level("ERROR")
root=Path('/root/tilelang-metax/race_tests/nsa')
path=root/'submission/v012_qk_kpack_sc-16g-2/submission.py'
spec=importlib.util.spec_from_file_location('submission',path)
module=importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
sys.modules['submission']=module
spec=importlib.util.spec_from_file_location('nsa_test',root/'test_tilelang_nsa_fwd.py')
test=importlib.util.module_from_spec(spec)
spec.loader.exec_module(test)
for s in (2,4,8):
    ms=test._run_one_case(1,64,1,16,32,s,16,True)
    print('D32 S',s,'latency_ms',ms,flush=True)
