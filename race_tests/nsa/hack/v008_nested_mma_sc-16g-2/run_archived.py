import importlib.util
import runpy
import sys

import tilelang


tilelang.set_log_level("ERROR")
source = "/root/tilelang-metax/race_tests/nsa/submission/v008_nested_mma_sc-16g-2/submission.py"
spec = importlib.util.spec_from_file_location("submission", source)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
sys.modules["submission"] = module
runpy.run_path(
    "/root/tilelang-metax/race_tests/nsa/test_tilelang_nsa_fwd.py",
    run_name="__main__",
)
