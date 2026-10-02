# Leader review: worker2 v201 case5 direct output

Approve case5 only, key(4,1024,1,16,64,1,16,True), after v200 closure and worker1 advisory review. Worker2 owns its plan and code; no peer edits or execution authority.

Remove only final output shared staging. Preserve Q/K/V operations and their barriers, index/causal guards, rounded P, denominator reduction, F32 division and F16 conversion. Other13 keys retain exact parent v084. No shuffle variant in this version.

Prove every HQ-by-D output and global batch/token/head offset is written once, with8 B alignment. Generated code must show4x8 B direct stores per lane rather than2x16 B parent stores, no output shared reads/writes and two fewer barriers. Logical32 B address runs do not independently establish hardware sector behavior. Actual memory issue/coalescing can offset all savings. Dynamic shared2048 B and4096waves/64threads are predictions, not accepted outcomes.

Write hypothesis/source/launch manifests first. Metadata compilation/export is separate from native; validate exact source and generated code, capture resources, reject forbidden lowering or stack use, and retain all resource increases. Fixed native screen: one source per freshprocess, B-P-C-C-P-B repeated twice, case5,4candidate/12total full references, original W10R50/seed/tolerance/inputs unchanged. Any nonzero/OOM/innerKilled/hash/CSV failure stops without adaptive retry.

Slower/equal target median rejects; overlap or inconsistent round deltas is inconclusive. A profiler metric alone does not prove gain. Submit complete raw/resources for leader review before formal all14, fixed non-target checks and exact archived SHA validation. No OJ gain yet.
