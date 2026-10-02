# Next mechanism proposal — review required, no kernel edit

## Current evidence

Only case5 is proposed initially: key (4,1024,1,16,64,1,16,True). Current-machine v084 native two values24.386561/24.360960us vs original30.807040/31.078401us. Four case5 profiler records meet the original4096-wave/output8MiB+0..512B scope. Parent write counter8388928B, WGconflict0, nonconflict100%, WG-load50.86/51.03cycles, MTE66.99/65.43%, MMA6.66/6.50%. This is limited stage evidence; no quantified output-stage cost or verified remaining bottleneck. Case8 original counters unavailable/OOM, case9 parent residual576 fails scope; those are not clean controls.

Fresh parent case5 CPP includes16B global producers, 8B WG outputs and16B final global stores. Resources42MT/20ST/dynamic2048B/staticMax8/stack0, not measured occupancy.

## Hypothesis and proposed single change

Remove ONLY final output shared staging for case5. Store existing numerator/denominator results directly from registers to Output. Retain all Q/K/V operations, index/causal guard, probability rounding, denominator reduction and F32 division/F16 conversion. Other13 official keys retain exact parent dispatch/math. Do not alter public main submission, common runner/reference or input semantics.

No speedup is assumed: output shared staging moves2048B write+2048B read per query and needs two synchronization points. Deleting those may reduce work. However each lane would issue4x8B direct stores instead of2x16B contiguous stores. For one chunk,64 lanes cover16 rows each32B; addresses are not the parent contiguous producer pattern. Store issue/sector costs may increase and cancel all benefit. No additional shuffle is proposed; a shuffle variant would be a separate mechanism requiring a new version.

## Index proof

For lane in0..63, chunk in0..3, element in0..3:
head=lane%16;
dimension=chunk*16+(lane//16)*4+element.
The inverse is lane=head+16*((dimension%16)//4), chunk=dimension//16, element=dimension%4. Thus1024 points cover16x64 exactly once, with no lane collisions. Four consecutive elements start at an8B aligned address. Exact target B/L/H/HQ offset uses the inherited query/head mapping; numerical value and rounding remain the parent numerator divided by the same denominator followed by float16 conversion.

## Predictions and falsifiers

Predicted materialization: final shared writes/reads absent, sync count minus2;4global stores of8B/lane rather than2 of16B; no new async/foreign call/builtin API. Grid4096 and64threads retained; dynamic shared remains2048B because Q/K/V still use it. Parent MT42/ST20/max8 are controls; removing output_fetch may reduce registers, but any MT/ST increase or static-limit reduction is retained as a reverse result, not waived. Output payload unchanged8MiB; original scope0..512B remains fixed for case5 and an excess fails rather than expanding the threshold.

Native end-to-end median must improve against v084 and original under fixed paired controls. Slower/equal median rejects the target; overlapping ranges or inconsistent individual deltas are inconclusive. A lower WG count alone cannot establish an optimization. Import/compiler failure, native mismatch, any runtime nonzero/OOM increment or selected-shape forbidden lowering stops and closes the version with partial raw evidence.

Suggested screen protocol for leader approval: existing run_variant, one source per freshprocess, case5 only, fixed B-P-C-C-P-B twice,12fullrefs=4candidate+8controls, unchangedW10R50/fullnaive_nsa. Metadata compilation/export separate from native, no overlapping heavy jobs. This is an explicit protocol choice prompted by peer OOM evidence, not an adaptive retry. Full14 and fixed non-target paired checks remain required before merge; source SHA exact archived final validation remains mandatory. No new OJ score claim without actual results.

## Peer feedback and authorization

Worker1 advisory agrees with the1024-element bijection and emphasizes the16B x2 versus8B x4 transaction/instruction tradeoff, especially for larger outputs. It does not approve or activate this plan. Leader must review the mechanism and measurement scope before v201 edits. v200 is closed first, with original profile failure/OOM/scope counterexamples preserved.
