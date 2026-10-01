# v073 broadcast warp-uniform query wave id

Observed: exactHEAD0601c643a closed72;mainv28 unchanged. Parent72 twoquery CTA correct13C6checks but112MT/26ST,16KB shared,native101.220 versus own68 95.0195(+6.526percent). Extra address data may be classified divergent because wave_id=threadIdx/64. This is hypothesis,not decoded ISA fact.
PrimaryAPI: tilelang/language/builtin.py shfl_sync(value,srcLane,width,mask) supports full64 MACA mask;codegen_maca emits normal __shfl_sync. Macca get_warp_idx_sync is plain divide,not broadcast,so do not assume its name makes scalar code.
Hypothesis: explicit lane0 broadcast of wave_id at entry allows compiler to recognize uniform per64lane value and reduce vector address temporaries. Extra shuffle may offset benefit. Must beat own68 current target,not only regressed72.
Mechanism: only wave assignment becomes normal T.shfl_sync(threadbinding//64,0,width64,full64mask). Everythread in eachwave already has same0/1,so logical value unchanged. Allmath/layout/addresses/querypacking remains72,including fragment local32 and isolatedshared. C12 exactown68,other12 exactv28 black-box prefix/entry.
Prediction: one added normalbroadcast,ideallyMT/ST/address allocation improves from112/26;runtime8192waves/output33.554MB and all32MMA perwave unchanged. Compiler can ignore uniformity or add overhead;static max is not achievedoccupancy.
Falsifier: native/reference/import fail,private allocation,MTnotmeaningfullybetter,no stable pairedtarget win versus68,or any official/OJ regression. No reruns to erase bad observations.
Proof:128threads activebeforevalidbranch;two64lane subgroups,sourceLane0 containswave0or1,outputexactequalsoldfloor. Thus all coordinate/fragment/isolation proofs72 remainapplicable. NormalTileLang API only,no manualbuiltin/foreignsource/async copy/contentcache.
Plan: cardbeforeedit,AST+integeridentity,normalcodegen/LLVM/resources/static,unchangednative C6screen W10R50,4way B-I-P-C-C-P-I-B x2 (v28,68,72,73),full14/profile/exactarchive only afterstable target gain. Atomicfourdirs/Chinese7report/bilingualcommit. Mainv28/prior64/68 preserved,OJpending.

Outcome:86MT/28ST,max5,private0;17fullnativeC6PASS;paired+8.084percent vs68/+2.524percent vs72;reject,no all14/OJ promotion.
