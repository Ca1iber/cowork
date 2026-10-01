# codex-power v041
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
def _make_power_s8_probability_cache(
    batch, seq_len, kv_heads, query_heads, dim, selected_blocks, block_size, is_causal,
):
    groups = query_heads // kv_heads
    assert selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16
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
            k_shared = T.alloc_shared([block_size, dim], dtype)
            v_shared = T.alloc_shared([block_size, dim], dtype)
            v_tile_local = T.alloc_local(16, dtype)
            v_column_local = T.alloc_local(4, dtype)
            scores_half = T.alloc_fragment([groups, block_size], dtype)
            output_shared = T.alloc_shared([groups, dim], dtype)
            q_local = T.alloc_local(16, dtype)
            k_local = T.alloc_local(4, dtype)
            scores = T.alloc_fragment([groups, block_size], accum_dtype)
            output_acc = T.alloc_fragment([groups, dim], accum_dtype)
            block_max = T.alloc_fragment([groups], accum_dtype)
            probability_cache = T.alloc_fragment([groups, block_size * selected_blocks], dtype)
            max_cache = T.alloc_local(selected_blocks, accum_dtype)
            global_max = T.alloc_fragment([groups], accum_dtype)
            rescale = T.alloc_fragment([groups], accum_dtype)
            denominator = T.alloc_fragment([groups], accum_dtype)
            T.annotate_layout({
                scores_half: T.Fragment([groups, block_size],
                    forward_thread_fn=lambda head, key: head + 16 * (key // 4),
                    forward_index_fn=lambda head, key: key % 4),
                probability_cache: T.Fragment([groups, block_size * selected_blocks],
                    forward_thread_fn=lambda row, col: row + 16 * ((col % 16) // 4),
                    forward_index_fn=lambda row, col: col % 4 + 4 * (col // 16)),
                block_max: T.Fragment([groups], replicate=4,
                    forward_thread_fn=lambda head, rep: head + 16 * rep,
                    forward_index_fn=lambda head: 0),
                global_max: T.Fragment([groups], replicate=4,
                    forward_thread_fn=lambda head, rep: head + 16 * rep,
                    forward_index_fn=lambda head: 0),
                rescale: T.Fragment([groups], replicate=4,
                    forward_thread_fn=lambda head, rep: head + 16 * rep,
                    forward_index_fn=lambda head: 0),
                denominator: T.Fragment([groups], replicate=4,
                    forward_thread_fn=lambda head, rep: head + 16 * rep,
                    forward_index_fn=lambda head: 0),

                q_shared: make_swizzled_layout(q_shared),
                output_shared: T.Layout(
                    [groups, dim],
                    lambda row, col: (row, ((col // 8) ^ (row % 8)) * 8 + col % 8),
                ),
                k_shared: make_swizzled_layout(k_shared),
                v_shared: T.Layout(
                    [block_size, dim],
                    lambda row, col: (col // 4 + 16 * (col % 4), ((row // 4) ^ (col // 16) ^ (col % 4)) * 4 + row % 4),
                ),
                scores: T.Fragment(
                    [groups, block_size],
                    forward_thread_fn=lambda row, col: row + 16 * (col // 4),
                    forward_index_fn=lambda row, col: col % 4,
                ),
            })
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
            T.fill(probability_cache, 0)
            T.fill(max_cache, -T.infinity(accum_dtype))
            for selected in T.unroll(selected_blocks):
                block_start = BlockIndices[batch_id, token, kv_head, selected] * block_size
                if block_start >= 0 and block_start <= token:
                    T.sync_warp()
                    T.copy(K[batch_id, block_start:block_start + block_size, kv_head, :], k_shared)
                    T.sync_warp()
                    T.fill(scores, 0)
                    for chunk in T.serial(4):
                        for element in T.vectorized(4):
                            row = lane_id % 16
                            feature = chunk * 16 + (lane_id // 16) * 4 + element
                            k_local[element] = k_shared[row, feature]
                        T.tvm_mfma(
                            '16x16x16f16', 'row', 'row',
                            'float16x4', 'float16x4', 'float32x4',
                            k_local.data, 0, q_local.data, chunk, scores.data, 0,
                            dtype='float32x4',
                        )
                    if is_causal:
                        for head, offset in T.Parallel(groups, block_size):
                            scores[head, offset] = T.if_then_else(
                                token >= block_start + offset,
                                scores[head, offset],
                                -T.infinity(accum_dtype),
                            )
                    T.fill(block_max, -T.infinity(accum_dtype))
                    T.reduce_max(scores, block_max, dim=1, clear=True)
                    max_cache[selected] = block_max[lane_id % 16]
                    for head, offset in T.Parallel(groups, block_size):
                        scores[head, offset] = T.exp2((scores[head, offset] - block_max[head]) * scale + 8.0)
                    T.copy(scores, probability_cache[:, selected * block_size:(selected + 1) * block_size])
            T.fill(global_max, -T.infinity(accum_dtype))
            for selected in T.unroll(selected_blocks):
                global_max[lane_id % 16] = T.max(global_max[lane_id % 16], max_cache[selected])
            T.fill(output_acc, 0)
            for selected in T.unroll(selected_blocks):
                block_start = BlockIndices[batch_id, token, kv_head, selected] * block_size
                if block_start >= 0 and block_start <= token:
                    T.sync_warp()
                    rescale[lane_id % 16] = T.exp2((max_cache[selected] - global_max[lane_id % 16]) * scale)
                    for head, offset in T.Parallel(groups, block_size):
                        probability_cache[head, selected * block_size + offset] = probability_cache[head, selected * block_size + offset].astype(accum_dtype) * rescale[head]
                    T.copy(probability_cache[:, selected * block_size:(selected + 1) * block_size], scores_half)
                    row_base = (lane_id // 16) * 4
                    feature_base = (lane_id % 16) * 4
                    for tile_row in T.unroll(4):
                        for tile_col in T.vectorized(4):
                            v_tile_local[tile_row * 4 + tile_col] = V[
                                batch_id, block_start + row_base + tile_row, kv_head, feature_base + tile_col
                            ]
                    for tile_col in T.unroll(4):
                        for tile_row in T.unroll(4):
                            v_column_local[tile_row] = v_tile_local[tile_row * 4 + tile_col]
                        for tile_row in T.vectorized(4):
                            v_shared[row_base + tile_row, feature_base + tile_col] = v_column_local[tile_row]
                    T.sync_warp()
                    T.gemm(
                        scores_half, v_shared, output_acc,
                        policy=T.GemmWarpPolicy.FullRow,
                    )
            T.sync_warp()
            T.reduce_sum(probability_cache, denominator, dim=1, clear=True)
            for head, feature in T.Parallel(groups, dim):
                output_acc[head, feature] /= denominator[head]
            T.copy(output_acc, output_shared)
            T.sync_warp()
            T.copy(
                output_shared,
                Output[batch_id, token, kv_head * groups:(kv_head + 1) * groups, :],
            )

    return native_sparse_attention
