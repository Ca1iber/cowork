import csv
import importlib.util
import json
import os
from pathlib import Path
import sys

import tilelang
tilelang.set_log_level("ERROR")
root=Path("/root/tilelang-metax/race_tests/nsa")
source=Path(os.environ["NSA_VARIANT_SOURCE"])
label=os.environ["NSA_VARIANT_LABEL"]
spec=importlib.util.spec_from_file_location("submission",source)
module=importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
sys.modules["submission"]=module
spec=importlib.util.spec_from_file_location("nsa_test",root/"test_tilelang_nsa_fwd.py")
test=importlib.util.module_from_spec(spec)
spec.loader.exec_module(test)
c=json.loads((root/"official_case.json").read_text())[11]
latency=test._run_one_case(c["B"],c["SEQ_LEN"],c["H"],c["HQ"],c["D"],c["S"],c["block_size"],c["is_causal"])
key=(c["B"],c["SEQ_LEN"],c["H"],c["HQ"],c["D"],c["S"],c["block_size"],bool(c["is_causal"]))
out=Path("/tmp/nsa_v021/codegen")/label
out.mkdir(parents=True,exist_ok=True)
module._KERNEL_CACHE[key].export_sources(
    kernel_path=str(out/"case12.device.cpp"),host_path=str(out/"case12.host.cpp"))
with Path(os.environ["NSA_RESULTS_PATH"]).open("w",newline="") as f:
    w=csv.writer(f)
    w.writerow(("variant","latency_ms","status"))
    w.writerow((label,f"{latency:.6f}","PASS"))
print(label,latency,flush=True)
