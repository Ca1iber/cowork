# v039 hypothesis / sc-16g-2

Evidence: v038 merged32token score tile has98MT/max4/shared10KB and native142.367us; independent v03216-token QK has70MT/max7/shared4608B and matched92.403us vs v28 83.689us. Thus lowering overhead by growing FP32 score tile failed. Current root rollback14/14PASS, source42911561. Container hostname changed; refresh hardware and incumbent profile before relying on past absolute timings.
Verified mechanism cost: per-block parent performs8max and8sum reductions and up to8output/denominator rescale phases. Their time shares remain hypotheses.
Hypothesis: retain16-token QK score footprint, cache two4-half probability operands/lane, combine local sums before one warp sum, and defer old output/denominator scaling until both blocks evaluated. Four sum reductions/output updates, still8max reductions. No larger K/V shared tiles.
Prediction: resource near parent70MT rather than98, maxWarps above4, shared near4608B; native12 must beat fresh exact v28. Extra FP16 rescaling can add one rounding step; correctness gate mandatory.
Falsifier: spills, reference failure, or native does not beat baseline. No score-content cache, allwork timed, othercases fallback AST unchanged. Probability anchor monotone, rescale<=1; invalid blocks individually skipped, cached halves initialized0eachpair, allinvalidpairs skipped.
Implementation planned: two sequential QK stages perpair; per-lane local sums weighted by each new anchor, final one reduce_sum; product old-accumulator rescale applied once; normal per-block PV after masks/scales, Warp fences around every reuse. Native TileLang primitives only, exact3imports, firstline codex-power v039.
Identity: startced26b351, branch codex-power-v28-base, sc-16g-2 mainrepo. Candidate/tmp/nsa_power_v039_deferred_sum.py; shared baseline39ff49e7b42911561. No old optimized kernel algorithm read.

Fresh incumbent confirmation before edits: two valid S8 samples,4096waves, MMA11.08%, MTE62.80%, L2hit91.66%, shared efficiency48.43%, conflict2.81/2.82. This agrees with historical counters but is not a hardware bandwidth roof.
