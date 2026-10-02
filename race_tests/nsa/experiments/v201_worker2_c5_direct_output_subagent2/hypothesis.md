# v201 singlecase5 output hypothesis

Observed: v200validC5 fourprofiles show parentWGconf0/sharednonconf100/WGload50.86/51.03, MTE66.99/65.43, MMA6.66/6.50; parentnative24.386561/24.360960us. FreshCPPoutput has shared2048Bwrite+2048Bread/query, twofinal syncs,2x16Bglobalstores/lane. Resources42MT20ST/dyn2048/max8/stack0. Remainingdominantbottleneck UNKNOWN; stagepresence is not its latencyshare.

Hypothesis: deleting ONLY output WG staging andits two dependencies may improve native end-to-end. Reverse prediction:4x8B stridedstore/lane versus2x16B contiguous may cost more issue/requests. No calibrated sector/occupancy assumption.

Mechanism: preserveallQ/K/V dataflow/sync, causal/index,P rounding,denominator/numerator FP32division+FP16conversion. Directstorecoords row=lane%16,dim=chunk16+quarter4+e;1024pointbijection and8Balignment proof required. No shuffle, onlyC5key.

Falsifiers/stop: exactplan.json stoprules; lowerWGworkalone insufficient. Metadata before native0attention; fixedB-P-C-C-P-Bx2 one source per freshproc/fullnative. AnyfailureorOOMstops, no adaptive retry. Slow/equalreject; rangeoverlap/roundpositiveinconclusive. Leader reviews after targetscreen before anyfull14.
