# v015: vectorized dense gather, one softmax, one PV

Parent c772cb8f586193c59257cacb9e3e46d57c84ad6b on codex-power. Source base: best independent power v013 (e51d49834fdf06bb02f4c7c2ea0bc2bbc9d6a95b81578e58c2317eee0bdfbe76). Machine sc-16g-2 C500 16G sGPU. No prior team optimized NSA code is consulted; v028 is the measured target, not an implementation template.

Observed evidence: case12 v013 117.0305 us versus v028 83.7195 us. Fresh v013 L2 hit94.98%, MMA duty7.87-7.88%, MTE54.01-54.09%. The v014 two-wave partial-output strategy fails at173.245-186.824 us despite uint4 V global loads; its duplicated-wave/merge traffic and communication did not repay the shorter loop. Prior broad one-pass trials were rejected, but do not falsify this specific vectorized copy and four-wave tile mapping; generated code must verify the difference.

Verified structure: S8/BS16 gives at most128 token contributions. The exact reference performs a single softmax over these contributions. v013 computes eight separate matrix pairs and repeated rescaling. Hypothesis: gather128 K/V token rows with explicit 8-half contiguous copies, then compute a [16,128] QK tile, one global softmax and one [16,64] PV tile. This avoids seven online-output rescalings and any partial-output merge.

Geometry: 256 threads / four64-thread waves. QK N128 yields32 columns per wave, PV N64 yields16 columns per wave, both legal MFMA sizes. Score accumulator is8 FP32 entries per lane; output is4. Four copy rounds with256 threads x8 half values cover the128x64 K or V tile. Predicted generated global loads are uint4 rather than scalar half; compute forms two GEMM stages. Shared-memory footprint and cross-wave softmax are the key risks.

Mechanism: Q/K/V use allowed TileLang shared/fragment buffers and T.gemm, three exact allowed imports. Softmax normalizes FP32 probabilities before FP16 PV conversion. Explicit synchronous barriers coordinate operand staging and output lifetime reuse; disable automatic storage barriers only for this specialized helper after codegen inspection. No async copy, foreign source, Torch GPU computation or custom class.

Falsifiers: illegal tile/layout, scalar global gathers, insufficient/misplaced barriers, spills or excessive shared residency cost, exact naive_nsa reference failure, import/generated compliance failure, or no paired latency improvement. Inspect generated code before GPU launch, then native case12 screen. A local improvement still slower than v028 does not complete the goal. Final promotion requires all14 reference and no regression against v028, including case6.
