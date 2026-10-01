# v069: C6 single reciprocal output normalization

Observed evidence: current HEAD26d653386 closed v068, main exactv28; original C6 ownv060 normalization LLVM has32 fdiv contract float instructions with same denominator, static32MMA,100MT/22ST,max4,stack0,8192Bshared. All12 untargeted host wrappers and device CPP identical v28, so off-case timing increases remain unresolved and cannot be waived.
Verified cost:32 LLVM fdiv operations,not proof of32 physical divide instructions or exclusive bottleneck.
Hypothesis: explicit single FP32 reciprocal and32 multiplies can share denominator normalization work beyond compiler contract-only divide IR; mathematical real result unchanged but FP32 rounding order changes.
Mechanism: only C6 helper computes inverse_denominator=1.0/denominator once then multiplies each numerator. All QK/P/PV/MFMA/staging/masks/address/layout/global bytes/sync remain exact ownv060. C12 exact ownv068; originalv28 black-box fallback prefix/entry AST preserved.
Predicted metrics: LLVM fdiv32->1 and32normalization fmul; lower instruction/resource cost and nativeC6 latency. Physical divide count depends on backend; resource upper limit is not achieved occupancy.
Falsifier: backend canonicalizes identical code, target native W10/R50 no reproducible win, reference/import fails, resource spill rises, or any other official/OJ case regresses. No repeated runs to erase unfavorable observations.
Numerical risk: positive Gaussian finite official inputs imply FP16 P<=256 and at least oneP=256; denominator[256,8192], numerator finite. Explicit reciprocal changes rounding; exact original naive_nsa atol/rtol1e-2 gates it. Invalid-selected branch keeps zero denominator and zero numerator, preserving NaN-class result0/0 versus0*inf;no masks altered.
History review: ownv021 card normalized probabilities before FP16 PV. This candidate does not alter P/PV, moves no normalization into probabilities, and consults no historical team kernel algorithm.
Plan: pre-edit card -> source-only AST isolation/bounds/numerical diagnostic -> normal CPP/optimizedLLVM/resources/static -> full native selectedscreen6 -> pairedtarget6 -> full14 if target meaningful -> independent mcProfiler plus exact archived full14 -> seven-sectionChinese report/bilingual scoped commit. ExternalOJ pending, mainv28 protected.

Outcome: LLVM32fdiv->1 but compiled.text exactly identical,resource100MT/22ST unchanged,C6paired-0.126%,13 full-reference checks PASS;reject proposed GPU mechanism,no full14/OJ promotion.
