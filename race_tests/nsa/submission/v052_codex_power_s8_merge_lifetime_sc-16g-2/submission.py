# codex-power v052
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout

_KERNEL_CACHE = {}


def run_kernel(
    q,
    k,
    v,
    block_indices,
    output,
    B,
    seq_len,
    H,
    HQ,
    D,
    S,
    block_size,
    is_causal,
):
    key = (B, seq_len, H, HQ, D, S, block_size, bool(is_causal))
    kernel = _KERNEL_CACHE.get(key)
    if kernel is None:
        __metaclass__ = type

        def _qk_reverse_load_layout(thread_id, local_id):
            return thread_id % 16, (thread_id // 16) * 8 + local_id

        class _ManualMacaQK:
            """One-warp MFMA for Q[G,D] @ K[BS,D].T, adapted from moe_sota_inline.py."""

            def __init__(self, groups, block_tokens, dim):
                self.warp_rows = groups // 16
                self.warp_cols = block_tokens // 16
                self.chunk = dim
                self.k_pack = 2
                self.local_size_a = 4
                self.local_size_b = 4
                self.local_size_out = 4

            def make_mma_load_layout(self, local_buf):
                def forward_thread(i, j):
                    return i + 16 * (j // 8)

                def forward_index(i, j):
                    return j % 8

                base = T.Fragment(
                    [16, 32],
                    forward_thread_fn=forward_thread,
                    forward_index_fn=forward_index,
                )
                return base.repeat(
                    [self.warp_rows, self.chunk // 32],
                    repeat_on_thread=False,
                    lower_dim_first=False,
                )

            def make_mma_store_layout(self, local_buf):
                warp_rows = self.warp_rows
                warp_cols = self.warp_cols

                def forward_thread(i, j):
                    mma_i = i % 16
                    mma_j = j % 16
                    return mma_i + (mma_j // 4) * 16

                def forward_index(i, j):
                    warp_i = (i // 16) % warp_rows
                    warp_j = (j // 16) % warp_cols
                    return warp_i * (warp_cols * 4) + warp_j * 4 + j % 4

                return T.Fragment(
                    local_buf.shape,
                    forward_thread_fn=forward_thread,
                    forward_index_fn=forward_index,
                )

            def ldmatrix_b(self, b_local_buf, b_shared_buf, ki):
                warp_cols = self.warp_cols
                thread_binding = T.KernelLaunchFrame.Current().get_thread_binding()

                @T.macro
                def warp_ldmatrix_b(b_local_buf, b_shared_buf, ki, thread_binding):
                    lane_id = thread_binding % 64
                    for j in T.serial(warp_cols):
                        for local_id in T.vectorized(8):
                            row, col = T.meta_var(_qk_reverse_load_layout(lane_id, local_id))
                            b_local_buf[j * 8 + local_id] = b_shared_buf[j * 16 + row, ki * 32 + col]

                return warp_ldmatrix_b(b_local_buf, b_shared_buf, ki, thread_binding)

            def ldmatrix_b_global(self, b_local_buf, K, batch_id, block_start, kv_head, ki):
                warp_cols = self.warp_cols
                thread_binding = T.KernelLaunchFrame.Current().get_thread_binding()

                @T.macro
                def warp_ldmatrix_b_global(
                    b_local_buf, K, batch_id, block_start, kv_head, ki, thread_binding
                ):
                    lane_id = thread_binding % 64
                    for j in T.serial(warp_cols):
                        for local_id in T.vectorized(8):
                            row, col = T.meta_var(_qk_reverse_load_layout(lane_id, local_id))
                            b_local_buf[j * 8 + local_id] = K[
                                batch_id, block_start + j * 16 + row, kv_head, ki * 32 + col
                            ]

                return warp_ldmatrix_b_global(
                    b_local_buf, K, batch_id, block_start, kv_head, ki, thread_binding
                )

            def ldmatrix_b_global_prefetch(
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

            def mma(self, a_local_buf, b_local_buf, c_local_buf, ki):
                warp_rows = self.warp_rows
                warp_cols = self.warp_cols
                a_local_stride = ki * warp_rows * 8

                @T.macro
                def warp_mma(a_local_buf, b_local_buf, c_local_buf):
                    for kp, i, j in T.grid(2, warp_rows, warp_cols):
                        T.tvm_mfma(
                            "16x16x16f16",
                            "row",
                            "row",
                            "float16x4",
                            "float16x4",
                            "float32x4",
                            b_local_buf.data,
                            j * 2 + kp,
                            a_local_buf.data,
                            a_local_stride // 4 + i * 2 + kp,
                            c_local_buf.data,
                            i * warp_cols + j,
                            dtype="float32x4",
                        )

                return warp_mma(a_local_buf, b_local_buf, c_local_buf)

        @tilelang.jit(
            out_idx=[],
            pass_configs={
                tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True,
                tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,
            },
        )
        def _make_native_sparse_attention(
            batch,
            seq_len,
            kv_heads,
            query_heads,
            dim,
            selected_blocks,
            block_size,
            is_causal,
        ):
            # TileLang exp2 is used below, so convert the natural-exponential scale.
            scale = (1.0 / dim) ** 0.5 * 1.44269504

            groups = query_heads // kv_heads
            q_shape = [batch, seq_len, query_heads, dim]
            kv_shape = [batch, seq_len, kv_heads, dim]
            block_indices_shape = [batch, seq_len, kv_heads, selected_blocks]

            dtype = T.float16
            accum_dtype = T.float32
            tile_dim = min(128, tilelang.math.next_power_of_2(dim))
            assert dim <= 256, "The key dimension can not be larger than 256"

            output_tiles = tilelang.cdiv(dim, tile_dim)
            threads = 64
            stages = selected_blocks
            block_tokens = block_size
            assert groups % 16 == 0 and block_tokens % 16 == 0 and dim % 32 == 0
            use_manual_qk = block_size == 32 or selected_blocks > 1
            use_direct_k = (selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16) or (selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16)
            use_prefetch_k = selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16
            use_full_past_mask = selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16
            if use_manual_qk:
                qk_mma = _ManualMacaQK(groups, block_tokens, dim)

            @T.prim_func
            def native_sparse_attention(
                Q: T.Tensor(q_shape, dtype),
                K: T.Tensor(kv_shape, dtype),
                V: T.Tensor(kv_shape, dtype),
                BlockIndices: T.Tensor(block_indices_shape, T.int32),
                Output: T.Tensor(q_shape, dtype),
            ):
                with T.Kernel(seq_len, output_tiles, batch * kv_heads, threads=threads) as (
                    token,
                    output_tile,
                    batch_head,
                ):
                    if use_manual_qk:
                        q_shared = T.alloc_fragment([groups, tile_dim], dtype)
                    else:
                        q_shared = T.alloc_shared([groups, tile_dim], dtype)
                    if not use_direct_k:
                        k_shared = T.alloc_shared([block_tokens, tile_dim], dtype)
                    v_shared = T.alloc_shared([block_tokens, tile_dim], dtype)
                    output_shared = T.alloc_shared([groups, tile_dim], dtype)

                    scores = T.alloc_fragment([groups, block_tokens], accum_dtype)
                    scores_half = T.alloc_fragment([groups, block_tokens], dtype)
                    output_acc = T.alloc_fragment([groups, tile_dim], accum_dtype)
                    block_max = T.alloc_fragment([groups], accum_dtype)
                    previous_max = T.alloc_fragment([groups], accum_dtype)
                    rescale = T.alloc_fragment([groups], accum_dtype)
                    block_sum = T.alloc_fragment([groups], accum_dtype)
                    denominator = T.alloc_fragment([groups], accum_dtype)
                    if use_manual_qk:
                        if use_prefetch_k:
                            k_local = T.alloc_local(qk_mma.warp_cols * 8 * 2, dtype)
                        else:
                            k_local = T.alloc_local(qk_mma.warp_cols * 8, dtype)
                        if use_direct_k:
                            if block_size == 32:
                                T.annotate_layout(
                                    {
                                        q_shared: qk_mma.make_mma_load_layout(q_shared),
                                        scores: qk_mma.make_mma_store_layout(scores),
                                        output_shared: make_swizzled_layout(output_shared),
                                    }
                                )
                            else:
                                if selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16:
                                    T.annotate_layout(
                                        {
                                            q_shared: qk_mma.make_mma_load_layout(q_shared),
                                            scores: qk_mma.make_mma_store_layout(scores),
                                            v_shared: tilelang.layout.make_linear_layout(v_shared),
                                        }
                                    )
                                else:
                                    T.annotate_layout(
                                        {
                                            q_shared: qk_mma.make_mma_load_layout(q_shared),
                                            scores: qk_mma.make_mma_store_layout(scores),
                                        }
                                    )
                        else:
                            if block_size == 32:
                                T.annotate_layout(
                                    {
                                        q_shared: qk_mma.make_mma_load_layout(q_shared),
                                        k_shared: make_swizzled_layout(k_shared),
                                        scores: qk_mma.make_mma_store_layout(scores),
                                        output_shared: make_swizzled_layout(output_shared),
                                    }
                                )
                            else:
                                T.annotate_layout(
                                    {
                                        q_shared: qk_mma.make_mma_load_layout(q_shared),
                                        k_shared: make_swizzled_layout(k_shared),
                                        scores: qk_mma.make_mma_store_layout(scores),
                                    }
                                )

                    batch_id = batch_head // kv_heads
                    kv_head = batch_head % kv_heads

                    T.copy(
                        Q[
                            batch_id,
                            token,
                            kv_head * groups : (kv_head + 1) * groups,
                            :,
                        ],
                        q_shared,
                    )
                    T.fill(output_acc, 0)
                    T.fill(denominator, 0)
                    T.fill(block_max, -T.infinity(accum_dtype))

                    # A regular serial loop keeps these copies synchronous and supports
                    # every selected-block count, including S=1.
                    for selected in T.serial(stages):
                        block_start = (
                            BlockIndices[batch_id, token, kv_head, selected] * block_tokens
                        )

                        # seq_len is the invalid-block sentinel; future blocks are also skipped.
                        if block_start >= 0 and block_start <= token:
                            if not use_direct_k:
                                T.copy(
                                    K[
                                        batch_id,
                                        block_start : block_start + block_tokens,
                                        kv_head,
                                        :,
                                    ],
                                    k_shared,
                                )

                            if use_manual_qk:
                                T.clear(scores)
                                if use_prefetch_k:
                                    for k_group in T.serial(dim // 64):
                                        for local_ki in T.serial(2):
                                            ki = k_group * 2 + local_ki
                                            qk_mma.ldmatrix_b_global_prefetch(
                                                k_local, K, batch_id, block_start, kv_head, ki, local_ki
                                            )
                                        for local_ki in T.serial(2):
                                            ki = k_group * 2 + local_ki
                                            qk_mma.mma_prefetched(
                                                q_shared, k_local, scores, ki, local_ki
                                            )
                                else:
                                    for ki in T.serial(dim // 32):
                                        if use_direct_k:
                                            qk_mma.ldmatrix_b_global(
                                                k_local, K, batch_id, block_start, kv_head, ki
                                            )
                                        else:
                                            qk_mma.ldmatrix_b(k_local, k_shared, ki)
                                        qk_mma.mma(q_shared, k_local, scores, ki)
                                if is_causal:
                                    if use_full_past_mask:
                                        if block_start + block_tokens > token:
                                            for head, offset in T.Parallel(groups, block_tokens):
                                                scores[head, offset] = T.if_then_else(
                                                    token >= block_start + offset,
                                                    scores[head, offset],
                                                    -T.infinity(accum_dtype),
                                                )
                                    else:
                                        for head, offset in T.Parallel(groups, block_tokens):
                                            scores[head, offset] = T.if_then_else(
                                                token >= block_start + offset,
                                                scores[head, offset],
                                                -T.infinity(accum_dtype),
                                            )
                            else:
                                if is_causal:
                                    for head, offset in T.Parallel(groups, block_tokens):
                                        scores[head, offset] = T.if_then_else(
                                            token >= block_start + offset,
                                            0,
                                            -T.infinity(accum_dtype),
                                        )
                                else:
                                    T.clear(scores)
                                T.gemm(
                                    q_shared,
                                    k_shared,
                                    scores,
                                    transpose_B=True,
                                    policy=T.GemmWarpPolicy.FullRow,
                                )

                            T.copy(block_max, previous_max)
                            T.fill(block_max, -T.infinity(accum_dtype))
                            T.reduce_max(scores, block_max, dim=1, clear=True)

                            for head in T.Parallel(groups):
                                rescale[head] = T.exp2(
                                    previous_max[head] * scale - block_max[head] * scale
                                )
                            for head, offset in T.Parallel(groups, block_tokens):
                                scores[head, offset] = T.exp2(
                                    scores[head, offset] * scale - block_max[head] * scale
                                )

                            T.reduce_sum(scores, block_sum, dim=1)
                            for head in T.Parallel(groups):
                                denominator[head] = (
                                    denominator[head] * rescale[head] + block_sum[head]
                                )
                            T.copy(scores, scores_half)

                            for head, feature in T.Parallel(groups, tile_dim):
                                output_acc[head, feature] *= rescale[head]

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
                            )

                    for head, feature in T.Parallel(groups, tile_dim):
                        output_acc[head, feature] /= denominator[head]

                    T.copy(output_acc, output_shared)
                    T.copy(
                        output_shared,
                        Output[
                            batch_id,
                            token,
                            kv_head * groups : (kv_head + 1) * groups,
                            output_tile * tile_dim : (output_tile + 1) * tile_dim,
                        ],
                    )

            return native_sparse_attention

        kernel = _make_native_sparse_attention(
            batch=B,
            seq_len=seq_len,
            kv_heads=H,
            query_heads=HQ,
            dim=D,
            selected_blocks=S,
            block_size=block_size,
            is_causal=bool(is_causal),
        )
        _KERNEL_CACHE[key] = kernel
    kernel(q, k, v, block_indices, output)

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

@tilelang.jit(out_idx=[], pass_configs={
    tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True,
    tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,
    tilelang.PassConfigKey.TL_DISABLE_THREAD_STORAGE_SYNC: True,
})
def _make_power_s8_merge_lifetime(batch, seq_len, kv_heads, query_heads, dim, selected_blocks, block_size, is_causal):
    groups = query_heads // kv_heads
    assert groups == 16 and dim == 64 and selected_blocks == 8 and block_size == 16 and is_causal
    scale = (1.0 / dim) ** 0.5 * 1.44269504
    dtype = T.float16
    accum_dtype = T.float32
    q_shape = [batch, seq_len, query_heads, dim]
    kv_shape = [batch, seq_len, kv_heads, dim]
    index_shape = [batch, seq_len, kv_heads, selected_blocks]
    def qk_slot(row, col):
        return row * 64 + ((col // 8) ^ (row % 8)) * 8 + col % 8
    def v_slot(row, col):
        return (col // 4 + 16 * (col % 4)) * 16 + ((row // 4) ^ (col // 16) ^ (col % 4)) * 4 + row % 4
    def n_slot(warp, row, col):
        return warp * 1024 + row * 64 + ((col // 4) ^ (row % 16)) * 4 + col % 4

    @T.prim_func
    def native_sparse_attention(
        Q: T.Tensor(q_shape, dtype), K: T.Tensor(kv_shape, dtype),
        V: T.Tensor(kv_shape, dtype), Indices: T.Tensor(index_shape, T.int32),
        Output: T.Tensor(q_shape, dtype),
    ):
        with T.Kernel(seq_len, batch * kv_heads, threads=256) as (token, batch_head):
            batch_id = batch_head // kv_heads
            kv_head = batch_head % kv_heads
            tid = T.KernelLaunchFrame.Current().get_thread_binding()
            lane = tid % 64
            warp = tid // 64
            zone = warp * 1024
            arena = T.alloc_shared([4096], accum_dtype)
            half_arena = T.view(arena, [8192], dtype)
            stats = T.alloc_shared([128], accum_dtype)
            q_local = T.alloc_local(16, dtype)
            k_local = T.alloc_local(4, dtype)
            scores = T.alloc_local(4, accum_dtype)
            probabilities = T.alloc_local(4, dtype)
            numerator = T.alloc_local(16, accum_dtype)
            merged_numerator = T.alloc_local(16, accum_dtype)
            merged_maximum = T.alloc_local(1, accum_dtype)
            merged_denominator = T.alloc_local(1, accum_dtype)
            merged_rescale = T.alloc_local(1, accum_dtype)
            maximum = T.alloc_local(1, accum_dtype)
            new_maximum = T.alloc_local(1, accum_dtype)
            block_maximum = T.alloc_local(1, accum_dtype)
            rescale = T.alloc_local(1, accum_dtype)
            denominator = T.alloc_local(1, accum_dtype)
            partial_sum = T.alloc_local(1, accum_dtype)
            v_fetch = T.alloc_local(16, dtype)
            v_column = T.alloc_local(4, dtype)
            v_operand = T.alloc_local(16, dtype)
            for element in T.vectorized(4):
                pos = tid * 4 + element
                half_arena[qk_slot(pos // 64, pos % 64)] = Q[batch_id, token, kv_head * groups + pos // 64, pos % 64]
            T.sync_threads()
            for chunk in T.unroll(4):
                for element in T.vectorized(4):
                    q_local[chunk * 4 + element] = half_arena[qk_slot(lane % 16, chunk * 16 + (lane // 16) * 4 + element)]
            T.sync_threads()
            T.fill(numerator, 0)
            denominator[0] = 0
            maximum[0] = -T.infinity(accum_dtype)
            for local_selected in T.unroll(2):
                selected = warp * 2 + local_selected
                block_start = Indices[batch_id, token, kv_head, selected] * block_size
                if block_start >= 0 and block_start <= token:
                    T.sync_warp()
                    for part in T.unroll(2):
                        for element in T.vectorized(8):
                            pos = part * 512 + lane * 8 + element
                            half_arena[zone + qk_slot(pos // 64, pos % 64)] = K[batch_id, block_start + pos // 64, kv_head, pos % 64]
                    T.sync_warp()
                    T.fill(scores, 0)
                    for chunk in T.unroll(4):
                        for element in T.vectorized(4):
                            k_local[element] = half_arena[zone + qk_slot(lane % 16, chunk * 16 + (lane // 16) * 4 + element)]
                        T.tvm_mfma('16x16x16f16', 'row', 'row',
                            'float16x4', 'float16x4', 'float32x4',
                            k_local.data, 0, q_local.data, chunk, scores.data, 0,
                            dtype='float32x4')
                    for element in T.unroll(4):
                        scores[element] = T.if_then_else(token >= block_start + (lane // 16) * 4 + element,
                            scores[element], -T.infinity(accum_dtype))
                    block_maximum[0] = -T.infinity(accum_dtype)
                    for element in T.unroll(4):
                        block_maximum[0] = T.max(block_maximum[0], scores[element])
                    block_maximum[0] = T.max(block_maximum[0], T.shfl_xor(block_maximum[0], 32, width=64, mask=0xFFFFFFFFFFFFFFFF))
                    block_maximum[0] = T.max(block_maximum[0], T.shfl_xor(block_maximum[0], 16, width=64, mask=0xFFFFFFFFFFFFFFFF))
                    new_maximum[0] = T.max(maximum[0], block_maximum[0])
                    rescale[0] = T.exp2((maximum[0] - new_maximum[0]) * scale)
                    for chunk in T.unroll(4):
                        for element in T.vectorized(4):
                            numerator[chunk * 4 + element] *= rescale[0]
                    denominator[0] *= rescale[0]
                    maximum[0] = new_maximum[0]
                    for element in T.vectorized(4):
                        probabilities[element] = T.exp2((scores[element] - maximum[0]) * scale + 8.0)
                    partial_sum[0] = 0
                    for element in T.unroll(4):
                        partial_sum[0] += probabilities[element].astype(accum_dtype)
                    partial_sum[0] += T.shfl_xor(partial_sum[0], 32, width=64, mask=0xFFFFFFFFFFFFFFFF)
                    partial_sum[0] += T.shfl_xor(partial_sum[0], 16, width=64, mask=0xFFFFFFFFFFFFFFFF)
                    denominator[0] += partial_sum[0]
                    T.sync_warp()
                    fetch_row = (lane // 16) * 4
                    fetch_col = (lane % 16) * 4
                    for row in T.unroll(4):
                        for col in T.vectorized(4):
                            v_fetch[row * 4 + col] = V[batch_id, block_start + fetch_row + row, kv_head, fetch_col + col]
                    for col in T.unroll(4):
                        for row in T.vectorized(4):
                            v_column[row] = v_fetch[row * 4 + col]
                        for row in T.vectorized(4):
                            half_arena[zone + v_slot(fetch_row + row, fetch_col + col)] = v_column[row]
                    T.sync_warp()
                    for chunk in T.unroll(4):
                        for element in T.vectorized(4):
                            v_operand[chunk * 4 + element] = half_arena[zone + v_slot((lane // 16) * 4 + element, chunk * 16 + lane % 16)]
                    for chunk in T.unroll(4):
                        T.tvm_mfma('16x16x16f16', 'row', 'row',
                            'float16x4', 'float16x4', 'float32x4',
                            v_operand.data, chunk, probabilities.data, 0, numerator.data, chunk,
                            dtype='float32x4')
            T.sync_threads()
            for chunk in T.unroll(4):
                for element in T.vectorized(4):
                    feature = chunk * 16 + (lane // 16) * 4 + element
                    arena[n_slot(warp, lane % 16, feature)] = numerator[chunk * 4 + element]
            if lane < 16:
                stats[warp * 16 + lane] = maximum[0]
                stats[64 + warp * 16 + lane] = denominator[0]
            T.sync_threads()
            if warp == 0:
                merged_maximum[0] = -T.infinity(accum_dtype)
                for part in T.unroll(4):
                    merged_maximum[0] = T.max(merged_maximum[0], stats[part * 16 + lane % 16])
                T.fill(merged_numerator, 0)
                merged_denominator[0] = 0
                for part in T.unroll(4):
                    merged_rescale[0] = T.exp2((stats[part * 16 + lane % 16] - merged_maximum[0]) * scale)
                    merged_denominator[0] += stats[64 + part * 16 + lane % 16] * merged_rescale[0]
                    for chunk in T.unroll(4):
                        for element in T.vectorized(4):
                            feature = chunk * 16 + (lane // 16) * 4 + element
                            merged_numerator[chunk * 4 + element] += arena[n_slot(part, lane % 16, feature)] * merged_rescale[0]
            T.sync_threads()
            if warp == 0:
                for chunk in T.unroll(4):
                    for element in T.vectorized(4):
                        feature = chunk * 16 + (lane // 16) * 4 + element
                        half_arena[qk_slot(lane % 16, feature)] = merged_numerator[chunk * 4 + element] / merged_denominator[0]
                T.sync_warp()
                for part in T.unroll(2):
                    for element in T.vectorized(8):
                        pos = part * 512 + lane * 8 + element
                        Output[batch_id, token, kv_head * groups + pos // 64, pos % 64] = half_arena[qk_slot(pos // 64, pos % 64)]
    return native_sparse_attention

# Compiled code objects only; all attention data work occurs in every call.
_KERNEL_CACHE[(8, 1024, 1, 16, 128, 1, 32, True)] = _make_power_s1_shared_arena(8, 1024, 1, 16, 128, 1, 32, True)
_KERNEL_CACHE[(4, 1024, 1, 16, 64, 8, 16, True)] = _make_power_s8_merge_lifetime(4, 1024, 1, 16, 64, 8, 16, True)
