# v060: output staging pair swap

Observed evidence: own v059 C6 paired106.1275us versus v057109.581us and original v28156.4745us. Scope-consistent fresh counters show residual shared conflict1.25/load48cycles after Q/K pair swap. Current output8B stores still map heads differing by8 to the same modeled bank pair. Counters are kernel-wide, not output-exclusive attribution.
Hypothesis: reuse the proven Q/K16x128 pair-swap mapping for output staging, preserving the global16B store through local8-half gathering, to reduce modeled output bank duplication.
Mechanism: explicit per-lane8 chunks of4half shared stores from the same fragment values, then two8B shared gathers into8half local buffer and one16B global store per part. Preserve v059 Q/K/V,math,normalization,masks,sync,proven bounds,8192B arena and own v056 C12 helper.
Predictions: output producer8x8B/lane unchanged; shared gather4x16B->8x8B/lane; global store4x16B/lane unchanged; bytes/launch/MMA unchanged. Resources and actual bank behavior empirical;32banks/4B/16lane model remains a hypothesis.
Falsifier: coverage/fragment ownership/alignment fail, codegen loses8B/16B vector widths, native reference fails, paired C6 fails to improve v059, or another official regresses. Missing OJ never establishes global no-regression.
Risks: local gather allocation/register pressure and extra read instructions, explicit fragment indexing/compiler lowering,incorrect model assumptions. Full unchanged project naive_nsa/official shapes/seed0/warmup10/repeat50; three exact allowed imports, normal TileLang primitives only.
