# v057: case6 proven bounded K/V access

Observed evidence: own v049 C6 generated device has K/V padding guards inside an explicit valid-block branch; resources76MT/26ST/stack0/shared8192B. Own v056 C12 proves in-range blocks and removes equivalent redundant guards, yielding repeated paired7.688/8.375% target gains, despite more registers. Fresh profiler captures in v056 have inconsistent wave/output footprints; their counters are unusable for bottleneck attribution.
Verified bottleneck: no unique C6 bottleneck established; redundant generated memory predicates are independently visible.
Current hypothesis: removing equivalent proven-redundant C6 memory predicates can lower address/control overhead, with scheduling/register tradeoffs decided by full native time.
Mechanism: prove complete C6 pointer domains before disabling TL_DISABLE_SAFE_MEMORY_ACCESS only for the own exact C6 factory. Preserve QK/PV, softmax, data layouts, synchronization and explicit block-valid/causal guards. Preserve exact original v28 entry/prefix and the own unchanged v056 C12 helper.
Predictions: remove per-K/V padding guards; logical bytes/MMA/launch geometry unchanged. Resources and timing are empirical.
Falsifier: domain proof fails, guards persist, native reference fails, formal C6 does not improve current v056, or an official non-target regresses. Pending OJ never establishes no regression.
Risks: disabling legalization affects every access in the factory; explicitly prove globals/shared/local/fragment bounds, invalid selected blocks, and compile-domain divisibility. Full naive_nsa/official shapes/seed/warmup10/repeat50 remain required. No async/source injection/manual backend builtins.
