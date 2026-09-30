# v037 hypothesis / sc-16g-2

Observed evidence: v036 paired179.8195us vs v28 157.0405us, 8/8 PASS. Fresh profile shared80.33% vs89.19%, conflict0.86 vs0.36, MMA5.37% vs6.085%. Generated PV loads64 scalar half/lane while QK operands use uint2.
Verified bottleneck: generated PV operand feed uses scalar shared loads; end-to-end contribution not quantified.
Hypothesis: PV column-contiguous four-half layout plus local4x4 microtranspose reduces operand-load issue cost enough to improve end-to-end.
Mechanism: keep QK exact existing physical swizzle, express it in one flat shared array. After QK/softmax fence, repurpose same8192B with row16-plane V layout and four-half producer/consumer vectors. Full128feature sameCTA/output unchanged. One coupled operand-feed mechanism, no output relay change.
Predictions: PV64scalar load instructions become16uint2/lane; shared bank model improves under framework32banks/4B/16lane-phase hypothesis. Actual bank counts not guaranteed. Same8192 totalwaves, dynamic8448B, stack0. Increased producer transposition/register cost could offset gain.
Falsifier: generated V load/store fails vectorization, native reference fails, spills, or no paired latency improvement; target success still requires beat v28.
Risks: alias fences, physical layout bijection, mask bounds, native MFMA operand orientation, output pressure.
Identity: start a8518a7d0, source parent independent v036; fallback shared root39ff49e7b exact v28 SHA42911561. First line codex-power v037, exact3imports. Native runner/reference/timing unchanged. Othercases baseline AST untouched.
