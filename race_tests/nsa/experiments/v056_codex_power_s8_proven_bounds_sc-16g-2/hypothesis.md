# v056: case12 proven bounded accesses

Observed evidence: own v050 single-wave kernel retains per-K/V load upper-bound guards in generated code, even under uniform block_start>=0 and block_start<=token. Its native median86.976us versus v28 83.374us, 62MT/28ST/stack0/shared2048B. Latest fresh v055 incumbent profiler has invalid launch footprint, so no new reliable counter bottleneck classification is available.
Verified bottleneck: no unique bottleneck established; generated redundant memory predicates are independently visible.
Current hypothesis: eliminating predicates for algebraically proven in-range accesses may reduce address/control overhead and register pressure without changing data or attention math.
Proposed mechanism: set TL_DISABLE_SAFE_MEMORY_ACCESS only in the own exact case12 factory, after a full pointer-domain proof. Keep explicit selected-block guard, causal score mask, normalizer, layouts and all synchronization unchanged. Keep the same original v28 entry/cache interface and v049 C6 helper.
Predicted metrics: K/V padding guards removed in generated code; logical bytes/MMA/launches unchanged. Resources and latency are empirical, not predeclared wins.
Falsifier: proof fails, generated code retains guards, native correctness fails, target formal time fails to beat original v28, or any other official case regresses. Pending OJ cannot establish no regression.
Correctness/resource risks: disabling legalization affects all accesses within this factory, requiring proof for Q/K/V/Indices/shared/output and invalid selected blocks; possible compiler scheduling/MT changes. Full project naive_nsa W10/R50 is the native gate. No async copy, source injection or manual backend builtin calls.
