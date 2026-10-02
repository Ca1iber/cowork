# v116_worker1_exact_parent_C6_C10_profile_resource_sc-16g-2

## 1. 上版本遗留问题

v115 confirmedC11/C12 localgain andall14correctness, butP84 positive medians1/6/7/8/9/10 remain. C6/C10 owncase evidence needed; sourceidentity doesnotwaive latencypositive.

## 2. 问题原因分析

Originalstage3 CPUparser wrongly requiredFFIslot5..10 uniqueacrosswholehost; temporaryFFIarray reuseslot546timesC6/42timesC10. Truekernellaunch segmentbeforepackedcall hasuniquegrid/thread/shared args. Geometry wasnotwrong.

## 3. 本版本解决方案

FiniteparentfirstC6/C10 metadata/resource/MC plan; original7stage stoppedstage3 with0resource/MC. IndependentapprovedCPUrecovery onlyreads existing4pairs+4CPU OJ validators, actualwait0; originalfailurewait1 allpreserved.

## 4. 具体落地策略

Parent4c/C113cb30 freshmetadata cases[6,10]4pairs8files/hook1/noattention. ActualP/C device+hostbyteidentity: C6f186/b138,C10f578/00d8. Recovery anchorsnative_sparse_attention_kernel_packed callandIndices slot0; C6[1024,8,64,1,1,8192],C10[256,1,64,1,1,2048]. Bound20deps/6inputs/CLI/5+23+4/28/13/unknown/600/0.5/1s unchanged. Prepauto-reviewtimeout522 noexec andrecordflagfix preserved.

## 5. Benchmark 对比

No newnativebenchmark/fullreference: candidate0/inclusive0. Originalstage3/launcher/supervisor/controller actualwait1; independentCPU recovery467710wait0. No old115data merge orbenchmark/script/seed/tolerance modification. Allpositive latencies retained.

## 6. Profile 指标变化

No newresourceSDK,mcProfilerCLI orcounterrecord. C6hostcontract8192waves/write32MiB, C10 256waves/write512KiB necessarynotexclusive; runtimegridUNAVAILABLE. OriginaldriverGradFalse/warm10/ROI20 remainsseparate fromnativeGradTrue/W10R50. No borrowedC8/C11counter oroccupancy/HBM claim.

## 7. 实验总结

ClosedoriginalCPUparserfailure+independentidentity recovery checkpoint/OOM13stable/allownedterminal/main429unchanged. No controllerresume/re-export/counterretry. Next117 limited4首次 parentC6resource/MCcounts2 thenC10resource/MCcounts2 reuseapproved116exports, actualplan/peer/leaderGO required.
