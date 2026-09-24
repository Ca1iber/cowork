from pathlib import Path
import difflib
import hashlib

root=Path("/root/tilelang-metax/race_tests/nsa")
base_path=root/"submission/v009_nested_metaclass_sc-16g-2/submission.py"
base=base_path.read_text()
exp=root/"experiments/v016_case6_shared_conflict_sc-16g-2"
tmp=Path("/tmp/nsa_v016")
tmp.mkdir(exist_ok=True)
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
xor8='T.Layout(k_shared.shape, lambda row, col: (row, (((col // 8) ^ (row % (dim // 8))) * 8 + col % 8)))'
vxor8='T.Layout(v_shared.shape, lambda row, col: (row, (((col // 8) ^ (row % (dim // 8))) * 8 + col % 8)))'
variants=(
    ("k_xor8",xor8,None),
    ("v_linear","make_swizzled_layout(k_shared)","tilelang.layout.make_linear_layout(v_shared)"),
    ("v_half","make_swizzled_layout(k_shared)","tilelang.layout.make_half_bank_swizzled_layout(v_shared)"),
    ("v_xor8","make_swizzled_layout(k_shared)",vxor8),
    ("k_xor8_v_xor8",xor8,vxor8),
)
for name,kexpr,vexpr in variants:
    entries=[
        "                                q_shared: qk_mma.make_mma_load_layout(q_shared),",
        f"                                k_shared: {kexpr},",
        "                                scores: qk_mma.make_mma_store_layout(scores),",
    ]
    if vexpr: entries.append(f"                                v_shared: {vexpr},")
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
    print(name,hashlib.sha256(path.read_bytes()).hexdigest(),path)
