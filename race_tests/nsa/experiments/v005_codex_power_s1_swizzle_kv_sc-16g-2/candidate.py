import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout


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
    use_swizzle = selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16
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
            q_shared = T.alloc_shared([groups, tile_dim], dtype)
            k_shared = T.alloc_shared([block_tokens, tile_dim], dtype)
            v_shared = T.alloc_shared([block_tokens, tile_dim], dtype)
            output_shared = T.alloc_shared([groups, tile_dim], dtype)
            if use_swizzle:
                T.annotate_layout({k_shared: make_swizzled_layout(k_shared), v_shared: make_swizzled_layout(v_shared)})

            scores = T.alloc_fragment([groups, block_tokens], accum_dtype)
            scores_half = T.alloc_fragment([groups, block_tokens], dtype)
            output_acc = T.alloc_fragment([groups, tile_dim], accum_dtype)
            block_max = T.alloc_fragment([groups], accum_dtype)
            previous_max = T.alloc_fragment([groups], accum_dtype)
            rescale = T.alloc_fragment([groups], accum_dtype)
            block_sum = T.alloc_fragment([groups], accum_dtype)
            denominator = T.alloc_fragment([groups], accum_dtype)

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
                    T.copy(
                        K[
                            batch_id,
                            block_start : block_start + block_tokens,
                            kv_head,
                            :,
                        ],
                        k_shared,
                    )

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
    # out_idx=[] makes the caller-provided output buffer an ordinary kernel argument.
    kernel(q, k, v, block_indices, output)
