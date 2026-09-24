import csv
import importlib.util
import json
import os
from pathlib import Path
import sys
import tilelang

tilelang.set_log_level("ERROR")
root = Path("/root/tilelang-metax/race_tests/nsa")
source = Path(os.environ["NSA_VARIANT_SOURCE"])
spec = importlib.util.spec_from_file_location("submission", source)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
sys.modules["submission"] = module
spec = importlib.util.spec_from_file_location("nsa_test", root / "test_tilelang_nsa_fwd.py")
test = importlib.util.module_from_spec(spec)
spec.loader.exec_module(test)
cases = json.loads((root / "official_case.json").read_text())
rows = []
for idx in (6, 12):
    c = cases[idx - 1]
    print(f"case {idx}: {c}", flush=True)
    latency = test._run_one_case(c["B"], c["SEQ_LEN"], c["H"], c["HQ"], c["D"], c["S"], c["block_size"], c["is_causal"])
    rows.append({"idx": idx, "latency_ms": f"{latency:.6f}", "status": "PASS"})
with Path(os.environ["NSA_RESULTS_PATH"]).open("w", newline="") as f:
    writer = csv.DictWriter(f, fieldnames=("idx", "latency_ms", "status"))
    writer.writeheader()
    writer.writerows(rows)
