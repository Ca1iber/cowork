from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
base=root/"submission/v014_selective_pv_sc-16g-2/submission.py"
src=base.read_text()
old="            use_manual_pv = use_manual_qk"
new="            use_manual_pv = block_size == 32 or selected_blocks >= 8"
assert src.count(old)==1
src=src.replace(old,new,1)
start=src.index("                    if use_manual_qk:\n                        k_local =")
end=src.index("\n                    batch_id =",start)
layout="""                    if use_manual_qk:
                        k_local = T.alloc_local(qk_mma.warp_cols * 8, dtype)
                        if use_manual_pv:
                            T.annotate_layout(
                                {
                                    q_shared: qk_mma.make_mma_load_layout(q_shared),
                                    k_shared: make_swizzled_layout(k_shared),
                                    scores: qk_mma.make_mma_store_layout(scores),
                                    scores_half: pv_mma.make_mma_load_layout(scores_half),
                                    v_shared: tilelang.layout.make_linear_layout(v_shared),
                                    output_acc: pv_mma.make_mma_store_layout(output_acc),
                                }
                            )
                        else:
                            T.annotate_layout(
                                {
                                    q_shared: qk_mma.make_mma_load_layout(q_shared),
                                    k_shared: make_swizzled_layout(k_shared),
                                    scores: qk_mma.make_mma_store_layout(scores),
                                }
                            )
"""
src=src[:start]+layout+src[end:]
path=root/"submission/v015_targeted_pv_sc-16g-2/submission.py"
path.write_text(src)
(root/"experiments/v015_targeted_pv_sc-16g-2/selected.patch").write_text("".join(difflib.unified_diff(base.read_text().splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(base),tofile=str(path))))
print(hashlib.sha256(path.read_bytes()).hexdigest(),path)
