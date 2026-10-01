# v058: four-row packed V planes after proven-bounds legalization

Observed evidence: v057 C6 paired110.0185us vs v28157.294us,92MT/22ST/stack0/shared8192B. Fresh internally consistent counters show shared nonconflict60.49-60.50%,conflict2.21/load64.80-65.49cycles, versus v2889.19%/0.36/38.20-38.24. Actual PV operand requires two4B reads. Counts are kernel-wide; no exclusive PV bottleneck proven.
Prior observation: own v055 four-plane packing under retained K/V memory predicates had no stable incremental benefit. New v057 removes those predicates and improves27% over the same old helper. Revisit only this changed scheduling condition; do not assume historical success or bank-model throughput.
Hypothesis: four-row packing reduces PV operand and producer shared instructions enough to offset doubling global producer load instruction count when predicates are removed.
Mechanism: four disjoint16token x64feature V planes,4x4 producer and contiguous four-half8B operand. Preserve v057 math,QK,explicit masks,sync,arena8192B and the unchanged own v056 C12 helper.
Predictions: per-lane PV shared operand loads32->16; producer shared stores32->16; global loads8x16B->16x8B; bytes/MMA/launch geometry unchanged. Resource allocation and bank effects must be measured, not inferred from a model.
Falsifier: coverage/bounds/vector lowering fail, native reference fails, formal C6 fails to improve v057, or another official case regresses. Missing OJ cannot verify global no-regression.
Risks: physical-layout bijection/alignment,transposition,private allocation/register pressure,global issue overhead. Full project naive_nsa/official shapes/seed0/warmup10/repeat50; only three exact allowed imports and normal TileLang primitives.
