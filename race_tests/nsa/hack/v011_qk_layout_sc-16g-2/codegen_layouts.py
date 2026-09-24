import importlib.util
import json
import sys
from pathlib import Path

import torch

root = Path("/root/tilelang-metax/race_tests/nsa")
out = root / "rep/v011_qk_layout_sc-16g-2/codegen"
out.mkdir(parents=True, exist_ok=True)
cases = json.loads((root / "official_case.json").read_text())
sources = {
    "baseline": root / "submission/v009_nested_metaclass_sc-16g-2/submission.py",
    "tf": Path("/tmp/nsa_qk_layout_v011/submission_tf.py"),
    "ft": Path("/tmp/nsa_qk_layout_v011/submission_ft.py"),
    "ff": Path("/tmp/nsa_qk_layout_v011/submission_ff.py"),
    "linear": Path("/tmp/nsa_qk_layout_v011/submission_linear.py"),
    "half": Path("/tmp/nsa_qk_layout_v011/submission_half.py"),
    "quarter": Path("/tmp/nsa_qk_layout_v011/submission_quarter.py"),
    "xor4": Path("/tmp/nsa_qk_layout_v011/submission_xor4.py"),
    "xor8": Path("/tmp/nsa_qk_layout_v011/submission_xor8.py"),
    "xor16": Path("/tmp/nsa_qk_layout_v011/submission_xor16.py"),
}
for name in (sys.argv[1],):
    source = sources[name]
    spec = importlib.util.spec_from_file_location("submission_" + name, source)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    for index in (6, 12):
        case = cases[index - 1]
        batch, seq_len = case["B"], case["SEQ_LEN"]
        heads, query_heads, dim = case["H"], case["HQ"], case["D"]
        selected, block_size = case["S"], case["block_size"]
        causal = bool(case["is_causal"])
        q = torch.zeros((batch, seq_len, query_heads, dim), device="cuda", dtype=torch.float16)
        k = torch.zeros((batch, seq_len, heads, dim), device="cuda", dtype=torch.float16)
        v = torch.zeros((batch, seq_len, heads, dim), device="cuda", dtype=torch.float16)
        indices = torch.zeros((batch, seq_len, heads, selected), device="cuda", dtype=torch.int32)
        output = torch.empty_like(q)
        module.run_kernel(q, k, v, indices, output, batch, seq_len, heads, query_heads, dim, selected, block_size, int(causal))
        torch.cuda.synchronize()
        key = (batch, seq_len, heads, query_heads, dim, selected, block_size, causal)
        kernel = module._KERNEL_CACHE[key]
        kernel.export_sources(
            kernel_path=str(out / f"{name}_case_{index:02d}.device.cpp"),
            host_path=str(out / f"{name}_case_{index:02d}.host.cpp"),
        )
        print(f"generated {name} case {index}", flush=True)
