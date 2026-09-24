from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
base_path=Path("/tmp/nsa_v023/submission_direct_k_case6.py")
base=base_path.read_text()
src=Path("/tmp/nsa_v023/submission_prefetch4.py").read_text()
old="k_local = T.alloc_local(qk_mma.warp_cols * 8 * (dim // 32), dtype)"
assert src.count(old)==1
src=src.replace(old,"k_local = T.alloc_local(qk_mma.warp_cols * 8 * 2, dtype)",1)
old='''                                    for ki in T.serial(dim // 32):
                                        qk_mma.ldmatrix_b_global_prefetch(
                                            k_local, K, batch_id, block_start, kv_head, ki, ki
                                        )
                                    for ki in T.serial(dim // 32):
                                        qk_mma.mma_prefetched(q_shared, k_local, scores, ki, ki)'''
new='''                                    for k_group in T.serial(dim // 64):
                                        for local_ki in T.serial(2):
                                            ki = k_group * 2 + local_ki
                                            qk_mma.ldmatrix_b_global_prefetch(
                                                k_local, K, batch_id, block_start, kv_head, ki, local_ki
                                            )
                                        for local_ki in T.serial(2):
                                            ki = k_group * 2 + local_ki
                                            qk_mma.mma_prefetched(
                                                q_shared, k_local, scores, ki, local_ki
                                            )'''
assert src.count(old)==1
src=src.replace(old,new,1)
path=Path("/tmp/nsa_v023/submission_prefetch2.py")
path.write_text(src)
(root/"experiments/v023_case6_direct_k_sc-16g-2/prefetch2.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(base_path),tofile=str(path))))
print(hashlib.sha256(path.read_bytes()).hexdigest(),path)
