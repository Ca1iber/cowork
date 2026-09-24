from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
base_path=Path("/tmp/nsa_v023/submission_direct_k_case6.py")
base=base_path.read_text()
methods='''            def ldmatrix_b_global_prefetch(
                self, b_local_buf, K, batch_id, block_start, kv_head, ki, local_ki
            ):
                warp_cols = self.warp_cols
                thread_binding = T.KernelLaunchFrame.Current().get_thread_binding()

                @T.macro
                def warp_load(
                    b_local_buf, K, batch_id, block_start, kv_head, ki, local_ki, thread_binding
                ):
                    lane_id = thread_binding % 64
                    for j in T.serial(warp_cols):
                        for local_id in T.vectorized(8):
                            row, col = T.meta_var(_qk_reverse_load_layout(lane_id, local_id))
                            b_local_buf[local_ki * warp_cols * 8 + j * 8 + local_id] = K[
                                batch_id, block_start + j * 16 + row, kv_head, ki * 32 + col
                            ]

                return warp_load(
                    b_local_buf, K, batch_id, block_start, kv_head, ki, local_ki, thread_binding
                )

            def mma_prefetched(self, a_local_buf, b_local_buf, c_local_buf, ki, local_ki):
                warp_rows = self.warp_rows
                warp_cols = self.warp_cols
                a_local_stride = ki * warp_rows * 8
                b_local_stride = local_ki * warp_cols * 2

                @T.macro
                def warp_mma(a_local_buf, b_local_buf, c_local_buf):
                    for kp, i, j in T.grid(2, warp_rows, warp_cols):
                        T.tvm_mfma(
                            "16x16x16f16", "row", "row",
                            "float16x4", "float16x4", "float32x4",
                            b_local_buf.data,
                            b_local_stride + j * 2 + kp,
                            a_local_buf.data,
                            a_local_stride // 4 + i * 2 + kp,
                            c_local_buf.data,
                            i * warp_cols + j,
                            dtype="float32x4",
                        )
                return warp_mma(a_local_buf, b_local_buf, c_local_buf)

'''
mark="            def mma(self, a_local_buf, b_local_buf, c_local_buf, ki):"
assert base.count(mark)==1
src=base.replace(mark,methods+mark,1)
old="            use_direct_k = (selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16) or (selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16)"
assert src.count(old)==1
src=src.replace(old,old+"\n            use_prefetch_k = selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16",1)
old="                        k_local = T.alloc_local(qk_mma.warp_cols * 8, dtype)"
new='''                        if use_prefetch_k:
                            k_local = T.alloc_local(qk_mma.warp_cols * 8 * (dim // 32), dtype)
                        else:
                            k_local = T.alloc_local(qk_mma.warp_cols * 8, dtype)'''
assert src.count(old)==1
src=src.replace(old,new,1)
old='''                                for ki in T.serial(dim // 32):
                                    if use_direct_k:
                                        qk_mma.ldmatrix_b_global(
                                            k_local, K, batch_id, block_start, kv_head, ki
                                        )
                                    else:
                                        qk_mma.ldmatrix_b(k_local, k_shared, ki)
                                    qk_mma.mma(q_shared, k_local, scores, ki)'''
new='''                                if use_prefetch_k:
                                    for ki in T.serial(dim // 32):
                                        qk_mma.ldmatrix_b_global_prefetch(
                                            k_local, K, batch_id, block_start, kv_head, ki, ki
                                        )
                                    for ki in T.serial(dim // 32):
                                        qk_mma.mma_prefetched(q_shared, k_local, scores, ki, ki)
                                else:
                                    for ki in T.serial(dim // 32):
                                        if use_direct_k:
                                            qk_mma.ldmatrix_b_global(
                                                k_local, K, batch_id, block_start, kv_head, ki
                                            )
                                        else:
                                            qk_mma.ldmatrix_b(k_local, k_shared, ki)
                                        qk_mma.mma(q_shared, k_local, scores, ki)'''
assert src.count(old)==1
src=src.replace(old,new,1)
path=Path("/tmp/nsa_v023/submission_prefetch4.py")
path.write_text(src)
(root/"experiments/v023_case6_direct_k_sc-16g-2/prefetch4.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(base_path),tofile=str(path))))
print(hashlib.sha256(path.read_bytes()).hexdigest(),path)
