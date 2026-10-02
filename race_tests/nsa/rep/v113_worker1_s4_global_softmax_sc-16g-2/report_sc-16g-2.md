# v113_worker1_s4_global_softmax_sc-16g-2

## 1. 上版本遗留问题

C11 currentsource104 actual80MT22ST/max6/stack0; v108 andv109 positive timing deltas remain. v112 profiler failed0records, C11 countersUNAVAILABLE.

## 2. 问题原因分析

Source-derived hypothesis: repeated online Num16 rescaling/max reductions might cost time. No verifiedcounter bottleneck. New fixedscreen refused at first4GiB admission: 4314877952 B >4294967296 B; no kernel accuracy/latency inference.

## 3. 本版本解决方案

OnlyC11 official(2,512,1,16,64,4,16,True): all4QK Score16->oneglobalsoftmax actualF16P16/den->all4PV Num16, base104cb30 specialization retainingC12/other13. Still16scoreexp/32MMA fullvalid; remove4online-rescale exp and maxshfl8->2.

## 4. 具体落地策略

Base16ASTprefix preserved; rawidx-beforemultiply/prefix/sentinel/causal/emptyNaN, Q/K16B V8B O16B/shared2KiB/fullvalid19sync maintained. Actualsource/devicevalidator0, twoC11exports and3SDK commands captured. Preserve initialwrong-importvalidator, missedrep startup, attributealloca CPUfalsepositive, missedparentCPP native startup; approved repairs separate andno heavymeasurement replay.

## 5. Benchmark 对比

Candidate0/inclusive0 fullreference; native0spawn. Planned4C12all not actual. Controller andsupervisor originalwait1, OOM13->13. Alloldrawpositives/outliers remain; no currentlatency/correctness/full14/no-reg/OJ conclusion.

## 6. Profile 指标变化

No newMCrecords/profile. P80MT22ST/max6 -> C60MT42ST/max8; ST+20 retained, dyn2K/stack0 both. ExistingcandidateIR efa55 has32MMA/0truealloca/0AS5: staticcompile evidence, notISA/occupancy/speed. OriginalCPUgate1 unchanged; independentSSA-opcode recovery originalwait0.

## 7. 实验总结

Closed as native_admission_refused_no_reference_or_latency. Fullcandidate archived SHA cb30f2f7982c3415af53a5c137f5563ec849eed7fe85228a4b05384e6b1e1bcc/header113. Main429 unchanged. Fixedscreen didnot execute, no repeat/polluntiladmit, no budget increase, no promotion. Further independentvalidation requires newplan/peer/leader review.
