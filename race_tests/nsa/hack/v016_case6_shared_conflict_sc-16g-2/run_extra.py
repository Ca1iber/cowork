import importlib.util,sys
from pathlib import Path
import tilelang
tilelang.set_log_level("ERROR")
root=Path("/root/tilelang-metax/race_tests/nsa")
source=root/"submission/v016_case6_shared_conflict_sc-16g-2/submission.py"
spec=importlib.util.spec_from_file_location("submission",source)
mod=importlib.util.module_from_spec(spec)
spec.loader.exec_module(mod)
sys.modules["submission"]=mod
spec=importlib.util.spec_from_file_location("nsa_test",root/"test_tilelang_nsa_fwd.py")
test=importlib.util.module_from_spec(spec)
spec.loader.exec_module(test)
for shape in (
    (1,64,1,16,32,1,32,True),
    (1,256,1,32,64,1,32,True),
    (1,256,1,32,128,1,32,True),
):
    ms=test._run_one_case(*shape)
    print("PASS",shape,"latency_ms",ms,flush=True)
