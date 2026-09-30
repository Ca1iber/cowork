# v022: initialize fully past case6 scores without per-element masking

Parent361be9efedc8ac792ca75bfefe610a1584ab1499 on codex-power. Base is exact own v021. Case6 matched medians v021158.3715 us, v028157.3505 us; target remains v028 and full14 no regression. No previous optimized team implementation is consulted/copied.

Observed source: generic case6 initializes all512 score elements with token >= block_start+offset before QK. If token >= block_start+31, all comparisons are true. A scalar complete-block test can select zero initialization. Partial blocks retain exact original mask. This is a semantic observation; no hardware bottleneck claim is made from it alone.

Hypothesis: only the constexpr S1/BS32/D128/G16 path skips per-element mask for a fully past block, preserving T.clear(scores). QK, early probability normalization, geometry, bridge and other paths retain v021. Prediction: one scalar block test replaces mask comparisons/selects on the common complete-block path; no extra memory/buffers/launches. Risks: branching cost, no actual gain, or incorrect partial-block handling. Import/header/static/reference gates apply before matched benchmark.

Falsifiers: missing zero initializer, reference failure, lowering fails to separate full/partial path, resource/latency regression or no target improvement. Header # codex-power v022; exact three imports, no class/async/foreign source. Case12 remains own v016 and still needs work; final promotion requires full14 and no regression versus v028.
