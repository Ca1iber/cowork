# v019 single-wave case6 feature tiles: rejected

## 1. Previous issue
Case6 power v013/v016159.813 us loses to v028156.639 us in prior matched testing. Own path has128 threads and a shared-score bridge.

## 2. Hypothesis
One64-thread wave computes full128-feature QK once, keeps32-token probabilities in registers and streams two64-feature PV/output tiles. Smaller accumulators and no cross-wave reduction may help.

## 3. Mechanism
Q/K shared tensors retain128 features; V/output have64 features per pass. Normalize FP32 probabilities before FP16 PV, use one launch and two sequential output passes. Invalid block output is NaN like empty reference attention. Three imports, no custom class/async, header v019.

## 4. Implementation
Codegen confirms QK K-loop8, PV K-loop2 and output-tile loop2, score8 FP32 and score-half8 FP16 entries per lane,16 output FP32 entries. MXCC52 MT/24 ST,0B stack,staticMaxWarps8. Sources/codegen satisfy static OJ rules.

## 5. Benchmark
Exact original naive_nsa/native warmup10 repeat50 on official case6 B8/L1024/H1/HQ16/D128/S1/BS32 causal FP16: PASS225.075 us. It clearly fails the prior own/v028 targets; no paired positive verdict is claimed.

## 6. Profile
No new counter/tracer bundle after negative target screen. Lower register size did not produce lower latency; sequential output cost and shared/global scheduling contributions remain unverified. Missing evidence is listed explicitly.

## 7. Conclusion
Reject single-wave sequential feature tiling. Next inspect the existing128-thread score-bridge layout and change only its physical bank mapping, preserving established QK/PV work geometry.
