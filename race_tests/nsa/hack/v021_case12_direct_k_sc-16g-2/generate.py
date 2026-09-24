from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
base_path=root/"submission/v009_nested_metaclass_sc-16g-2/submission.py"
base=base_path.read_text()
method='''            def ldmatrix_b_global(self, b_local_buf, K, batch_id, block_start, kv_head, ki):
                warp_cols = self.warp_cols
                thread_binding = T.KernelLaunchFrame.Current().get_thread_binding()

                @T.macro
                def warp_ldmatrix_b_global(
                    b_local_buf, K, batch_id, block_start, kv_head, ki, thread_binding
                ):
                    lane_id = thread_binding % 64
                    for j in T.serial(warp_cols):
                        for local_id in T.vectorized(8):
                            row, col = T.meta_var(_qk_reverse_load_layout(lane_id, local_id))
                            b_local_buf[j * 8 + local_id] = K[
                                batch_id, block_start + j * 16 + row, kv_head, ki * 32 + col
                            ]

                return warp_ldmatrix_b_global(
                    b_local_buf, K, batch_id, block_start, kv_head, ki, thread_binding
                )

'''
mark='''            def mma(self, a_local_buf, b_local_buf, c_local_buf, ki):'''
assert base.count(mark)==1
src=base.replace(mark,method+mark,1)
old='''            use_manual_qk = block_size == 32 or selected_blocks > 1
            if use_manual_qk:'''
new='''            use_manual_qk = block_size == 32 or selected_blocks > 1
            use_direct_k = selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16
            if use_manual_qk:'''
assert src.count(old)==1
src=src.replace(old,new,1)
old='''                    k_shared = T.alloc_shared([block_tokens, tile_dim], dtype)'''
new='''                    if not use_direct_k:
                        k_shared = T.alloc_shared([block_tokens, tile_dim], dtype)'''
assert src.count(old)==1
src=src.replace(old,new,1)
old='''                        T.annotate_layout(
                            {
                                q_shared: qk_mma.make_mma_load_layout(q_shared),
                                k_shared: make_swizzled_layout(k_shared),
                                scores: qk_mma.make_mma_store_layout(scores),
                            }
                        )'''
new='''                        if use_direct_k:
                            T.annotate_layout(
                                {
                                    q_shared: qk_mma.make_mma_load_layout(q_shared),
                                    scores: qk_mma.make_mma_store_layout(scores),
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
old='''                            T.copy(
                                K[
                                    batch_id,
                                    block_start : block_start + block_tokens,
                                    kv_head,
                                    :,
                                ],
                                k_shared,
                            )'''
new='''                            if not use_direct_k:
                                T.copy(
                                    K[
                                        batch_id,
                                        block_start : block_start + block_tokens,
                                        kv_head,
                                        :,
                                    ],
                                    k_shared,
                                )'''
assert src.count(old)==1
src=src.replace(old,new,1)
old='''                                    qk_mma.ldmatrix_b(k_local, k_shared, ki)
                                    qk_mma.mma(q_shared, k_local, scores, ki)'''
new='''                                    if use_direct_k:
                                        qk_mma.ldmatrix_b_global(
                                            k_local, K, batch_id, block_start, kv_head, ki
                                        )
                                    else:
                                        qk_mma.ldmatrix_b(k_local, k_shared, ki)
                                    qk_mma.mma(q_shared, k_local, scores, ki)'''
assert src.count(old)==1
src=src.replace(old,new,1)
path=Path("/tmp/nsa_v021/submission_direct_k.py")
path.write_text(src)
(root/"experiments/v021_case12_direct_k_sc-16g-2/direct_k.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(base_path),tofile=str(path))))
print(hashlib.sha256(path.read_bytes()).hexdigest(),path)
