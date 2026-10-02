# v204 onlyC8 ordinaryV-read scheduling

Evidence: validparentC8MTE67.97/67.80,MMA6.75/6.74,WGload50.51/50.54(notDRAM),shared100/0. ActualCPPserializesQK/softmax beforeVglobal16Bload; notproof of memoryoverlap opportunity. Parent42MT20ST/max8/dyn2048/stack0.

Singlechange: movethreeexistingfetchrow/fetchcol/Vreadstatements afterKpostsync; Vfetchlocalonly, sharedVwrites stillafteroldpreVsync. Sameindexguard,16Bvectors,7sync/math andother13prefix. Noasync/no2query/noKVcache.

Reverse: longerV16half liveness mayraiseMT/ST orreduceadmission. Sourceorderalone doesnotproveactualearlyload orlatencyhidden. BackendCPP/optimizedIR materialization andresourcestack0 mustprecedefixednative. CurrentGOsource/staticonly; import/compiler/attention/native0.

Peer: preserveinvalid/causalguard/all16rowsbounds, noearlysharedoverwrite, preVsync protectsKreads; width/address/count retained, nooverlapclaim. Planfuture waves8192/payload16MiB/residual0..512unchanged.
