import importlib.util
import json
import pathlib
import sys

import torch
import tilelang

tilelang.set_log_level("ERROR")
root = pathlib.Path("/root/tilelang-metax/race_tests/nsa")
source = root / "submission/v009_nested_metaclass_sc-16g-2/submission.py"
spec = importlib.util.spec_from_file_location("submission", source)
submission = importlib.util.module_from_spec(spec)
spec.loader.exec_module(submission)
sys.modules["submission"] = submission

test_spec = importlib.util.spec_from_file_location("nsa_focus_test", root / "test_tilelang_nsa_fwd.py")
test_module = importlib.util.module_from_spec(test_spec)
test_spec.loader.exec_module(test_module)
case_index = int(sys.argv[1])
case = json.loads((root / "official_case.json").read_text())[case_index - 1]

for repeat in range(1, 6):
    with torch.no_grad():
        latency = test_module._run_one_case(**case)
    if latency <= 0:
        raise RuntimeError(f"case {case_index}, repeat {repeat} did not produce a measured latency")
    print(f"FOCUS_RESULT,{case_index},{repeat},{latency:.6f},PASS", flush=True)
