import importlib.util
import json
import os
import sys
from pathlib import Path

import torch
import tilelang

tilelang.set_log_level("ERROR")
root = Path("/root/tilelang-metax/race_tests/nsa")
source = root / "submission/v009_nested_metaclass_sc-16g-2/submission.py"
spec = importlib.util.spec_from_file_location("submission_v009", source)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
case_index = int(sys.argv[1])
case = json.loads((root / "official_case.json").read_text())[case_index - 1]
B, seq_len, H, HQ, D, S, block_size = (
    case[x] for x in ("B", "SEQ_LEN", "H", "HQ", "D", "S", "block_size")
)
torch.random.manual_seed(0)
q = torch.randn((B, seq_len, HQ, D), dtype=torch.float16, device="cuda")
k = torch.randn((B, seq_len, H, D), dtype=torch.float16, device="cuda")
v = torch.randn((B, seq_len, H, D), dtype=torch.float16, device="cuda")
indices = torch.full((B, seq_len, H, S), seq_len, dtype=torch.long, device="cuda")
for b in range(B):
    for t in range(seq_len):
        for h in range(H):
            selected = torch.randperm(max(1, t // block_size))[:S]
            indices[b, t, h, : len(selected)] = selected
indices = indices.sort(-1)[0].to(torch.int32).contiguous()
output = torch.empty_like(q)
args = (q, k, v, indices, output, B, seq_len, H, HQ, D, S, block_size, int(case["is_causal"]))
module.run_kernel(*args)
for _ in range(10):
    module.run_kernel(*args)
torch.cuda.synchronize()
mode = os.environ.get("NSA_PROFILE_MODE", "mctx")
if mode == "sustain":
    import time
    Path(os.environ["NSA_READY_FILE"]).write_text("ready")
    until = time.monotonic() + float(os.environ.get("NSA_SUSTAIN_SECONDS", "8"))
    calls = 0
    while time.monotonic() < until:
        for _ in range(100):
            module.run_kernel(*args)
        torch.cuda.synchronize()
        calls += 100
    print(f"SUSTAIN_DONE case={case_index} calls={calls}", flush=True)
elif mode == "torchprof":
    from torch.profiler import ProfilerActivity, profile
    with profile(activities=[ProfilerActivity.CPU, ProfilerActivity.CUDA], record_shapes=False) as prof:
        for _ in range(30):
            module.run_kernel(*args)
        torch.cuda.synchronize()
    path = os.environ["NSA_TRACE_PATH"]
    prof.export_chrome_trace(path)
    print(f"TORCHPROF_DONE case={case_index} calls=30 trace={path}", flush=True)
elif mode == "measure":
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(50):
        module.run_kernel(*args)
    end.record()
    end.synchronize()
    print(f"case={case_index} calls=50 avg_ms={start.elapsed_time(end)/50:.6f}", flush=True)
else:
    torch.cuda.profiler.start()
    for _ in range(20):
        module.run_kernel(*args)
    torch.cuda.synchronize()
    torch.cuda.profiler.stop()
    print(f"PROFILE_DONE case={case_index} calls=20", flush=True)
