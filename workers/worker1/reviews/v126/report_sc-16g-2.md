# v126 精确v84 C6新一次基线计数（sc-16g-2）

## 1. 上版本遗留问题

C12的122/124/125均相对bestCB13退化，旧结果保持。重新读取自己C6原基线证据，本版无kernel改动/新native。旧117Achieved相等公式门槛失败仍1，不复活。

## 2. 问题原因分析

C6资源原100MT22ST/max4/stack0/dyn8192是已有静态编译证据，不是实际occupancy。当前不预设bank、HBM、时钟或register唯一瓶颈；新raw用于后续假说。

## 3. 本版本解决方案

exactP84 source4c/header84，official(8,1024,1,16,128,1,32,True)，复用f186CPP/b138host/原SDK5d+resource100/22与SDK.exit0身份，无再metadata/resource/IR。

## 4. 具体落地策略

唯一原driver573 positional6 MCcounts2/custom/perkernel/十raw。GradFalse/seed0/initial1+warm10+ROI20不同nativeGradTrue/fullnaiveW10R50，counts2非独立native/launch总数。5GiBdouble/28/OOM13/unknown1G/600/.5/1s/owned/Popen守卫原样，SDK和outer全部actualwait0。controller原4收尾本已在一长行，root先显示截断误判；仅拆行AST等价并保留原包，不记录虚构codebug或gatefail。

## 5. Benchmark 对比

candidate/inclusive新fullrefs均0，native0/sourcekernel更改0。旧125+4.760673%拒绝原样，无新正确性/性能/全14/OJ结果。

## 6. Profile 指标变化

|raw指标|record1|record2|
|---|---:|---:|
|shared非冲突%|100|100|
|avgWG冲突cycle|0|0|
|WGloadcycles|47.433826|47.309054|
|MTE%|49.260369|49.210681|
|MMA%|10.441704|10.431171|
|readbytes|37650912|37661216|
|writebytes|33554752|33554752|
|L2hit%|64.957588|64.953577|
|Achievedraw|8115|8114|
|Dispatchedraw|8192|8192|

两raw十项unique/finite/isErrorfalse；write32MiB+320符合原0..512 consistency，仅必要非exclusive。Ach/Disp分别记录不套未知公式。WGload非DRAM、MTE/MMA不代表HBM/occupancy，bytes不作校准HBM；runtimegrid未建立，不推总硬件launch。320memorysamples峰26649251840B/OOM13，观测非未来上界。

## 7. 实验总结

finite_exact_C6_profile_completed，当前shared没有冲突计数，不能据source/静态max4推出寄存器瓶颈或实测占用。source/CPP/host/resource身份绑定成立、所有selfjobs terminal，无重采或scope扩大。futurearchive排除generatedpycache，不改旧125已闭环hash；后续方向需leader依据真实证据分派。
