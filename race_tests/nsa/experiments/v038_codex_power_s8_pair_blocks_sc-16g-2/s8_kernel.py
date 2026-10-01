# codex-power v038
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout

@tilelang.jit(
    out_idx=[],
    pass_configs={
        tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True,
        tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,
        tilelang.PassConfigKey.TL_DISABLE_THREAD_STORAGE_SYNC: True,
    },
)
def _make_power_s8_pair_blocks(
    batch, seq_len, kv_heads, query_heads, dim, selected_blocks, block_size, is_causal,
):
    groups = query_heads // kv_heads
    assert selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16
    tile_keys = block_size * 2
    scale = (1.0 / dim) ** 0.5 * 1.44269504
    q_shape = [batch, seq_len, query_heads, dim]
    kv_shape = [batch, seq_len, kv_heads, dim]
    indices_shape = [batch, seq_len, kv_heads, selected_blocks]
    dtype = T.float16
    accum_dtype = T.float32

    @T.prim_func
    def native_sparse_attention(
        Q: T.Tensor(q_shape, dtype),
        K: T.Tensor(kv_shape, dtype),
        V: T.Tensor(kv_shape, dtype),
        BlockIndices: T.Tensor(indices_shape, T.int32),
        Output: T.Tensor(q_shape, dtype),
    ):
        with T.Kernel(seq_len, batch * kv_heads, threads=64) as (token, batch_head):
            batch_id = batch_head // kv_heads
            kv_head = batch_head % kv_heads
            q_shared = T.alloc_shared([groups, dim], dtype)
            k_shared = T.alloc_shared([tile_keys, dim], dtype)
            v_shared = T.alloc_shared([tile_keys, dim], dtype)
            v_tile_local = T.alloc_local(16, dtype)
            v_column_local = T.alloc_local(4, dtype)
            scores_half = T.alloc_fragment([groups, tile_keys], dtype)
            output_shared = T.alloc_shared([groups, dim], dtype)
            q_local = T.alloc_local(16, dtype)
            k_local = T.alloc_local(4, dtype)
            scores = T.alloc_fragment([groups, tile_keys], accum_dtype)
            output_acc = T.alloc_fragment([groups, dim], accum_dtype)
            block_max = T.alloc_fragment([groups], accum_dtype)
            normalizer = T.alloc_fragment([groups], accum_dtype)
            rescale = T.alloc_fragment([groups], accum_dtype)
            block_sum = T.alloc_fragment([groups], accum_dtype)
            denominator = T.alloc_fragment([groups], accum_dtype)
            T.annotate_layout({
                q_shared: make_swizzled_layout(q_shared),
                output_shared: T.Layout(
                    [groups, dim],
                    lambda row, col: (row, ((col // 8) ^ (row % 8)) * 8 + col % 8),
                ),
                k_shared: make_swizzled_layout(k_shared),
                v_shared: T.Layout(
                    [tile_keys, dim],
                    lambda row, col: (row // 16, col // 4 + 16 * (col % 4), (((row % 16) // 4) ^ (col // 16) ^ (col % 4)) * 4 + row % 4),
                ),
                scores: T.Fragment(
                    [groups, tile_keys],
                    forward_thread_fn=lambda row, col: row + 16 * ((col % 16) // 4),
                    forward_index_fn=lambda row, col: col % 4 + 4 * (col // 16),
                ),
            })
            block_starts = T.alloc_local(2, T.int32)
            lane_id = T.KernelLaunchFrame.Current().get_thread_binding() % 64
            T.copy(
                Q[batch_id, token, kv_head * groups:(kv_head + 1) * groups, :],
                q_shared,
            )
            T.sync_warp()
            for chunk in T.serial(4):
                for element in T.vectorized(4):
                    head = lane_id % 16
                    feature = chunk * 16 + (lane_id // 16) * 4 + element
                    q_local[chunk * 4 + element] = q_shared[head, feature]
            T.fill(output_acc, 0)
            T.fill(denominator, 0)
            T.fill(normalizer, -T.infinity(accum_dtype))
            for selected in T.serial(selected_blocks // 2):
                for which in T.unroll(2):
                    block_starts[which] = BlockIndices[batch_id, token, kv_head, selected * 2 + which] * block_size
                if (block_starts[0] >= 0 and block_starts[0] <= token) or (block_starts[1] >= 0 and block_starts[1] <= token):
                    T.sync_warp()
                    for which in T.unroll(2):
                        if block_starts[which] >= 0 and block_starts[which] <= token:
                            T.copy(K[batch_id, block_starts[which]:block_starts[which] + block_size, kv_head, :],
                                k_shared[which * block_size:(which + 1) * block_size, :])
                        else:
                            T.fill(k_shared[which * block_size:(which + 1) * block_size, :], 0)
                    T.sync_warp()
                    T.fill(scores, 0)
                    for chunk in T.serial(4):
                        for which in T.unroll(2):
                            for element in T.vectorized(4):
                                row = which * block_size + lane_id % 16
                                feature = chunk * 16 + (lane_id // 16) * 4 + element
                                k_local[element] = k_shared[row, feature]
                            T.tvm_mfma(
                                '16x16x16f16', 'row', 'row',
                                'float16x4', 'float16x4', 'float32x4',
                                k_local.data, 0, q_local.data, chunk, scores.data, which,
                                dtype='float32x4',
                            )
                    for head, offset in T.Parallel(groups, tile_keys):
                        scores[head, offset] = T.if_then_else(
                            block_starts[offset // block_size] >= 0 and block_starts[offset // block_size] <= token and
                                ((not is_causal) or token >= block_starts[offset // block_size] + offset % block_size),
                            scores[head, offset], -T.infinity(accum_dtype))
                    T.fill(block_max, -T.infinity(accum_dtype))
                    T.reduce_max(scores, block_max, dim=1, clear=True)
                    for head in T.Parallel(groups):
                        if (block_max[head] - normalizer[head]) * scale > 7.0:
                            rescale[head] = T.exp2((normalizer[head] - block_max[head]) * scale)
                            normalizer[head] = block_max[head]
                        else:
                            rescale[head] = 1.0
                    for head, offset in T.Parallel(groups, tile_keys):
                        scores[head, offset] = T.exp2(
                            (scores[head, offset] - normalizer[head]) * scale + 8.0
                        )
                    T.reduce_sum(scores, block_sum, dim=1)
                    for head in T.Parallel(groups):
                        if rescale[head] != 1.0:
                            denominator[head] *= rescale[head]
                        denominator[head] += block_sum[head]
                    T.copy(scores, scores_half)
                    for head, feature in T.Parallel(groups, dim):
                        if rescale[head] != 1.0:
                            output_acc[head, feature] *= rescale[head]
                    for which in T.unroll(2):
                        row_base = (lane_id // 16) * 4
                        feature_base = (lane_id % 16) * 4
                        if block_starts[which] >= 0 and block_starts[which] <= token:
                            for tile_row in T.unroll(4):
                                for tile_col in T.vectorized(4):
                                    v_tile_local[tile_row * 4 + tile_col] = T.if_then_else(
                                        block_starts[which] + row_base + tile_row < seq_len,
                                        V[batch_id, block_starts[which] + row_base + tile_row, kv_head, feature_base + tile_col], 0)
                        else:
                            T.fill(v_tile_local, 0)
                        for tile_col in T.unroll(4):
                            for tile_row in T.unroll(4):
                                v_column_local[tile_row] = v_tile_local[tile_row * 4 + tile_col]
                            for tile_row in T.vectorized(4):
                                v_shared[which * block_size + row_base + tile_row, feature_base + tile_col] = v_column_local[tile_row]
                    T.sync_warp()
                    T.gemm(
                        scores_half, v_shared, output_acc,
                        policy=T.GemmWarpPolicy.FullRow,
                    )
            T.sync_warp()
            for head, feature in T.Parallel(groups, dim):
                output_acc[head, feature] /= denominator[head]
            T.copy(output_acc, output_shared)
            T.sync_warp()
            T.copy(
                output_shared,
                Output[batch_id, token, kv_head * groups:(kv_head + 1) * groups, :],
            )

    return native_sparse_attention
