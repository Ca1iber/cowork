# codex-power v083
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout

@tilelang.jit(out_idx=[], pass_configs={
    tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True,
    tilelang.PassConfigKey.TL_DISABLE_SAFE_MEMORY_ACCESS: True,
    tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,
    tilelang.PassConfigKey.TL_DISABLE_THREAD_STORAGE_SYNC: True,
})
def _make_power_s1_d32_register(batch, seq_len, kv_heads, query_heads, dim, selected_blocks, block_size, is_causal):
    groups = query_heads // kv_heads
    assert groups == 16 and dim == 32 and selected_blocks == 1 and block_size == 16 and is_causal
    assert seq_len % block_size == 0
    scale = (1.0 / dim) ** 0.5 * 1.44269504
    dtype = T.float16
    accum_dtype = T.float32
    q_shape = [batch, seq_len, query_heads, dim]
    kv_shape = [batch, seq_len, kv_heads, dim]
    index_shape = [batch, seq_len, kv_heads, selected_blocks]

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
            q_local = T.alloc_local(8, dtype)
            k_local = T.alloc_local(4, dtype)
            scores = T.alloc_local(4, accum_dtype)
            probabilities = T.alloc_local(4, dtype)
            numerator = T.alloc_local(8, accum_dtype)
            maximum = T.alloc_local(1, accum_dtype)
            denominator = T.alloc_local(1, accum_dtype)
            partial_sum = T.alloc_local(1, accum_dtype)
            v_operand = T.alloc_local(8, dtype)
            T.fill(numerator, 0)
            denominator[0] = 0
            block_start = Indices[batch_id, token, kv_head, 0] * block_size
            if block_start >= 0 and block_start <= token:
                for chunk in T.unroll(2):
                    for element in T.vectorized(4):
                        q_local[chunk * 4 + element] = Q[batch_id, token, kv_head * groups + lane % 16, chunk * 16 + (lane // 16) * 4 + element]
                T.fill(scores, 0)
                for chunk in T.unroll(2):
                    for element in T.vectorized(4):
                        k_local[element] = K[batch_id, block_start + lane % 16, kv_head, chunk * 16 + (lane // 16) * 4 + element]
                    T.tvm_mfma('16x16x16f16', 'row', 'row',
                        'float16x4', 'float16x4', 'float32x4',
                        k_local.data, 0, q_local.data, chunk, scores.data, 0,
                        dtype='float32x4')
                for element in T.unroll(4):
                    scores[element] = T.if_then_else(token >= block_start + (lane // 16) * 4 + element,
                        scores[element], -T.infinity(accum_dtype))
                maximum[0] = -T.infinity(accum_dtype)
                for element in T.unroll(4):
                    maximum[0] = T.max(maximum[0], scores[element])
                maximum[0] = T.max(maximum[0], T.shfl_xor(maximum[0], 32, width=64, mask=0xFFFFFFFFFFFFFFFF))
                maximum[0] = T.max(maximum[0], T.shfl_xor(maximum[0], 16, width=64, mask=0xFFFFFFFFFFFFFFFF))
                for element in T.vectorized(4):
                    probabilities[element] = T.exp2((scores[element] - maximum[0]) * scale + 8.0)
                partial_sum[0] = 0
                for element in T.unroll(4):
                    partial_sum[0] += probabilities[element].astype(accum_dtype)
                denominator[0] = partial_sum[0]
                for chunk in T.unroll(2):
                    for element in T.unroll(4):
                        v_operand[chunk * 4 + element] = V[batch_id, block_start + (lane // 16) * 4 + element, kv_head, chunk * 16 + lane % 16]
                for chunk in T.unroll(2):
                    T.tvm_mfma('16x16x16f16', 'row', 'row',
                        'float16x4', 'float16x4', 'float32x4',
                        v_operand.data, chunk, probabilities.data, 0, numerator.data, chunk,
                        dtype='float32x4')
            denominator[0] += T.shfl_xor(denominator[0], 32, width=64, mask=0xFFFFFFFFFFFFFFFF)
            denominator[0] += T.shfl_xor(denominator[0], 16, width=64, mask=0xFFFFFFFFFFFFFFFF)
            for chunk in T.unroll(2):
                for element in T.vectorized(4):
                    numerator[chunk * 4 + element] /= denominator[0]
            for chunk in T.unroll(2):
                for element in T.vectorized(4):
                    Output[batch_id, token, kv_head * groups + lane % 16, chunk * 16 + (lane // 16) * 4 + element] = numerator[chunk * 4 + element]
    return native_sparse_attention
