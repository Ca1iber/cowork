# v017: explicitly stage four K register chunks before QK MFMA

Parent is v016 local-gain checkpoint4b61663d3 on codex-power. Candidate base is its exact independent candidate, matched at114.7775 us against power v013116.961 and v02883.8065. Target case12 remains v028; no previous team optimized source is consulted or copied.

Evidence: fresh matched v016/v028 mcProfiler shows same4096 waves, but MTE49.14-49.19 versus62.92-63.01% and MMA8.07-8.08 versus11.10-11.11%. v028 is faster despite worse reported shared conflicts and average load latency. The V-layout bank prediction was not supported by shared-counter movement. Lowered LLVM IR from our kernel already contains four expanded QK MMA calls, but K operand loads are interleaved before each dependent MMA. This identifies a source-level dependency pattern, not proof of the machine's exact schedule or a critical stall.

Hypothesis: stage all four FP16x4 K chunks in a16-half per-thread local buffer before issuing four dependent MFMA operations. Explicit unrolled load and compute loops expose independent memory operands; normal synchronous TileLang reads only. Q remains cached in registers, V layout/math/grid/mask/online softmax/output and other official cases retain v016.

Predictions: four generated uint2 K loads precede the four QK MMA calls; no additional global bytes, shared buffers or barriers. More K registers may lower static wave capacity. MTE overlap can improve elapsed time despite unchanged per-load latency. A mere already-present loop unroll is not claimed as the mechanism.

Falsifiers: compiler restores the old interleaving, spills/resource growth outweighs overlap, reference or exact three-import/generated static checks fail, or paired latency does not improve. Preserve chunk0,1,2,3 accumulation order. If full prefetch pressure is excessive, a separately recorded two-chunk diagnostic must have a register/overlap hypothesis before editing.

Gate: inspect generated/LLVM code and resource report before launch, original native case12 correctness/timing, matched v016 and v028 if improved, then all14 before final promotion. Header # codex-power v017. No custom class, async copy, foreign source or Torch GPU computation in submitted logic. Current goal is not complete while candidate loses to v028 or regresses another case.

## Generated-stage observation before first timing

The four K-vector reads now precede the QK MFMA loop in generated C++, with original chunk order preserved. MXCC remains66 MT/28 ST registers,0B stack,staticMaxWarps7: no observed register penalty. Direct comparison with the immediate v016 parent confirms five static CTA barrier sites and2560B dynamic shared in both versions. An initial visual comparison against the original v013 code suggested an added barrier, but the exact-parent diff disproves that: barrier placement and shared size are unchanged. The first screen is117.012 us and passes reference, slower than the v016114.7775 us matched median.
