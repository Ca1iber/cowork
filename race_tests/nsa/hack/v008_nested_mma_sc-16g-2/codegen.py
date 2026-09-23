import importlib.util
import json
import pathlib

import torch


root = pathlib.Path("/root/tilelang-metax/race_tests/nsa")
source = root / "submission/v008_nested_mma_sc-16g-2/submission.py"
out_dir = pathlib.Path("/tmp/nsa_v008_codegen")
out_dir.mkdir(parents=True, exist_ok=True)
spec = importlib.util.spec_from_file_location("v008_submission", source)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
cases = json.loads((root / "official_case.json").read_text())

for index, case in enumerate(cases, 1):
    batch = case["B"]
    seq_len = case["SEQ_LEN"]
    heads = case["H"]
    query_heads = case["HQ"]
    dim = case["D"]
    selected = case["S"]
    block_size = case["block_size"]
    causal = bool(case["is_causal"])
    q = torch.zeros((batch, seq_len, query_heads, dim), dtype=torch.float16, device="cuda")
    k = torch.zeros((batch, seq_len, heads, dim), dtype=torch.float16, device="cuda")
    v = torch.zeros((batch, seq_len, heads, dim), dtype=torch.float16, device="cuda")
    indices = torch.zeros((batch, seq_len, heads, selected), dtype=torch.int32, device="cuda")
    output = torch.empty_like(q)
    module.run_kernel(q, k, v, indices, output, batch, seq_len, heads, query_heads, dim, selected, block_size, int(causal))
    torch.cuda.synchronize()
    key = (batch, seq_len, heads, query_heads, dim, selected, block_size, causal)
    module._KERNEL_CACHE[key].export_sources(
        kernel_path=str(out_dir / f"case_{index:02d}.device.cpp"),
        host_path=str(out_dir / f"case_{index:02d}.host.cpp"),
    )
    print(f"compiled {index}/{len(cases)}", flush=True)
