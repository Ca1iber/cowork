# v020 case6 score-bridge layout: target not met

## 1. Prior issue
Own case6 about159.813 us versus v028156.639 us; single-wave feature tilingv019 failed225.075 us.
## 2. Hypothesis
From own generated bridge addresses, a32-bank/4-byte/16-lane/8-byte-vector model predicts default layout two distinct words per bank and proposed layout one. This is not a hardware guarantee.
## 3. Mechanism
Only shared16x32 FP16 probability-bridge mapping changes. Proposed col=4*((col//4) XOR(row//2))+col%4, a bijection preserving four-half vectors. Original128-thread geometry and math retained.
## 4. Implementation
Generated device diff has only bridge store and PV A-load addresses changed. Both remain uint2 vectors; MXCC46 MT/24 ST,0B stack,staticMaxWarps8. Source starts v020 and imports only three allowed forms.
## 5. Benchmark
Native naive_nsa/warmup10 repeat50 case6: PASS159.002 us. No matched target win over v028156.639 us is claimed; small historical difference versus own159.813 us is insufficient to call a win. Static source/generated checks pass.
## 6. Profile
No new profiler or achieved-occupancy claim. The bank prediction's counter movement remains unvalidated; missing evidence is explicit. Full14/OJ not run after failed target screen.
## 7. Conclusion
Do not promote. Next tested mechanism should move single-block normalization before PV on the original two-wave geometry, reducing normalization work from2048 output elements to512 score elements while preserving established layout.
