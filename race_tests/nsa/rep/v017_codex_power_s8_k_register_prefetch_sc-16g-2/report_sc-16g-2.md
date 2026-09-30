# v017 current-block K register prefetch: rejected

## 1. Prior issue
Independent v016 case12 median114.7775 us still loses to v02883.8065 us. Fresh v016/v028 profiles and lowered LLVM motivate operand-feed investigation.

## 2. Hypothesis
The existing four K loads are interleaved before four dependent QK MMA calls. The loop is already unrolled in LLVM. Explicitly stage all four chunks before compute to expose memory overlap without relying on a mere unroll pragma.

## 3. Mechanism
A16-half K-local buffer, unrolled load loop followed by unrolled compute loop. Chunk accumulation order0,1,2,3 and other paths remain unchanged. Only three allowed imports; source begins # codex-power v017.

## 4. Implementation
Generated C++ and LLVM IR confirm all four chunks are loaded before first QK MMA. Resource usage remains66 MT/28 ST,0B stack,staticMaxWarps7. Exact comparison with immediate v016 confirms five static CTA barrier sites and2560B dynamic shared in both. An initial visual comparison to an earlier baseline suggested an extra barrier; the immediate-parent diff disproves that and the hypothesis document is corrected. Patch and IR are archived.

## 5. Benchmark
Native _run_one_case with full naive_nsa reference and warmup10/repeat50; case12 B4/L1024/H1/HQ16/D64/S8/BS16 causal FP16: PASS117.012 us. Prior matched local v016114.7775 us and target v02883.8065 us. No positive performance verdict is based on this single screen. Source and generated C++ pass static OJ checks.

## 6. Profile
No fresh counter/tracer/roofline bundle is justified after the negative target screen; availability is recorded. The intended source/LLVM dependency change does materialize and no register growth is reported, but no elapsed-time benefit appears. Actual ISA scheduling and the relative memory/control costs remain unverified.

## 7. Conclusion
Reject current-block prefetch for this configuration. Next direction: issue next-block K reads while computing current softmax/PV, creating actual independent work between prefetch and consumption. This is a synchronous TileLang register pipeline, with loop-carried register/resource cost to verify.
