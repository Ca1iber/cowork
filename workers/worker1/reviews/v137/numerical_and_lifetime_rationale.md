# C12 reciprocal normalization source hypothesis

Exact current full v303 base; C12 component matches archived CPP388504/IRde3bc. CPP175-184 and IR2432-2459 retain16 fdiv contract with same denominator; attr2674 prec-div=false. KVscaled arithmetic alreadyi32. Actual ISA reciprocal sharing and cost UNAVAILABLE; no bottleneck proven.

Original maximum[0] is alloc_local(1,float32). Its final probability exp2 read completes before denominator and all PV; new write1.0/den occurs after PV at the original normalization position. No new allocation. Source last use does not prove physical register reuse or MT decrease. P32 actual F16 round, den/PV using that same P, per-feature accumulation, cast/layout/index/global/sync are unchanged.

Conditional finite scores with legal unmasked keys: the globalmax/+8 mathematical probability construction has P0..256, complete128keys gives den256..32768, reciprocal2^-15..2^-8 normal. This is a conditional rationale, not device verification or a bound for arbitrary NaN/overflow. Reciprocal then multiplication adds FP32 rounding and may cross an F16 midpoint. No bit or tolerance guarantee; original fullnaive1e-2 remains required.

Empty Num0/den0 originally gives NaN; reciprocal1/0 then0*Inf preserves NaN value class, not payload/signaling exception bits. NaNden/nonfiniteNum still require actual flags and original validation. Positive finite reciprocal preserves Num signed zero. No nnan/nsz relaxation; original F16 conversion position stays.

Potential benefit is normalization lowering. ISA may already share reciprocal, new rounding/resource/spill or fixed original native regression can falsify. Other13 source identity does not waive performance; future candidate retains full303 gains5/6/8/11/12.
