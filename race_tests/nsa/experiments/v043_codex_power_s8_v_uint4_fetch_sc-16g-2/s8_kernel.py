# codex-power v043
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
def _make_power_s8_v_uint4_fetch(
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
            v_fetch_local = T.alloc_local(16, dtype)
            v_fetch_words = T.view(v_fetch_local, [8], T.uint32)
            v_exchange_words = T.alloc_local(4, T.uint32)
            v_exchange_half = T.view(v_exchange_words, [8], dtype)
            v_column_local = T.alloc_local(4, dtype)
            output_shared = T.alloc_shared([groups, dim], dtype)
            q_local = T.alloc_local(16, dtype)
            k_local = T.alloc_local(4, dtype)
            scores = T.alloc_local(4, accum_dtype)
            output_acc = T.alloc_fragment([groups, dim], accum_dtype)
            block_max = T.alloc_local(1, accum_dtype)
            probability_cache = T.alloc_local(4 * selected_blocks, dtype)
            v_operand = T.alloc_local(16, dtype)
            sum_local = T.alloc_local(1, accum_dtype)
            max_cache = T.alloc_local(2, accum_dtype)
            global_max = T.alloc_local(1, accum_dtype)
            rescale = T.alloc_local(1, accum_dtype)
            denominator = T.alloc_local(1, accum_dtype)
            T.annotate_layout({
                output_acc: T.Fragment([groups, dim],
                    forward_thread_fn=lambda head, col: head + 16 * ((col % 16) // 4),
                    forward_index_fn=lambda head, col: col % 4 + 4 * (col // 16)),

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
            T.fill(global_max, -T.infinity(accum_dtype))
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
                        for element in T.unroll(4):
                            scores[element] = T.if_then_else(token >= block_start + (lane_id // 16) * 4 + element,
                                scores[element], -T.infinity(accum_dtype))
                    block_max[0] = -T.infinity(accum_dtype)
                    for element in T.unroll(4):
                        block_max[0] = T.max(block_max[0], scores[element])
                    block_max[0] = T.max(block_max[0], T.shfl_xor(block_max[0], 32, width=64, mask=0xFFFFFFFFFFFFFFFF))
                    block_max[0] = T.max(block_max[0], T.shfl_xor(block_max[0], 16, width=64, mask=0xFFFFFFFFFFFFFFFF))
                    if lane_id // 16 == selected % 4:
                        max_cache[selected // 4] = block_max[0]
                    global_max[0] = T.max(global_max[0], block_max[0])
                    for element in T.vectorized(4):
                        probability_cache[selected * 4 + element] = T.exp2((scores[element] - block_max[0]) * scale + 8.0)
            T.fill(output_acc, 0)
            for selected in T.unroll(selected_blocks):
                block_start = BlockIndices[batch_id, token, kv_head, selected] * block_size
                if block_start >= 0 and block_start <= token:
                    T.sync_warp()
                    rescale[0] = 0
                    if lane_id // 16 == selected % 4:
                        rescale[0] = T.exp2((max_cache[selected // 4] - global_max[0]) * scale)
                    rescale[0] = T.shfl_sync(rescale[0], lane_id % 16 + 16 * (selected % 4), width=64, mask=0xFFFFFFFFFFFFFFFF)
                    for element in T.vectorized(4):
                        probability_cache[selected * 4 + element] = probability_cache[selected * 4 + element].astype(accum_dtype) * rescale[0]
                    feature_half = (lane_id // 8) % 2
                    fetch_row_base = (lane_id // 8) * 2
                    fetch_feature_base = (lane_id % 8) * 8
                    for tile_row in T.unroll(2):
                        for tile_col in T.vectorized(8):
                            v_fetch_local[tile_row * 8 + tile_col] = V[batch_id, block_start + fetch_row_base + tile_row, kv_head, fetch_feature_base + tile_col]
                    for tile_row in T.unroll(2):
                        for pair in T.unroll(2):
                            send_word = T.if_then_else(feature_half == 0,
                                v_fetch_words[tile_row * 4 + pair + 2], v_fetch_words[tile_row * 4 + pair])
                            v_exchange_words[tile_row * 2 + pair] = T.shfl_xor(send_word, 8, width=64, mask=0xFFFFFFFFFFFFFFFF)
                    row_base = (lane_id // 16) * 4
                    feature_base = (lane_id % 8) * 8 + feature_half * 4
                    for tile_col in T.unroll(4):
                        own0 = T.if_then_else(feature_half == 0, v_fetch_local[tile_col], v_fetch_local[4 + tile_col])
                        own1 = T.if_then_else(feature_half == 0, v_fetch_local[8 + tile_col], v_fetch_local[12 + tile_col])
                        v_column_local[0] = T.if_then_else(feature_half == 0, own0, v_exchange_half[tile_col])
                        v_column_local[1] = T.if_then_else(feature_half == 0, own1, v_exchange_half[4 + tile_col])
                        v_column_local[2] = T.if_then_else(feature_half == 0, v_exchange_half[tile_col], own0)
                        v_column_local[3] = T.if_then_else(feature_half == 0, v_exchange_half[4 + tile_col], own1)
                        for tile_row in T.vectorized(4):
                            v_shared[row_base + tile_row, feature_base + tile_col] = v_column_local[tile_row]
                    T.sync_warp()
                    for chunk in T.unroll(4):
                        for element in T.vectorized(4):
                            v_operand[chunk * 4 + element] = v_shared[(lane_id // 16) * 4 + element, chunk * 16 + lane_id % 16]
                    for chunk in T.unroll(4):
                        T.tvm_mfma('16x16x16f16', 'row', 'row',
                            'float16x4', 'float16x4', 'float32x4',
                            v_operand.data, chunk, probability_cache.data, selected, output_acc.data, chunk,
                            dtype='float32x4')
            T.sync_warp()
            sum_local[0] = 0
            for element in T.unroll(4 * selected_blocks):
                sum_local[0] += probability_cache[element].astype(accum_dtype)
            sum_local[0] += T.shfl_xor(sum_local[0], 32, width=64, mask=0xFFFFFFFFFFFFFFFF)
            sum_local[0] += T.shfl_xor(sum_local[0], 16, width=64, mask=0xFFFFFFFFFFFFFFFF)
            denominator[0] = sum_local[0]
            for head, feature in T.Parallel(groups, dim):
                output_acc[head, feature] /= denominator[0]
            T.copy(output_acc, output_shared)
            T.sync_warp()
            T.copy(
                output_shared,
                Output[batch_id, token, kv_head * groups:(kv_head + 1) * groups, :],
            )

    return native_sparse_attention
