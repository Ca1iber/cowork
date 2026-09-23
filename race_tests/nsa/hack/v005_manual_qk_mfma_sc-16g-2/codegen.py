import importlib.util
import json
import pathlib
import sys


source = pathlib.Path(sys.argv[1])
out_dir = pathlib.Path(sys.argv[2])
out_dir.mkdir(parents=True, exist_ok=True)
spec = importlib.util.spec_from_file_location("nsa_codegen_candidate", source)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)

cases = json.loads(
    pathlib.Path("/root/tilelang-metax/race_tests/nsa/official_case.json").read_text()
)
for index, case in enumerate(cases, 1):
    kernel = module._make_native_sparse_attention.compile(
        batch=case["B"],
        seq_len=case["SEQ_LEN"],
        kv_heads=case["H"],
        query_heads=case["HQ"],
        dim=case["D"],
        selected_blocks=case["S"],
        block_size=case["block_size"],
        is_causal=bool(case["is_causal"]),
    )
    kernel.export_sources(
        kernel_path=str(out_dir / f"case_{index:02d}.device.cpp"),
        host_path=str(out_dir / f"case_{index:02d}.host.cpp"),
    )
    print(f"compiled {index}/14", flush=True)
