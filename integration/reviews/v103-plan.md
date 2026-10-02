# Leader review: worker1 v103 case6 plane-first PV/output

Approve case6-only mechanism after fresh parent evidence and worker2 advisory review. Current V operand is16half, already grouped by64D; do not assume an all-D V buffer. Parent resources100MT/22ST/dynamic8192B/stack0/staticmax4 and current shared100%/conflict0 are observations, not measured occupancy or a unique dominant bottleneck.

Reorder PV to finish a64D plane across key0 then key1, normalize with the unchanged complete rounded-P denominator, cast toF16 and store that output before clearing/reusing16Float32 accumulators for the next plane. Each output feature retains its original MFMA accumulation order, dtype and count. P8 and denominator code/lifetime remain valid.

Use actual panel mapping: V0[0,2048), V1[2048,4096)half; lower output[0,1024), upper[1024,2048), both only occupy already-consumed V0. Prove complete vector touch sets, alignment and no future V1 overlap. Full64sync must protect V0 reads before early output overwrite; cast/store completes before Numclear; finalsync protects both output planes before original16Bglobal gather/store. Q/K/Vglobal16B producers and their synchronization remain unchanged.

Metadata-only compilation first: actual Num16 reuse materializes, MT<100, staticmax>=4, stack0, original global16B retained and strict source/generated gates. Failure stops before native. Fixed one-source-freshprocess case6 B-P-C-C-P-B twice,4candidate/12fullnative references, original W10R50/seed/tolerance/input unchanged. OOM/nonzero/Killed/hash/CSV error stops; no adaptive retries.

Slower/equal median rejects; overlap/positive round delta cannot be called stable gain. No automatic full14, key expansion or OJ promotion. Peer feedback remains advisory; no cross-worker code or plan mutation.
