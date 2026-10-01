# v046: V row-pair producer without lane exchange

Observed evidence: v045 stack/private was eliminated and official case12 passed. Paired native median105.638us versus exact v28 88.7245us. v045 uses2x16B global V loads,4 packed xor8 transfers and4x8B shared stores per lane;74MT/max6 versus v04264MT/max8. v045 counter captures were inconsistent (duty>100, baseline waves not4096). Fresh physical card currently idle0%,826MiB, visible slice0%; exact source baseline42911561... unchanged.
Verified bottleneck: register and static instruction increases are verified; extra shuffle cost as sole performance cause is not proven.
Current hypothesis: a row-pair V shared layout can consume the2x8 global tile directly, eliminating4 packed shuffles and mixed bit packing. More narrow shared operations may offset this; bank behavior must be measured rather than inferred from a model.
Proposed mechanism: keep attention/normalization,64thread grid and2x16B V fetch. Store8 columns with2 contiguous half rows, then preload each4half MMA operand as two2half reads. Use a bijective row-pair swizzle; no lane exchange.
Predicted metric changes: no V xor8/bpermute sites, zero stack, lower MT registers. Global V reads remain2x16B; shared producer stores8x4B and consumer loads8x4B instead4x8B. Native latency should fall versus v045; promotion still requires beating original v28.
Falsifying result: correctness fails, private storage returns, global vector reads disappear, shared conflict/load cost increases or native timing fails to beat v28.
Risks: new shared row-pair mapping and operand order, bank model assumptions, twice as many narrow shared operations, register lifetimes. CPU bijection/bank hypotheses are diagnostic only, not proof of C500 throughput.

Gate before editing: fresh exact-baseline mcProfiler capture, verify4096-wave launch and interpretable duty ratios. Project native naive_nsa and W10/R50 remain unchanged. All14/OJ no-regression gate required before replacing root submission.

## Before-edit gate amendment

Fresh baseline capture completed with two attention reports, but waves7096/7352 instead4096 and reads203..234MB instead historical9.57MB. Physical-card activity/memory returned after initially-idle snapshot, visible slice idle. Strict gate failed, raw evidence retained; normalization/counter scope or external activity is unresolved. Proceed with the already verified LLVM/resource and paired-native evidence for removal of V exchange, without attributing a hardware memory bottleneck. Fresh all-reference paired timing will decide performance; model bank predictions cannot replace hardware measurement. No GPU state changes.
