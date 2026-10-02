# v202 proposal: case8 two independent queries per CTA

Status: hypothesis and address/API proof only; no candidate kernel edit, GPU compile or native run. Leader GO required.

## Evidence and scope

Source branch exp/nsa-worker2-s1-from-v084, HEAD189ab5f4d56af37f558732c2dc0241aeb47e5b22. Numerical parent is frozen v084 SHA4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0; root main429 remains original. Exact case8 key(2,4096,1,16,64,1,16,True), FP16. Current primary software/library hashes and exact shape are in proof JSON.

v200 case8 parent two records pass original8192wave/16MiB+0..512B scope: write residual448/384, WGnonconflict100/conflict0, WGload50.51/50.54cycles, MTE67.97/67.80%, MMA6.75/6.74%, L247.95/47.96%. Parent42MT20ST/max8/stack0/dynamic2KiB. Actual current CPP SHA24237e8843b6168692cb751c7e1b35455812d40d5b186420ad12694aa506d4a8 has launch64 and7 warp-sync sites. Originalcase8 counters were unavailable; do not present them as clean controls. WG-load is notDRAM and these observations do not prove CTA dispatch is dominant.

## Single mechanism

Pack two independent64-thread queries into one128-thread CTA. group=tid//64, lane=tid%64, token=pair*2+group. Use shared2048half partition[group*1024,group*1024+1024). Retain each query's full parentQ/K/V operations,7 warp-sync phases, P rounding/max/den/shuffle/numerator order, and original16B global producer plus packed16B final stores. No K/V content sharing/cache, no crossquery reductions, no output-direct8B inherited from rejected201. Other13 keys retain frozenparent prefix.

Grid2048x2 gives4096CTAs versus8192; total logical queries/waves8192 and payload16MiB unchanged. Scheduling overhead may decrease because CTA count halves, but its share is UNKNOWN. Reverse risks: doubling threads/shared perblock changes admission granularity, group/token/sharedbase address arithmetic may raise MT/ST or change active waves; early-finished wave may wait for its paired wave to release block resources. No occupancy/bandwidth gain is assumed.

## Ownership, participation and bounds

Proof script reuses only actual parent integer slot definitions: qk/out/v each1024-element bijection. Both query partitions are disjoint.2560 vector-touch groups verify complete Q/K/output8B, Vproducer4B andVconsumer8B accesses remain inside their owning1024half partition and retain relative alignment. Originalpackedglobal16B addresses remain identical perquery.

Pair→token is bijective over0..4095; finalpair4094/4095. Local output2048points/CTA and factorized global8388608FP16elements cover the complete16MiB exactly once. Outside token<seq guard must include all Indices/Q/K/V/Output accesses and shared-use. The guarded body belongs to an entirephysical warp64; differentquery valid flags or a tail do not require the otherquery to participate.

Use T.sync_warp(), never new T.sync_threads/fullCTA barriers. Retain explicit shuffle width64, fulluint64 mask0xFFFFFFFFFFFFFFFF andxor16/32: source-lane mapping stays in the samegroup. Primary API builtin.py defines warp sync, codegen_maca emits__syncwarp; TLmaca reduce/thrust docs fixwarp64. Do not use DSLdefaultshuffle mask, which the currentMACA helper defines as only0xFFFFFFFF despiteuint64type. No manualcompilerbuiltin or foreigncode.

Peer review warns every lane-derived expression must use tid%64; group appears only in token/sharedbase. Review any fragment/Parallel/layout construct for128-domain ownership; parent is explicitSPMD locals but this must be audited, not assumed. OrdinaryMFMA must remain one16x16x16 operation perphysicalwarp64.

## Proposed gates and fixed experiment

Before native: header202/exact3imports/sourceprefix+onlycase8 installer, full integer/vector/global proofs, isolated metadata0attention using actualcachefactory identity. ActualCPP must show launch128/grid2048x2/dyn4096, ordinaryMFMA, four full64shuffle operations confined perquery, no__syncthreads/async/foreign/manualsourcebuiltins, original16B Q/K/V/output widths and7warp-sync phases, no unboundedgroup1 index. Record MT/ST/staticmax and WG allocation tradeoff; stack>0/forbidden/nonzero/OOM/sourcehash failure stops. Not measuredoccupancy.

Then onlyif leader approves this plan: existing run_variant one source per freshprocess case8, fixedB-P-C-C-P-B twice,4candidate/12total fullnaive/W10R50/seed0/gradTrue/tolerance unchanged, no postexport. Stop anynonzero/OOM/innerKilled/hash/CSV mismatch, retain all observations, noadaptive retry orautomaticformal. Slow/equal rejects; overlap/positive round is inconclusive; targetpass goes back toleader beforefull14.

Peer advice is advisory only, not execution authorization. No kernel/source/plan belonging toworker1 has been modified.
