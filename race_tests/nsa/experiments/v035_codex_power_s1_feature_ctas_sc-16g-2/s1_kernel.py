# codex-power v035
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout

@tilelang.jit(out_idx=[], pass_configs={
    tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True,
    tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,
    tilelang.PassConfigKey.TL_DISABLE_THREAD_STORAGE_SYNC: True,
})
def _make_power_s1_feature_ctas(batch, seq_len, kv_heads, query_heads, dim, selected_blocks, block_size, is_causal):
    groups = query_heads // kv_heads
    assert dim == 128 and selected_blocks == 1 and block_size == 32 and groups == 16
    tile_features = 64
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
        with T.Kernel(seq_len * 2, batch * kv_heads, threads=64) as (linear, batch_head):
            token = linear // 2
            feature_tile = linear % 2
            batch_id = batch_head // kv_heads
            kv_head = batch_head % kv_heads
            lane_id = T.KernelLaunchFrame.Current().get_thread_binding() % 64
            q_shared = T.alloc_shared([groups, dim], dtype)
            k_shared = T.alloc_shared([block_size, dim], dtype)
            v_shared = T.alloc_shared([block_size, tile_features], dtype)
            q_local = T.alloc_local(32, dtype)
            k_local = T.alloc_local(4, dtype)
            scores = T.alloc_fragment([groups, block_size], accum_dtype)
            scores_half = T.alloc_fragment([groups, block_size], dtype)
            block_max = T.alloc_fragment([groups], accum_dtype)
            denominator = T.alloc_fragment([groups], accum_dtype)
            output_acc = T.alloc_fragment([groups, tile_features], accum_dtype)
            T.annotate_layout({
                q_shared: make_swizzled_layout(q_shared),
                k_shared: make_swizzled_layout(k_shared),
                v_shared: make_swizzled_layout(v_shared),
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
                T.copy(Q[batch_id, token, kv_head * groups:(kv_head + 1) * groups, :], q_shared)
                T.sync_warp()
                for chunk in T.unroll(8):
                    for element in T.vectorized(4):
                        head = lane_id % 16
                        feature = chunk * 16 + (lane_id // 16) * 4 + element
                        q_local[chunk * 4 + element] = q_shared[head, feature]
                T.sync_warp()
                T.copy(K[batch_id, block_start:block_start + block_size, kv_head, :], k_shared)
                T.sync_warp()
                T.fill(scores, 0)
                for chunk in T.unroll(8):
                    for key_tile in T.unroll(2):
                        for element in T.vectorized(4):
                            row = key_tile * 16 + lane_id % 16
                            feature = chunk * 16 + (lane_id // 16) * 4 + element
                            k_local[element] = k_shared[row, feature]
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
                T.copy(V[batch_id, block_start:block_start + block_size, kv_head,
                    feature_tile * tile_features:(feature_tile + 1) * tile_features], v_shared)
                T.sync_warp()
            T.fill(output_acc, 0)
            if block_start >= 0 and block_start <= token:
                T.gemm(scores_half, v_shared, output_acc, policy=T.GemmWarpPolicy.FullRow)
            else:
                for head, feature in T.Parallel(groups, tile_features):
                    output_acc[head, feature] /= denominator[head]
            for head, feature in T.Parallel(groups, tile_features):
                Output[batch_id, token, kv_head * groups + head,
                    feature_tile * tile_features + feature] = output_acc[head, feature]
    return native_sparse_attention
