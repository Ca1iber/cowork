from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
parent=root/"submission/v022_case6_case12_combined_sc-16g-2/submission.py"
src=parent.read_text()
old="            use_direct_k = selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16"
new="            use_direct_k = (selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16) or (selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16)"
assert src.count(old)==1
src=src.replace(old,new,1)
old='''                        if use_direct_k:
                            T.annotate_layout(
                                {
                                    q_shared: qk_mma.make_mma_load_layout(q_shared),
                                    scores: qk_mma.make_mma_store_layout(scores),
                                }
                            )'''
new='''                        if use_direct_k:
                            if block_size == 32:
                                T.annotate_layout(
                                    {
                                        q_shared: qk_mma.make_mma_load_layout(q_shared),
                                        scores: qk_mma.make_mma_store_layout(scores),
                                        output_shared: make_swizzled_layout(output_shared),
                                    }
                                )
                            else:
                                T.annotate_layout(
                                    {
                                        q_shared: qk_mma.make_mma_load_layout(q_shared),
                                        scores: qk_mma.make_mma_store_layout(scores),
                                    }
                                )'''
assert src.count(old)==1
src=src.replace(old,new,1)
path=Path("/tmp/nsa_v023/submission_direct_k_case6.py")
path.write_text(src)
(root/"experiments/v023_case6_direct_k_sc-16g-2/direct_k_case6.patch").write_text("".join(difflib.unified_diff(parent.read_text().splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(parent),tofile=str(path))))
print(hashlib.sha256(path.read_bytes()).hexdigest(),path)
