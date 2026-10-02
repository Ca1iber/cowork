# Leader approval: worker1 v104 case12 two-phase softmax

Approved after worker2 supplied five advisory notes. Case12 only: all selected QK into Score32 per lane, one complete maximum and roundedF16P32 denominator, then PV into Num16. Original13 other keys and parentv084 prefix remain unchanged.

The kernel ABI has no block_counts. Use the existing legal-prefix/sentinel contract; guard raw indices before multiplying byBS and preserve key-level causal masks. Initialize invalid scores, avoid invalid global loads and inf-minus-inf, preserve original/reference all-empty behavior. Global normalization changes roundedP values versus onlineprefix maxima: fullnaive_nsa tolerance1e-2 must pass. Denominator must use the same rounded/scaledP32 actually consumed byPV.

Preserve actual widths: Q/K16B, V8B, output16B. Shared staging remains2KiB with existing read-before-overwrite synchronization. Fully unroll eight selection offsets only if actual code/resource evidence confirms no dynamicprivate spill. Before native, metadata0attention must prove buffers/indices/masks/sync, stack0,staticmax>=4,MT<=128 and strictsource/generated compliance. Resource or source failure stops without tuning repeatedly to pass.

Then fixed once C12 one-source-freshprocess B-P-C-C-P-B twice,4candidate/12fullnative, originalW10R50/seed/inputs/tolerance. Nonzero/OOM/Killed/hash/CSV error stops; slow/equal rejects,overlap/positive round is inconclusive. No automatic formal/full14 orOJ claim. Workers own their code and plans; peer input is advisory.
