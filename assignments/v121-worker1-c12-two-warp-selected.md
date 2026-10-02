# Worker1 v121: C12 parallel selected blocks

Parent is best-known C113 cb30, retaining C11 and v104 C12 gains; reject C118 C6 and preserve its failure.

Only original C12 exact key gains a new factory/header121. Try two warps/CTA128 with selected0..3 and4..7. Single warp Q producer, warp-private K/V slots, unconditional CTA barriers for shared global per-head maximum, rounded-F16 P denominator and FP32 partial numerator merge. Keep original packed16B output.

Expected64MFMA per query remains32 per warp×2. The FP32 grouping changes, so full original naive correctness is mandatory. Extra warps/shared memory/merge barriers can erase any gain. Static registers/occupancy are predictions, not speed proof.

Write hypothesis then implement one source-only candidate with exact dispatch and prefix/case impact proof. No compile/native/profile until actual source review. Other13 remain C113; source identity never waives full14 performance testing. Worker2 advice is readonly.
