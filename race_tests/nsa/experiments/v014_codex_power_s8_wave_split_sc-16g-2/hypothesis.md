# v014: two independent waves over selected blocks, followed by softmax merge

Parent: f15e82e0c13083ecfa253e43ea07c4ea254dc973 on codex-power. Machine: sc-16g-2, C500, 16G sGPU. Candidate derives from this branch's independent power v013. No previous team optimized NSA kernel is read or copied. v028 is a benchmark target only; its commit/hash are recorded in the matched comparison report.

Observed evidence: matched case12 medians are v028 83.7195 us and power v013 117.0305 us. Fresh mcProfiler confirms 4096 dispatched waves, L2 hit 94.98%, MMA duty 7.87-7.88%, MTE duty 54.01-54.09%, load latency 44.04-44.05 cycles. Generated v013 code processes eight selected blocks serially per one-wave program. Framework AllReduce uses wave shuffles for a 64-thread reduction. Fresh mcTracer timed out before producing valid JSON; historical AST-equivalent v010 device median is 113.792 us. The failed trace is retained and not used as new timing evidence.

Verified structure: each token has eight independent QK/softmax/PV block contributions with sequential online accumulation. Hypothesis: the serial dependency and wave scheduling leave useful overlap available; low MMA duty alone is not proof of a compute bottleneck.

Mechanism: two 64-thread waves each process four alternating selected blocks, retaining direct-register Q/K MFMA and vectorized per-wave V staging in shared. Merge two FP32 unnormalized output accumulators with their softmax maxima and denominators. One GPU launch. Preserve other shapes from power v013. Three allowed imports only; no custom class, async copy or foreign source.

Predictions: 8192 dispatched waves, four selected-block rounds instead of eight, larger shared footprint for partial outputs/stats, latency below v013. Ultimate target: beat v028 at 83.7195 us. Risks: cross-wave reduction inference, divergent CTA barriers, merge cost, occupancy, numerical tolerance after changing accumulation order.

Falsifiers: compile/layout failure, CTA barriers inside wave-divergent work, naive_nsa reference or OJ static failure, scalar V global loads, more spills, or no paired latency improvement. Inspect codegen before launching, then project-native reference/timing. A local gain that still loses to v028 is not task completion; final promotion requires all 14 cases and no regression against v028.

## Layout diagnostic before the second screen

The first candidate passes case12 reference at 186.824 us. Codegen confirms wave-local AllReduce64 and vectorized uint4 V loads, but FP32 partial_output is row-major: row stride 64 floats maps sixteen head rows to the same bank group during float4 fragment stores. Hypothesis: swizzle this shared partial-output layout while leaving arithmetic, wave splitting, V staging and CTA synchronization unchanged. Predict higher shared nonconflict efficiency and lower latency; no improvement falsifies the merge-layout explanation. The first source, codegen and screen are retained as candidate_cta_linear / codegen_cta_linear / screen_cta_linear. A matched mcProfiler run is live for that fixed source.

## Synchronization diagnostic before the third screen

Partial-output swizzle passes reference and lowers latency from 186.824 to 179.082 us, insufficient against v013. Linear variant profiler confirms 8192 waves but MMA duty falls to 4.69%, MTE duty to 35.10-35.12%, shared nonconflict efficiency 56.85% and conflict penalty 2.25 cycles. The V planes are disjoint by wave, while codegen contains three CTA barriers per four-block round (two explicit, one automatic). Unlike v013's single-wave CTA, these barriers force both independent waves to rendezvous.

Hypothesis: use explicit wave synchronization for V production/consumption and disable automatic thread-storage barriers for this specialized function. Keep an explicit CTA barrier before any final partial-output stores (protect shared lifetime reuse), after partial outputs/stats and after merge weights. AllReduce64 remains register shuffle. Predict fewer cross-wave waits and reduced elapsed time without changing arithmetic or memory layout. Falsifiers: generated divergent/missing required sync, reference failure, or no improvement. Verify per-wave V address ranges and final merge barriers before launching.
