from pathlib import Path
import difflib,hashlib,runpy
ns=runpy.run_path("/root/tilelang-metax/race_tests/nsa/hack/v020_case12_grouped_blocks_sc-16g-2/generate.py")
root=ns["root"]
base=ns["base"]
base_path=ns["base_path"]
factory=ns["factory"]
marker=ns["marker"]
old=ns["old"]
assert factory.count("threads=64")==1
for n,threads in ((2,128),(4,128),(8,128),(4,256),(8,256)):
    tuned=factory.replace("threads=64",f"threads={threads}",1)
    dispatch=f'''        if S == 8 and block_size == 16 and D == 64 and HQ // H == 16 and bool(is_causal):
            kernel = _make_grouped_attention(
                batch=B, seq_len=seq_len, kv_heads=H, query_heads=HQ,
                dim=D, selected_blocks=S, block_size=block_size, gather_blocks={n},
            )
        else:
'''+ "\n".join("    "+line for line in old.splitlines())
    src=base.replace(marker,tuned+marker,1).replace(old,dispatch,1)
    name=f"group{n}_t{threads}"
    path=Path("/tmp/nsa_v020")/f"submission_{name}.py"
    path.write_text(src)
    (root/"experiments/v020_case12_grouped_blocks_sc-16g-2"/f"{name}.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(base_path),tofile=str(path))))
    print(name,hashlib.sha256(path.read_bytes()).hexdigest())
