# Leader review: worker1 v100 case12 plan

Evidence reported by worker1 from fresh parent v084 profile: 4096 dispatched waves; output writes 8,388,928 B (8 MiB payload plus 320 B unattributed); reads 9,557,408 B; L2 87.43%; shared non-conflict 100%, conflict zero; WG-load 50.42/50.39 cycles; MTE 74.88/75.11%; MMA 12.92/12.96%. Resources: 80 MT, 22 ST, dynamic shared 2048 B, stack zero, static maximum warps six. Raw measurements remain in the version report on sc-16g-2.

The WG-load domain is workgroup/shared loads, not global or DRAM load latency. High MTE duty does not establish an HBM bottleneck. Current shared conflict counters do not justify more bank-layout tuning alone. Static maximum warps is not measured occupancy.

Leader approves a falsifiable case12-only screen of combining two selected blocks per online-softmax update. Eight generated-code rescale/reduction iterations are an observation, not a verified dominant bottleneck. Preserve all other 13 paths exactly.

## Required risks and falsifiers

- A common maximum changes FP16 P quantization compared with sequential blocks; the denominator must remain consistent with the rounded/scaled P actually used by PV.
- Handle odd valid counts, one invalid/sentinel block, causal fully masked blocks, and both blocks masked without invalid arithmetic.
- Do not change native inputs, tolerances, reference or timing to pass correctness.
- Write resource and native latency falsifiers before editing; reject failure or slowdown through the fixed screen plan. Do not repeat until a favorable measurement appears.
- Inspect generated code for the actual reduction/rescale change and register tradeoff. Preserve any remaining or new non-target regression.

No new v100 OJ score exists. v084 user-reported scores remain the external comparison vector.
