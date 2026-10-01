# v077 S8 output low-column pair swap

Observed: HEADdc664bf86 closed76,currentC12 own68~73.6us,82MT/22ST,max5,2KBshared. Own68 output sharedslot row*64+((col//8)^(row%8))*8+col%8 lacks rowbit3 lowcolumn pair swap;producer4x8B/thread and global2x16B/thread. Aggregate profile97.29percent/.11conflict,not an exclusive epilogue counter.
Hypothesis: xor rowbit3 into colbit2 of outputslot distributes 16head8B stores and removes repeated bank pairs;read two8B sharedpacks into local8half before same16B globalstore. Epilogue fraction small,readinstruction/address pressure may outweigh effect.
Mechanism: only out_slot and outputgather;outfetch8half fully overwritten eachpart. QK/P/V/globalinput/softmax/denominator/runtime8selectedloop/math/sync all exact68. C6 exactown76,other12 exactv28 black-box originalprefix/entry. No numerical math changes,outputFP16 bitpermutation only.
Prediction: normalCPP output shareduint2/globaluint4 retained,gather2uint2 replacesolduint4;32banks4B/16lane8Bphase model maxold2->new1 foroutputproducer. Thisphase/model is unverified,requires actualcounter/native. No assumed occupancy or sourceoperation win.
Falsifier: bijection/packing/owner/ref/import fails,spill/register increase,no stable nativeC12 gain versus76,or any official/OJregression. No repeatuntil favorable.
Proof:16x64outslot bijection1024,4halfstore contiguous8Baligned,2pack4halfgather reconstruct exact8half global positions,perheadnumerator indices unchanged. No live sharedV alias race;same warpbarriers remain. Allattention data recomputed eachcall,codeobjectsonly.
Plan: cardbeforeedit,normalizedAST/address/bankdiagnostic,normalCPP/LLVM/resources/static,unchangednative C12screen W10R50,3way v28/current76/candidate77 B-I-C-C-I-B x2,full14/profile/exactarchive aftermeaningful target. Accurate per-source counts. Atomic4dirs/Chinese7report/bilingualcommit. Mainv28/pending64/68/76unchanged,actualOJpending.

Outcome: exact107candidatechecks/14cases (291experimentcontrols);C12full14-2.306percentvs76/-13.871percentv28,MT80/ST22,profile100percent/0;offcase1/3/4/10riskpositive,OJpending,no promotion. Initialmetadata137 preserved,percase auxiliaryretry passed;formalnative neverrerun.
