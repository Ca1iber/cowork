# v074 single-query C6 block_start broadcast

Observed: currentHEAD2804c78f8 closed73. Twoquery warp-id broadcast73 changed112MT->86 butnative103.575 slower than own68 95.8285. Thus normalbroadcast can alter allocation,not yet targetwin. Original singlequery ownv060 C6 remains100MT/22ST,max4,8KBshared,fullKprefetch;no rejectedtwoquery/Kcopy/PVstream/inverse changes inherited.
Hypothesis: block_start integer is identical for all64threads (onequery/CTA). Explicit normalT.shfl_sync(block_start,0,width64,fullmask) may reduce vector K/V address temporaries while preserving original singlewave geometry/prefetch. Compiler may already know it uniform or add overhead;must measure against68 and exactv28.
Mechanism: only block_start assignment wraps the existingIndices*32 expression in normalbroadcast at entry before validbranch. QK/P/PV/layouts/addresses/barriers/inputcopy order unchanged ownv060. C12 exactown68;other12 exactv28 black-box prefix/entry. No contentcache/manualbuiltin/foreignsource/async.
Prediction: one broadcast,maybeMT<100 without8KBshared/64thread/8192CTA changes;staticMMA32 and output33.554MB unchanged. Staticmax is not achievedoccupancy;allocation change not uniform classification proof.
Falsifier: source/reference/import fail,spill/resourceincrease,identical machine text,no stable fullnativeC6 target gain versus68,or any otherofficial/OJ regression. No repeats to discardbadresults.
Proof: inputIndices sameaddress for64lanes perquery;no kernel writesIndices;all64active atinitialbroadcast,source lane0 equals everylane originalblock_start. Thus all originalbounds/ownership/math/order proofs remain applicable. Invalid sentinel/negativecase class unchanged.
Plan: cardbeforeedit,AST/intidentity proof,normalCPP/LLVM/resources/static,fullnative selectedC6 W10R50,3way B-I-C-C-I-B x2,full14/profile/exactarchive aftermeaningfultarget. Atomic4dirs/Chinese7report/bilingualcommit. Mainv28/pending64/68 preserved,actualOJpending cannot prove allcase no regression.

Outcome:100MT unchanged/ST24,13fullnativeC6PASS,paired+2.193percent;reject,no full14/OJ promotion.
