# v054: exact record-max guard for online rescaling

Observed evidence: v050single-warp local online path passes but86.976us versusv28 83.374us;62MT/max8/shared2048B,incumbent60MT/max8. It computes alpha and scales16F32 numerator+den for every block even when global max does not change. Multiswap partial directions remained much slower after memory/register reductions. Historical ownv032 used hysteresis threshold7/fragment state;it stilllost andis not the same exact local-array mechanism.
Verified bottleneck: redundant alpha=1 work is structurally established;its exclusive latency cost is unmeasured.
Current hypothesis: only rescale when block_maximum>maximum. If false, new max equalsold max and alpha exactly1,so skipping exp2/mul is numerically identical. On random blocks record updates are expected fewer than8, but no update-rate assumption decides performance.
Proposed mechanism: modify only v050 local online maximum/rescale control. Remove new_maximum allocation;on record update computealpha,scaleN/den,updateM. All warp reductions,mma,arena/layout,probability256bias/denominator andcache entrypoints unchanged. No hysteresis or changed threshold. Shuffles/MMA occur outside per-query branch after reconvergence.
Predicted metric changes: fewer dynamicSFU/rescale instructions,MT notabove62,stack0/shared2048B,latency should approach/beat exactv28. Exec-mask control may offset savings;source_codegen movement must be checked.
Falsifying result: reference fails,warpshuffles execute inpartial mask,extra registers/exec costs erase benefit,orpaired target remains slower thanv28.
Risks: query-dependent divergence,compiler control-flow rescale state,first valid anchor-inf(alpha0),keeping oldmax unchanged. CPU algebra/source proof is necessary,full native naive_nsa/W10R50 required. All tensor work stays in scored calls;onlycode objects cached atimport. Exact3imports/header,original entrypoint AST andv049case6 helper preserved.

No GPU/benchmark/reference/input changes. Recent root profile fromv051 valid;v053freshscope anomaly retained. Root exact42911561... andv049pending externalgate untouched.
