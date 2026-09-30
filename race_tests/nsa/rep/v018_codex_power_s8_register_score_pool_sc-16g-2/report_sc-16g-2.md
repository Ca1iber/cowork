# v018 register score pool: rejected

## 1. Prior issue
Case12 independent v016114.7775 us loses to v02883.8065 us; current-block prefetchv017 fails117.012 us.

## 2. Hypothesis
Keep128 scores in registers and perform one max/sum, removing seven online-stat updates and per-block output rescaling. Shared V remains16x64, rather than dense128x64.

## 3. Mechanism
One64-thread wave with32 FP32 score and32 FP16 exponential entries per lane. Direct-register QK and streamed PV use allowed MFMA. Divide output by the global denominator once. No extra launch, async or custom class; three imports and v018 header.

## 4. Implementation
Codegen materializes the pool and two AllReduce calls outside the selected-block loops. V global accesses remain uint4, shared allocation stays small. Compiler reports102 MT/60 ST,0B stack,staticMaxWarps4. Removing forced block-loop unrolling gives the same unfavorable resource footprint; that diagnostic is not timed.

## 5. Benchmark
Native original naive_nsa and warmup10/repeat50 for official case12: unrolled PASS132.746 us, slower than both v016 and v028. Both source/codegen snapshots pass static OJ rules. Serial correctness/performance and full14 are not claimed.

## 6. Profile
No new counter bundle after target failure. The predicted reduction/rescale structure materializes but register cost rises substantially, so no elapsed benefit. Resource pressure is a hypothesis for the loss, not a measured achieved-occupancy claim. Missing evidence is explicit in UNAVAILABLE_FULL_PROFILE.md.

## 7. Conclusion
Reject this full register pool. Next focus is case6 output-feature tiling: one wave, two64-feature PV/output passes, one QK and register probability bridge. Case12 alternatives remain available; no goal completion or v028 replacement is claimed.
