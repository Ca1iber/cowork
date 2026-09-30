# v021 single-block score normalization: local gain, target not met

## 1. Previous issue
Own case6 is slower than v028. Output feature tiling and bridge-only mapping do not establish target wins.
## 2. Hypothesis
Normalize512 FP32 score elements before PV rather than2048 output elements after PV for S1/BS32/D128/G16, keeping original two-wave work geometry.
## 3. Mechanism
Only the case6 constexpr path normalizes scores before FP16 bridge conversion and skips valid-block final output division. Invalid block retains original empty-attention NaN normalization through a scalar validity guard. Probability rounding changes and is gated by reference.
## 4. Implementation
Generated code has four score divisions per lane; valid output skips16 final divisions. Original Q/K/V,128 threads and shared bridge retained. Resource46 MT/26 ST,0B stack,staticMaxWarps8. Exact imports/header and generated source pass static checks. Case12 helper AST matches own v016; no new case12 timing is claimed.
## 5. Matched benchmark
Native naive_nsa/warmup10 repeat50, symmetric three-source case6 sequence repeated twice12/12 PASS. Medians: v016160.200 us; v021158.3715 us; v028157.3505 us. v021 gains1.14% over own parent but is0.65% slower than v028. Single screen158.346 us. Source hashes are captured before runs.
## 6. Profile
No new counters after target gate failure. Codegen confirms intended normalization-work movement with no MT growth, but specific hardware contribution is unverified. Missing full14/OJ/profile evidence is explicit; no broad no-regression verdict is claimed.
## 7. Conclusion
Keep the own local checkpoint for continued work, not final OJ promotion. Case6 remains slightly slower and case12 own best remains significantly behind v028. Continuation_state.json records exact current sources, constraints and viable next directions. Root submission remains historical v013.
