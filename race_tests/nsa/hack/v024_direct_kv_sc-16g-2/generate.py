from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
parent=root/"submission/v023_case6_direct_k_sc-16g-2/submission.py"
base=parent.read_text()
proto=(root/"submission/v013_manual_pv_tune_sc-16g-2/submission.py").read_text()
start=proto.index("        class _ManualMacaPV:")
end=proto.index("        @tilelang.jit(",start)
pv=proto[start:end]
m0=pv.index("            def ldmatrix_b(")
m1=pv.index("            def mma(",m0)
global_load='''            def ldmatrix_b_global(
                self, b_local_buf, V, batch_id, block_start, kv_head, output_tile, ki
            ):
                warp_cols = self.warp_cols
                k_pack = self.k_pack
                dim = self.dim
                thread_binding = T.KernelLaunchFrame.Current().get_thread_binding()

                @T.macro
                def warp_load(
                    b_local_buf, V, batch_id, block_start, kv_head, output_tile, ki, thread_binding
                ):
                    lane_id = thread_binding % 64
                    for j in T.serial(warp_cols):
                        for local_id in T.vectorized(k_pack * 4):
                            row = local_id + (lane_id // 16) * (k_pack * 4)
                            col = lane_id % 16
                            b_local_buf[j * k_pack * 4 + local_id] = V[
                                batch_id, block_start + ki * k_pack * 16 + row,
                                kv_head, output_tile * dim + j * 16 + col
                            ]

                return warp_load(
                    b_local_buf, V, batch_id, block_start, kv_head, output_tile, ki,
                    thread_binding
                )

'''
pv=pv[:m0]+global_load+pv[m1:]
old="                self.block_tokens = block_tokens"
assert pv.count(old)==1
pv=pv.replace(old,old+"\n                self.dim = dim",1)
mark="        @tilelang.jit(\n            out_idx=[],"
assert base.count(mark)==1
src=base.replace(mark,pv+mark,1)
old="            use_prefetch_k = selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16"
assert src.count(old)==1
src=src.replace(old,old+"\n            use_direct_v = use_direct_k\n            if use_direct_v:\n                pv_mma = _ManualMacaPV(groups, block_tokens, dim)",1)
old="                    v_shared = T.alloc_shared([block_tokens, tile_dim], dtype)"
assert src.count(old)==1
src=src.replace(old,"                    if not use_direct_v:\n                        v_shared = T.alloc_shared([block_tokens, tile_dim], dtype)",1)
# k_local allocation lives in the manual-QK block; add PV local just before batch_id.
mark2="                    batch_id = batch_head // kv_heads"
assert src.count(mark2)==1
src=src.replace(mark2,'''                    if use_direct_v:
                        pv_b_local = T.alloc_local(pv_mma.warp_cols * pv_mma.k_pack * 4, dtype)
                        T.annotate_layout(
                            {
                                scores_half: pv_mma.make_mma_load_layout(scores_half),
                                output_acc: pv_mma.make_mma_store_layout(output_acc),
                            }
                        )

'''+mark2,1)
old='''                            T.copy(
                                V[
                                    batch_id,
                                    block_start : block_start + block_tokens,
                                    kv_head,
                                    output_tile * tile_dim : (output_tile + 1) * tile_dim,
                                ],
                                v_shared,
                            )
                            T.gemm(
                                scores_half,
                                v_shared,
                                output_acc,
                                policy=T.GemmWarpPolicy.FullRow,
                            )'''
new='''                            if use_direct_v:
                                for ki in T.serial(block_tokens // 16):
                                    pv_mma.ldmatrix_b_global(
                                        pv_b_local, V, batch_id, block_start, kv_head,
                                        output_tile, ki,
                                    )
                                    pv_mma.mma(scores_half, pv_b_local, output_acc, ki)
                            else:
                                T.copy(
                                    V[
                                        batch_id,
                                        block_start : block_start + block_tokens,
                                        kv_head,
                                        output_tile * tile_dim : (output_tile + 1) * tile_dim,
                                    ],
                                    v_shared,
                                )
                                T.gemm(
                                    scores_half,
                                    v_shared,
                                    output_acc,
                                    policy=T.GemmWarpPolicy.FullRow,
                                )'''
assert src.count(old)==1
src=src.replace(old,new,1)
path=Path("/tmp/nsa_v024/submission_direct_kv.py")
path.write_text(src)
(root/"experiments/v024_direct_kv_sc-16g-2/direct_kv.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(parent),tofile=str(path))))
print(hashlib.sha256(path.read_bytes()).hexdigest(),path)
