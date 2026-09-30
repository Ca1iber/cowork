# v015 explicit vectorized one-pass gather: rejected

Parent c772cb8f586193c59257cacb9e3e46d57c84ad6b; source starts from independent power v013 on codex-power. No previous team optimized kernel is read or copied. Exact source starts with # codex-power v015 and only the three allowed imports.

## 1. Prior issue
Case12 v013 loses to v028117.0305 versus83.7195 us. The v014 wave-split/merge direction is rejected at173.245 us or slower.

## 2. Hypothesis
Aggregate128 selected token rows into one QK, global softmax and one PV. Fewer online-rescale operations may repay the larger shared tile and cross-wave reduction. Prior broad gather failures were not treated as permanent bans; this configuration requires verified16-byte K/V loads.

## 3. Mechanism
Four64-thread waves,16x128 QK and16x64 PV. Each lane has8 score and4 output FP32 entries. Softmax probabilities are normalized before FP16 conversion. Explicit synchronous barriers protect operand staging and shared lifetime reuse.

## 4. Implementation
The source is built by gather_once_function.txt and build_candidate.py. Codegen confirms four uint4 gather rounds each for K and V, no scalar global half gather, legal two-stage GEMM mapping, and22528B dynamic shared memory. Buffers reuse K storage for V, reduction workspace for Q, and output staging after PV. AllReduce256/64 and explicit barriers are outside data-dependent branches. MXCC reports60 MT/42 ST registers,0B stack, staticMaxWarps/PEU8.

## 5. Benchmark
Original naive_nsa reference and project-native warmup10/repeat50, official case12 B4/L1024/H1/HQ16/D64/S8/BS16 causal FP16: PASS167.117 us. Prior matched medians v013117.0305 us, v02883.7195 us. Exact candidate source and device C++ pass static OJ checks. This is a negative target screen; full14 and OJ were not run.

## 6. Profile
Fresh profile of this rejected configuration was not collected; profiler/Roofline/ISA availability is stated in UNAVAILABLE_FULL_PROFILE.md. The expected vectorized load and small register arrays did materialize, but they do not prove a throughput benefit. The contribution of22KB shared residency, cross-wave reductions and generic GEMM staging remains unverified.

## 7. Conclusion
Reject the four-wave dense-gather configuration. Next direction: return to v013 and independently change only V-shared bank mapping, derived from its generated native MFMA B-load addresses. No partial-output merge or dense128-token scratch is required.
