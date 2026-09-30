# v019: single-wave S1 with sequential 64-feature output tiles

Parent is v018 rejectionfcc65ae8b on codex-power. Source base: best independent v016, with unchanged case6 path inherited from power v013. Target case6 matched v028156.639 us versus power v013159.813 us. No previous team optimized kernel is consulted/copied.

Observed evidence: power case6 uses128 threads, two waves and shared FP16 scores to connect QK and PV layouts. Black-box v028 profile reports8192 waves versus our16384 for the same8192 query programs; this does not identify its implementation. QK has16 heads,32 tokens and128 features. One64-thread wave is legal for the16x32 score tile. A16x64 PV output accumulator needs16 FP32 values per lane, while16x128 needs32. Shared probability bridging is unnecessary when producer/consumer both use one wave.

Hypothesis: keep full128-feature QK once per query, normalize the32-token FP32 probabilities once and retain FP16 scores in registers. Then compute two64-feature PV/output passes in the same CTA using a32x64 V tile and16x64 FP32 accumulator. No repeated QK and no extra GPU launch. Expected8192 dispatched waves, lower output register live size than a full128-feature single-wave output, no shared-score bridge or cross-wave softmax reduction. Q/K input features are not truncated.

Risks: sequential PV cost, shared lifetime reuse, register/layout inference, global output coalescing, FP16 probability rounding and maintaining invalid-block semantics. Use ordinary T.copy/T.gemm and default synchronization, three exact imports, no custom class/async/foreign source. Header # codex-power v019.

Falsifiers: compiler layout failure or spills, unexpected extra work/launches, original naive_nsa or static rules fail, or no reproducible case6 improvement versus v016/v028. Inspect codegen/resources, then native case6 screen and matched comparison if improved. Case12 remains the own v016 path and still needs improvement; full14/no regression versus v028 is required before final promotion.
