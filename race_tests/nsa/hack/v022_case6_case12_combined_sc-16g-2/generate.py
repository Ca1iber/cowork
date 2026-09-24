from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
parent=root/"submission/v021_case12_direct_k_sc-16g-2/submission.py"
src=parent.read_text()
old='''                        else:
                            T.annotate_layout(
                                {
                                    q_shared: qk_mma.make_mma_load_layout(q_shared),
                                    k_shared: make_swizzled_layout(k_shared),
                                    scores: qk_mma.make_mma_store_layout(scores),
                                }
                            )'''
new='''                        else:
                            if block_size == 32:
                                T.annotate_layout(
                                    {
                                        q_shared: qk_mma.make_mma_load_layout(q_shared),
                                        k_shared: make_swizzled_layout(k_shared),
                                        scores: qk_mma.make_mma_store_layout(scores),
                                        output_shared: make_swizzled_layout(output_shared),
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
assert src.count(old)==1
src=src.replace(old,new,1)
path=root/"submission/v022_case6_case12_combined_sc-16g-2/submission.py"
path.write_text(src)
(root/"experiments/v022_case6_case12_combined_sc-16g-2/selected.patch").write_text("".join(difflib.unified_diff(parent.read_text().splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(parent),tofile=str(path))))
print(hashlib.sha256(path.read_bytes()).hexdigest(),path)
