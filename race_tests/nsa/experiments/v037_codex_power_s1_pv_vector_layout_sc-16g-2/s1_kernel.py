# codex-power v037
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout

@tilelang.jit(out_idx=[], pass_configs={
    tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True,
    tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,
    tilelang.PassConfigKey.TL_DISABLE_THREAD_STORAGE_SYNC: True,
})
def _make_power_s1_pv_vector_layout(batch, seq_len, kv_heads, query_heads, dim, selected_blocks, block_size, is_causal):
    groups = query_heads // kv_heads
    assert dim == 128 and selected_blocks == 1 and block_size == 32 and groups == 16
    tile_features = dim
    scale = (1.0 / dim) ** 0.5 * 1.44269504
    q_shape = [batch, seq_len, query_heads, dim]
    kv_shape = [batch, seq_len, kv_heads, dim]
    indices_shape = [batch, seq_len, kv_heads, 1]
    dtype = T.float16
    accum_dtype = T.float32
    @T.prim_func
    def native_sparse_attention(
        Q: T.Tensor(q_shape, dtype), K: T.Tensor(kv_shape, dtype),
        V: T.Tensor(kv_shape, dtype), BlockIndices: T.Tensor(indices_shape, T.int32),
        Output: T.Tensor(q_shape, dtype),
    ):
        with T.Kernel(seq_len, batch * kv_heads, threads=64) as (linear, batch_head):
            token = linear
            batch_id = batch_head // kv_heads
            kv_head = batch_head % kv_heads
            lane_id = T.KernelLaunchFrame.Current().get_thread_binding() % 64
            stage_shared = T.alloc_shared([block_size * dim], dtype)
            v_tile_local = T.alloc_local(16, dtype)
            v_column_local = T.alloc_local(4, dtype)
            v_operand = T.alloc_local(4, dtype)
            q_local = T.alloc_local(32, dtype)
            k_local = T.alloc_local(4, dtype)
            scores = T.alloc_fragment([groups, block_size], accum_dtype)
            scores_half = T.alloc_fragment([groups, block_size], dtype)
            block_max = T.alloc_fragment([groups], accum_dtype)
            denominator = T.alloc_fragment([groups], accum_dtype)
            output_acc = T.alloc_fragment([groups, tile_features], accum_dtype)
            T.annotate_layout({
                scores: T.Fragment([groups, block_size],
                    forward_thread_fn=lambda row, col: row + 16 * ((col % 16) // 4),
                    forward_index_fn=lambda row, col: col % 4 + 4 * (col // 16)),
                scores_half: T.Fragment([groups, block_size],
                    forward_thread_fn=lambda row, col: row + 16 * ((col % 16) // 4),
                    forward_index_fn=lambda row, col: col % 4 + 4 * (col // 16)),
                output_acc: T.Fragment([groups, tile_features],
                    forward_thread_fn=lambda row, col: row + 16 * ((col % 16) // 4),
                    forward_index_fn=lambda row, col: col % 4 + 4 * (col // 16)),
            })
            block_start = BlockIndices[batch_id, token, kv_head, 0] * block_size
            T.fill(denominator, 0)
            if block_start >= 0 and block_start <= token:
                for part in T.unroll(4):
                    row = part * 4 + lane_id // 16
                    col_base = (lane_id % 16) * 8
                    physical = (col_base // 64) * 2048 + row * 64 + ((col_base % 64) ^ ((row % 8) * 8))
                    for element in T.vectorized(8):
                        stage_shared[physical + element] = Q[batch_id, token, kv_head * groups + row, col_base + element]
                T.sync_warp()
                for chunk in T.unroll(8):
                    head = lane_id % 16
                    feature_base = chunk * 16 + (lane_id // 16) * 4
                    physical = (feature_base // 64) * 2048 + head * 64 + ((feature_base % 64) ^ ((head % 8) * 8))
                    for element in T.vectorized(4):
                        q_local[chunk * 4 + element] = stage_shared[physical + element]
                T.sync_warp()
                for part in T.unroll(8):
                    row = part * 4 + lane_id // 16
                    col_base = (lane_id % 16) * 8
                    physical = (col_base // 64) * 2048 + row * 64 + ((col_base % 64) ^ ((row % 8) * 8))
                    for element in T.vectorized(8):
                        stage_shared[physical + element] = T.if_then_else(block_start + row < seq_len,
                            K[batch_id, block_start + row, kv_head, col_base + element], 0)
                T.sync_warp()
                T.fill(scores, 0)
                for chunk in T.unroll(8):
                    for key_tile in T.unroll(2):
                        row = key_tile * 16 + lane_id % 16
                        feature_base = chunk * 16 + (lane_id // 16) * 4
                        physical = (feature_base // 64) * 2048 + row * 64 + ((feature_base % 64) ^ ((row % 8) * 8))
                        for element in T.vectorized(4):
                            k_local[element] = stage_shared[physical + element]
                        T.tvm_mfma('16x16x16f16', 'row', 'row',
                            'float16x4', 'float16x4', 'float32x4',
                            k_local.data, 0, q_local.data, chunk, scores.data, key_tile,
                            dtype='float32x4')
                if is_causal:
                    for head, offset in T.Parallel(groups, block_size):
                        scores[head, offset] = T.if_then_else(
                            token >= block_start + offset, scores[head, offset], -T.infinity(accum_dtype))
                T.fill(block_max, -T.infinity(accum_dtype))
                T.reduce_max(scores, block_max, dim=1, clear=True)
                for head, offset in T.Parallel(groups, block_size):
                    scores[head, offset] = T.exp2((scores[head, offset] - block_max[head]) * scale)
                T.reduce_sum(scores, denominator, dim=1)
                for head, offset in T.Parallel(groups, block_size):
                    scores[head, offset] /= denominator[head]
                T.copy(scores, scores_half)
                T.sync_warp()
                for key_tile in T.unroll(2):
                    for feature_tile in T.unroll(2):
                        row_base = key_tile * 16 + (lane_id // 16) * 4
                        feature_base = feature_tile * 64 + (lane_id % 16) * 4
                        for row_element in T.unroll(4):
                            for column in T.vectorized(4):
                                v_tile_local[row_element * 4 + column] = T.if_then_else(
                                    block_start + row_base + row_element < seq_len,
                                    V[batch_id, block_start + row_base + row_element, kv_head, feature_base + column], 0)
                        for column in T.unroll(4):
                            feature = feature_base + column
                            physical = key_tile * 2048 + (feature // 4 + 32 * (feature % 4)) * 16 + ((lane_id // 16) ^ ((feature // 16) % 4) ^ (feature % 4)) * 4
                            for row_element in T.vectorized(4):
                                v_column_local[row_element] = v_tile_local[row_element * 4 + column]
                            for row_element in T.vectorized(4):
                                stage_shared[physical + row_element] = v_column_local[row_element]
                T.sync_warp()
            T.fill(output_acc, 0)
            if block_start >= 0 and block_start <= token:
                for key_tile in T.unroll(2):
                    for feature_chunk in T.unroll(8):
                        feature = feature_chunk * 16 + lane_id % 16
                        physical = key_tile * 2048 + (feature // 4 + 32 * (feature % 4)) * 16 + ((lane_id // 16) ^ (feature_chunk % 4) ^ (feature % 4)) * 4
                        for element in T.vectorized(4):
                            v_operand[element] = stage_shared[physical + element]
                        T.tvm_mfma('16x16x16f16', 'row', 'row',
                            'float16x4', 'float16x4', 'float32x4',
                            v_operand.data, 0, scores_half.data, key_tile, output_acc.data, feature_chunk,
                            dtype='float32x4')
            else:
                for head, feature in T.Parallel(groups, tile_features):
                    output_acc[head, feature] /= denominator[head]
            for head, feature in T.Parallel(groups, tile_features):
                Output[batch_id, token, kv_head * groups + head,
                    feature] = output_acc[head, feature]
    return native_sparse_attention
