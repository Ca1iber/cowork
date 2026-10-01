# codex-power v049
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout

@tilelang.jit(out_idx=[], pass_configs={
    tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True,
    tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,
    tilelang.PassConfigKey.TL_DISABLE_THREAD_STORAGE_SYNC: True,
})
def _make_power_s1_shared_arena(batch, seq_len, kv_heads, query_heads, dim, selected_blocks, block_size, is_causal):
    groups = query_heads // kv_heads
    assert groups == 16 and dim == 128 and selected_blocks == 1 and block_size == 32 and is_causal
    scale = (1.0 / dim) ** 0.5 * 1.44269504
    dtype = T.float16
    accum_dtype = T.float32
    q_shape = [batch, seq_len, query_heads, dim]
    kv_shape = [batch, seq_len, kv_heads, dim]
    index_shape = [batch, seq_len, kv_heads, selected_blocks]

    def qk_slot(row, col, rows):
        return (col // 64) * rows * 64 + row * 64 + (((col % 64) // 8) ^ (row % 8)) * 8 + col % 8
    def v_slot(row, col):
        return ((col // 64) * 64 + (col % 64) // 8 + 8 * (col % 8)) * 32 + ((row // 2) ^ ((col % 64) // 8) ^ (col % 8)) * 2 + row % 2
    def out_slot(row, col):
        return row * 128 + ((col // 8) ^ (row % 8)) * 8 + col % 8

    @T.prim_func
    def native_sparse_attention(
        Q: T.Tensor(q_shape, dtype), K: T.Tensor(kv_shape, dtype),
        V: T.Tensor(kv_shape, dtype), Indices: T.Tensor(index_shape, T.int32),
        Output: T.Tensor(q_shape, dtype),
    ):
        with T.Kernel(seq_len, batch * kv_heads, threads=64) as (token, batch_head):
            batch_id = batch_head // kv_heads
            kv_head = batch_head % kv_heads
            lane = T.KernelLaunchFrame.Current().get_thread_binding() % 64
            shared = T.alloc_shared([4096], dtype)
            q_local = T.alloc_local(32, dtype)
            k_local = T.alloc_local(4, dtype)
            scores = T.alloc_local(8, accum_dtype)
            probabilities = T.alloc_local(8, dtype)
            maximum = T.alloc_local(1, accum_dtype)
            denominator = T.alloc_local(1, accum_dtype)
            v_fetch = T.alloc_local(16, dtype)
            v_column = T.alloc_local(2, dtype)
            v_operand = T.alloc_local(16, dtype)
            numerator = T.alloc_fragment([groups, dim], accum_dtype)
            T.annotate_layout({
                numerator: T.Fragment([groups, dim],
                    forward_thread_fn=lambda head, col: head + 16 * ((col % 16) // 4),
                    forward_index_fn=lambda head, col: col % 4 + 4 * (col // 16)),
            })
            block_start = Indices[batch_id, token, kv_head, 0] * block_size
            denominator[0] = 0
            if block_start >= 0 and block_start <= token:
                for part in T.unroll(4):
                    for element in T.vectorized(8):
                        pos = part * 512 + lane * 8 + element
                        shared[qk_slot(pos // 128, pos % 128, 16)] = Q[batch_id, token, kv_head * groups + pos // 128, pos % 128]
                T.sync_warp()
                for chunk in T.serial(8):
                    for element in T.vectorized(4):
                        q_local[chunk * 4 + element] = shared[qk_slot(lane % 16, chunk * 16 + (lane // 16) * 4 + element, 16)]
                T.sync_warp()
                for part in T.unroll(8):
                    for element in T.vectorized(8):
                        pos = part * 512 + lane * 8 + element
                        shared[qk_slot(pos // 128, pos % 128, 32)] = K[batch_id, block_start + pos // 128, kv_head, pos % 128]
                T.sync_warp()
                T.fill(scores, 0)
                for chunk in T.serial(8):
                    for key_tile in T.unroll(2):
                        for element in T.vectorized(4):
                            k_local[element] = shared[qk_slot(key_tile * 16 + lane % 16, chunk * 16 + (lane // 16) * 4 + element, 32)]
                        T.tvm_mfma('16x16x16f16', 'row', 'row',
                            'float16x4', 'float16x4', 'float32x4',
                            k_local.data, 0, q_local.data, chunk, scores.data, key_tile,
                            dtype='float32x4')
                for key_tile in T.unroll(2):
                    for element in T.unroll(4):
                        scores[key_tile * 4 + element] = T.if_then_else(
                            token >= block_start + key_tile * 16 + (lane // 16) * 4 + element,
                            scores[key_tile * 4 + element], -T.infinity(accum_dtype))
                maximum[0] = -T.infinity(accum_dtype)
                for element in T.unroll(8):
                    maximum[0] = T.max(maximum[0], scores[element])
                maximum[0] = T.max(maximum[0], T.shfl_xor(maximum[0], 32, width=64, mask=0xFFFFFFFFFFFFFFFF))
                maximum[0] = T.max(maximum[0], T.shfl_xor(maximum[0], 16, width=64, mask=0xFFFFFFFFFFFFFFFF))
                for key_tile in T.unroll(2):
                    for element in T.vectorized(4):
                        probabilities[key_tile * 4 + element] = T.exp2((scores[key_tile * 4 + element] - maximum[0]) * scale + 8.0)
                for element in T.unroll(8):
                    denominator[0] += probabilities[element].astype(accum_dtype)
                denominator[0] += T.shfl_xor(denominator[0], 32, width=64, mask=0xFFFFFFFFFFFFFFFF)
                denominator[0] += T.shfl_xor(denominator[0], 16, width=64, mask=0xFFFFFFFFFFFFFFFF)
                T.sync_warp()
                for key_tile in T.unroll(2):
                    for plane in T.unroll(2):
                        fetch_row = key_tile * 16 + (lane // 8) * 2
                        fetch_col = plane * 64 + (lane % 8) * 8
                        for row in T.unroll(2):
                            for col in T.vectorized(8):
                                v_fetch[row * 8 + col] = V[batch_id, block_start + fetch_row + row, kv_head, fetch_col + col]
                        for col in T.unroll(8):
                            for row in T.vectorized(2):
                                v_column[row] = v_fetch[row * 8 + col]
                            for row in T.vectorized(2):
                                shared[v_slot(fetch_row + row, fetch_col + col)] = v_column[row]
                T.sync_warp()
                T.fill(numerator, 0)
                for key_tile in T.unroll(2):
                    for plane in T.unroll(2):
                        for chunk in T.unroll(4):
                            for pair in T.unroll(2):
                                for element in T.vectorized(2):
                                    v_operand[chunk * 4 + pair * 2 + element] = shared[v_slot(
                                        key_tile * 16 + (lane // 16) * 4 + pair * 2 + element,
                                        plane * 64 + chunk * 16 + lane % 16)]
                        for chunk in T.unroll(4):
                            T.tvm_mfma('16x16x16f16', 'row', 'row',
                                'float16x4', 'float16x4', 'float32x4',
                                v_operand.data, chunk, probabilities.data, key_tile,
                                numerator.data, plane * 4 + chunk, dtype='float32x4')
            else:
                T.fill(numerator, 0)
            for head, feature in T.Parallel(groups, dim):
                numerator[head, feature] /= denominator[0]
            T.sync_warp()
            for head, feature in T.Parallel(groups, dim):
                shared[out_slot(head, feature)] = numerator[head, feature]
            T.sync_warp()
            for part in T.unroll(4):
                for element in T.vectorized(8):
                    pos = part * 512 + lane * 8 + element
                    Output[batch_id, token, kv_head * groups + pos // 128, pos % 128] = shared[out_slot(pos // 128, pos % 128)]
    return native_sparse_attention
