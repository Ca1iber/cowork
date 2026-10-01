# v050: S8 online softmax using explicit local arrays

Observed evidence: exact v28 case12 native~83us, shared2560B. Own probability-cache variants still~89-101us; wide cached probabilities increase registers. v049 validates explicit single-arena/local-MMA data movement for S1 and preserves original host cache path. Its OJ score gate remains pending; keep case6 code unchanged here.
Verified bottleneck: cached-probability/register footprint in prior own S8 experiments is known; exclusive latency attribution is unproven. Recent counter baselines have scope anomalies.
Current hypothesis: streaming one16token block at a time with score4/probability4/numerator16 local arrays and scalar online max/denominator can reduce registers and shared workspace versus bulk probability caching/fragment reductions.
Proposed mechanism: independently express S8 attention with cached query16half, exact monotone max anchor, per-block rescale of FP32 numerator/denominator, bias256 FP16 probabilities and denominator computed from consumed probabilities. Keep one1024half shared arena for Q,K,V,output; use empirical D64 four-row V layout and preload4 PV operands. No tensor results or preprocessing contents cached; every scored call executes all data work.
Predicted metric changes:2KiB shared, no private storage, fewer than64MT registers, no32half probability/max cache. Native case12 must beat exact v28. Case6 stays byte-identical to v049; other12 stay original v28.
Falsifying result: native reference fails, stack/private appears, resources do not improve, global/operand vector loads regress, or paired target fails to beat v28.
Risks: online rescaling/order, FP16 rounding and denominator consistency, active64lane shuffles, arena overwrite fences, local MMA output order. Always rescale by alpha<=1; no anchor hysteresis. Source in ordinary TileLang only, exact3 imports. Original run_kernel AST unchanged via compiled-code cache registration for two exact official shapes.

Project native naive_nsa,W10/R50,official cases/reference and GPU state remain unchanged. Pending v049 OJ feedback does not authorize promotion; main root remains exact original42911561... .
