# v022 fully past block initializer: local microgain, target not met

## 1. Prior issue
Case6 own v021158.3715 us loses to prior matched v028157.3505 us.
## 2. Hypothesis
When token>=block_start+31 every original causal initializer is zero. One scalar full-block check can replace512 element comparisons/selects.
## 3. Mechanism
Only the constexpr case6 path skips per-element causal initialization for complete past blocks; T.clear(scores) remains. Partial blocks and other paths use exact previous logic.
## 4. Implementation
Codegen explicitly has token<block_start+31 mask branch and zero float4 initializer else. No added memory; resources46 MT/26 ST,0B stack,staticMaxWarps8. Source/header/import/generated static gate passes.
## 5. Benchmark
Native exact naive_nsa/warmup10 repeat50, three-source symmetric sequence x4:24/24 PASS. Medians v021158.162 us, v022157.6295 us, v028156.8615 us. Own gain0.34%, target still0.49% faster. Single screen157.645 us. No broad no-regression or OJ win is claimed.
## 6. Profile
No new counter bundle after failed target; model contribution remains unverified. Missing evidence explicitly listed.
## 7. Conclusion
Keep as own search checkpoint, do not promote final submission. Next case12 mechanism is cooperative vectorized K staging into a small shared tile while retaining cached Q registers and all arithmetic.
