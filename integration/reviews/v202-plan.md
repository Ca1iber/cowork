# Leader review: worker2 v202 case8 two-query CTA

Approve independently owned case8-only proposal after integer/vector proof, primary warp API checks and worker1 advisory review. Each128-thread CTA owns two independent64-thread query groups. local_lane=tid%64; group only affects token and shared-base. Per-query Q/K/V math, probability rounding, full64shuffle/reduction and original16B global production/packed output remain unchanged. No cross-query K/V content caching or reductions.

Metadata-only source/generated/resource gates before native must prove actual128launch, grid2048x2, dynamic4096B, ordinary MFMA perphysicalwarp64, all producer/consumer vectors within owning1024half partition, explicituint64shuffle masks/width64, seven warp sync phases and no fullCTA barrier. Audit naked tid, fragment/Parallel/layout domains and token bounds.

Halving CTA count does not establish scheduling dominance or occupancy improvement. Doubling shared/block and admission granularity may harm performance. Preserve MT/ST changes; stack/forbidden/source/nonzero/OOM failures stop.

Only after metadata gates, fixed one-source-freshprocess case8 B-P-C-C-P-B twice,4candidate/12fullnative, originalW10R50/seed/tolerance/input unchanged, no postexport oradaptive retry. Slower/equal rejects; overlap/positive round is inconclusive; leader reviews target beforefull14. Neither peer may edit the other's code or plans.
