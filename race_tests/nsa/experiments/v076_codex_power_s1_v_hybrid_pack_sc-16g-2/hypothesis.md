# v076 wide-global Vproducer with rotated4row sharedlayout

Observed:75 new4rowlayout/8Bshared realprofile100percent/0conflict versusown68 75.38/.97,correctcandidate5C6checks,butnative96.0995vs94.787(+1.385percent). Globalinstructioncount doubled and4x4packing changed;MT102/ST24. This suggests feed improvement can be offset,butdoesnot prove costattribution.
Hypothesis: restoreoriginal2rowx8col producer/global16B/localcolumn2 while retain4row/8Bconsumer;rotate rowgroupbits to distribute narrow4Bstores under32lanephase. Avoid extra globalinstructions/4x4gathers andretain widerconsumerload.
Mechanism: Vslot colperm unchanged;rowgroupR=(row//4%2)*4+row//8,then (R^(col%8)^((col%64)//16))*4+row%4. Producerexactold60 coordinates/globalpacking,sharedslots updated;consumer75vector4/8B and4chunkprefetch retained. QK/P/MMAorder/output/barriers unchanged,C12 exactown68,other12 exactv28 blackbox.
Prediction: global8x16B restored,sharedproducer32x4B (oldcount),consumer16x8B vsold32x4B;allbytes same. Lesspacking/globalinstructioncost than75,maybeMT/STlower/nativefaster thanown68. Mustbeat currenttarget,not justregressed75.
Bankdiagnostic: assume32banks4B,32lanephasefor4B and16lanephasefor8B. Rowgroup bit0 rotates tobit2,designed to distinguish adjacentproducerquarters;bothphases predictednonconflicting. Thesephase assumptions are unverified;75profile supportsitslayout only,not automatically76.
Falsifier: bijection/alignment/coverage/ref/import fails,moreprivate/regpressure,conflictreturns,or no stabletargetwin versus68;otherofficial/OJregressionblockspromotion. No reruns to hidebadmedians.
Proof:32x128slot4096bijection,2rowpair contiguous4B,4rowconsumer contiguous8B;all producer/consumerlogicalcoords andMMAaccumorder unchanged. Existing globalbounds valid. Allcontent workpercall,codeobjectsonly,no async/injectedsource/manualbuiltin.
Plan: beforeedit card,ASTcorrespondence andcoords/bankdiagnostic,normalCPP/LLVM/resources/static,originalnative C6screen W10R50,fourway v28/current68/75/76 B-I-P-C-C-P-I-B x2,full14/profile/archive aftermeaningfultarget. Countcandidate separately. AtomicChinese7report/bilingual4dircommit. Mainv28/pending64/68unchanged,actualOJpending.

Outcome: localC6full14-1.400percentvs68/-40.279percentv28,115exactcandidatefullrefs across14cases (319experimentcontrols),profilebank100/0 supported;offcase9/11/14 remainspositive,OJpending,nopromotion,mainv28.
