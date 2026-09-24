from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
base_path=root/"submission/v009_nested_metaclass_sc-16g-2/submission.py"
base=base_path.read_text()
exp=root/"experiments/v016_case6_shared_conflict_sc-16g-2"
tmp=Path("/tmp/nsa_v016")
old='''                    if use_manual_qk:
                        k_local = T.alloc_local(qk_mma.warp_cols * 8, dtype)
                        T.annotate_layout(
                            {
                                q_shared: qk_mma.make_mma_load_layout(q_shared),
                                k_shared: make_swizzled_layout(k_shared),
                                scores: qk_mma.make_mma_store_layout(scores),
                            }
                        )'''
assert base.count(old)==1
def xor(name,group):
    return f"T.Layout({name}.shape, lambda row, col: (row, (((col // {group}) ^ (row % (dim // {group}))) * {group} + col % {group})))"
variants=(
    ("k_xor16",xor("k_shared",16),None,None),
    ("v_swizzled",None,"make_swizzled_layout(v_shared)",None),
    ("v_xor4",None,xor("v_shared",4),None),
    ("v_xor16",None,xor("v_shared",16),None),
    ("v_xor32",None,xor("v_shared",32),None),
    ("out_linear",None,None,"tilelang.layout.make_linear_layout(output_shared)"),
    ("out_swizzled",None,None,"make_swizzled_layout(output_shared)"),
)
for name,kexpr,vexpr,oexpr in variants:
    entries=[
        "                                q_shared: qk_mma.make_mma_load_layout(q_shared),",
        f"                                k_shared: {kexpr or 'make_swizzled_layout(k_shared)'},",
        "                                scores: qk_mma.make_mma_store_layout(scores),",
    ]
    if vexpr: entries.append(f"                                v_shared: {vexpr},")
    if oexpr: entries.append(f"                                output_shared: {oexpr},")
    new='''                    if use_manual_qk:
                        k_local = T.alloc_local(qk_mma.warp_cols * 8, dtype)
                        if block_size == 32:
                            T.annotate_layout(
                                {
'''+"\n".join(entries)+'''
                                }
                            )
                        else:
                            T.annotate_layout(
                                {
                                    q_shared: qk_mma.make_mma_load_layout(q_shared),
                                    k_shared: make_swizzled_layout(k_shared),
                                    scores: qk_mma.make_mma_store_layout(scores),
                                }
                            )'''
    candidate=base.replace(old,new,1)
    path=tmp/f"submission_{name}.py"
    path.write_text(candidate)
    (exp/f"{name}.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),candidate.splitlines(keepends=True),fromfile=str(base_path),tofile=str(path))))
    print(name,hashlib.sha256(path.read_bytes()).hexdigest())
