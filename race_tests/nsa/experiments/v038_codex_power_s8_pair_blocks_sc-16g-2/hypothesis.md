# v038 hypothesis / sc-16g-2

Observed evidence: independent v032 case12 paired92.403us vs v28 83.689us, despite shared conflict1.03 vs2.82. Per-selected-block online loop repeats max/sum reductions, probability conversion, rescaling, shared staging and fences8times.
Verified bottleneck: scalar/reduction overhead is present in code; exact latency share not isolated. Better shared counters alone failed to win.
Hypothesis: combine two selected blocks into a32-token logical tile, run only4online updates, same arithmetic, reduce loop/reduction/fence cost.
Mechanism: gather each block into K32x64/V32x64 two16-row planes, scores16x32 (8FP32/lane), joint max/sum and adaptive exponent anchor; PV normal TileLang GEMM with batched operands. Invalid/future blocks individually masked; skip pairs with neither valid. Existing independently developed registerQK helper supplies math, no original optimized implementation read.
Predictions: pair loop4iterations, reductions/fences halved, no traffic/output-content cache, correctness PASS. Native12 must beat v28 approx84us; all non-target AST preserved. More shared/registers may reduce scheduling capacity; profile/compile first.
Falsifier: correctness fails, spills, or native remains slower than exact v28.
Identity: start8cafd9e10, sc-16g-2 main repo branch codex-power-v28-base. Candidate/tmp/nsa_power_v038_pair_blocks.py; firstline codex-power v038, exact3imports, no async/injection. Native runner/officialshape/naive_nsa/W10R50 unchanged. Fresh S8 baseline profile required if screening promising; previous current baseline at v032 retained by path/hash, no copied input.
