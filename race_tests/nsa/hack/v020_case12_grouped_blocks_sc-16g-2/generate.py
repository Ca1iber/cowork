from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
base_path=root/"submission/v009_nested_metaclass_sc-16g-2/submission.py"
base=base_path.read_text()
marker="        @tilelang.jit(\n            out_idx=[],"
assert base.count(marker)==1
factory='''        @tilelang.jit(
            out_idx=[],
            pass_configs={
                tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True,
                tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,
            },
        )
        def _make_grouped_attention(
            batch, seq_len, kv_heads, query_heads, dim,
            selected_blocks, block_size, gather_blocks,
        ):
            groups = query_heads // kv_heads
            tile_tokens = gather_blocks * block_size
            scale = (1.0 / dim) ** 0.5 * 1.44269504
            q_shape = [batch, seq_len, query_heads, dim]
            kv_shape = [batch, seq_len, kv_heads, dim]
            index_shape = [batch, seq_len, kv_heads, selected_blocks]
            dtype = T.float16
            accum_dtype = T.float32

            @T.prim_func
            def grouped_attention(
                Q: T.Tensor(q_shape, dtype),
                K: T.Tensor(kv_shape, dtype),
                V: T.Tensor(kv_shape, dtype),
                BlockIndices: T.Tensor(index_shape, T.int32),
                Output: T.Tensor(q_shape, dtype),
            ):
                with T.Kernel(seq_len, batch * kv_heads, threads=64) as (token, batch_head):
                    q_shared = T.alloc_shared([groups, dim], dtype)
                    k_shared = T.alloc_shared([tile_tokens, dim], dtype)
                    v_shared = T.alloc_shared([tile_tokens, dim], dtype)
                    output_shared = T.alloc_shared([groups, dim], dtype)
                    scores = T.alloc_fragment([groups, tile_tokens], accum_dtype)
                    scores_half = T.alloc_fragment([groups, tile_tokens], dtype)
                    output_acc = T.alloc_fragment([groups, dim], accum_dtype)
                    block_max = T.alloc_fragment([groups], accum_dtype)
                    previous_max = T.alloc_fragment([groups], accum_dtype)
                    rescale = T.alloc_fragment([groups], accum_dtype)
                    block_sum = T.alloc_fragment([groups], accum_dtype)
                    denominator = T.alloc_fragment([groups], accum_dtype)
                    batch_id = batch_head // kv_heads
                    kv_head = batch_head % kv_heads
                    T.copy(Q[batch_id, token, kv_head * groups:(kv_head + 1) * groups, :], q_shared)
                    T.fill(output_acc, 0)
                    T.fill(denominator, 0)
                    T.fill(block_max, -T.infinity(accum_dtype))
                    for tile in T.serial(selected_blocks // gather_blocks):
                        for slot in T.serial(gather_blocks):
                            selected = tile * gather_blocks + slot
                            block_start = BlockIndices[batch_id, token, kv_head, selected] * block_size
                            if block_start >= 0 and block_start <= token:
                                T.copy(
                                    K[batch_id, block_start:block_start + block_size, kv_head, :],
                                    k_shared[slot * block_size:(slot + 1) * block_size, :],
                                )
                            else:
                                for row, feature in T.Parallel(block_size, dim):
                                    k_shared[slot * block_size + row, feature] = 0

                        for head, offset in T.Parallel(groups, tile_tokens):
                            selected = tile * gather_blocks + offset // block_size
                            block_start = BlockIndices[batch_id, token, kv_head, selected] * block_size
                            scores[head, offset] = T.if_then_else(
                                block_start >= 0 and token >= block_start + offset % block_size,
                                0,
                                -T.infinity(accum_dtype),
                            )
                        T.gemm(
                            q_shared, k_shared, scores,
                            transpose_B=True, policy=T.GemmWarpPolicy.FullRow,
                        )
                        T.copy(block_max, previous_max)
                        T.fill(block_max, -T.infinity(accum_dtype))
                        T.reduce_max(scores, block_max, dim=1, clear=True)
                        for head in T.Parallel(groups):
                            rescale[head] = T.if_then_else(
                                block_max[head] > -T.infinity(accum_dtype),
                                T.exp2(previous_max[head] * scale - block_max[head] * scale),
                                1.0,
                            )
                        for head, offset in T.Parallel(groups, tile_tokens):
                            scores[head, offset] = T.if_then_else(
                                block_max[head] > -T.infinity(accum_dtype),
                                T.exp2(scores[head, offset] * scale - block_max[head] * scale),
                                0.0,
                            )
                        T.reduce_sum(scores, block_sum, dim=1)
                        for head in T.Parallel(groups):
                            denominator[head] = denominator[head] * rescale[head] + block_sum[head]
                        T.copy(scores, scores_half)
                        for head, feature in T.Parallel(groups, dim):
                            output_acc[head, feature] *= rescale[head]

                        for slot in T.serial(gather_blocks):
                            selected = tile * gather_blocks + slot
                            block_start = BlockIndices[batch_id, token, kv_head, selected] * block_size
                            if block_start >= 0 and block_start <= token:
                                T.copy(
                                    V[batch_id, block_start:block_start + block_size, kv_head, :],
                                    v_shared[slot * block_size:(slot + 1) * block_size, :],
                                )
                            else:
                                for row, feature in T.Parallel(block_size, dim):
                                    v_shared[slot * block_size + row, feature] = 0
                        T.gemm(
                            scores_half, v_shared, output_acc,
                            policy=T.GemmWarpPolicy.FullRow,
                        )

                    for head, feature in T.Parallel(groups, dim):
                        output_acc[head, feature] /= denominator[head]
                    T.copy(output_acc, output_shared)
                    T.copy(
                        output_shared,
                        Output[batch_id, token, kv_head * groups:(kv_head + 1) * groups, :],
                    )
            return grouped_attention

'''
old='''        kernel = _make_native_sparse_attention(
            batch=B,
            seq_len=seq_len,
            kv_heads=H,
            query_heads=HQ,
            dim=D,
            selected_blocks=S,
            block_size=block_size,
            is_causal=bool(is_causal),
        )'''
assert base.count(old)==1
for n in (2,4,8):
    dispatch=f'''        if S == 8 and block_size == 16 and D == 64 and HQ // H == 16 and bool(is_causal):
            kernel = _make_grouped_attention(
                batch=B, seq_len=seq_len, kv_heads=H, query_heads=HQ,
                dim=D, selected_blocks=S, block_size=block_size, gather_blocks={n},
            )
        else:
'''+ "\n".join("    "+line for line in old.splitlines())
    candidate=base.replace(marker,factory+marker,1).replace(old,dispatch,1)
    path=Path("/tmp/nsa_v020")/f"submission_group{n}.py"
    path.write_text(candidate)
    (root/"experiments/v020_case12_grouped_blocks_sc-16g-2"/f"group{n}.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),candidate.splitlines(keepends=True),fromfile=str(base_path),tofile=str(path))))
    print(n,hashlib.sha256(path.read_bytes()).hexdigest(),path)
