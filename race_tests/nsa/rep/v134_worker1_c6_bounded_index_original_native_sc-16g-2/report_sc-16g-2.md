# v134 C6 bounded-index 原生测速（sc-16g-2）

## 1. 上版本遗留问题

v131 sourceccc/header131从bestCB13原hybrid V16/Num32派生，仅validguard内K/Vrowclamp992。编译CPP仅2条KV地址从int64变i32/min992，98MTvs100、staticmax4不变；未证明端到端收益。此前V4独立v129+.177222%拒绝，其源码/样本未继承或混入。

## 2. 问题原因分析

官方B8/L1024/BS32 idx0..31/start0..992 clamp恒等，原Idx*32/guard/causalmask保持raw，完整262144个16B向量地址证明。root已审actualIR K/Vscaled i32→latezext/GEP64与原数学/Num32V16/7sync；extra min/ALU/资源或native退化可否证。CPP uint4和16B向量地址意图不等物理ISA访存宽度，LLVM有scalarloads/ISA未知；不因98MT声明occupancy提高或int64是唯一瓶颈。

## 3. 本版本解决方案

只引用immutableC131完整source，originalC6同三源freshprocess B28-CB13-C131-C131-CB13-B28两round，seed0/F16GradTrue/fullnaive1e-2/W10R50。实际candidate4/inclusive12检查PASS，全部native及outer原Popenwait0。无kernel改动、新metadata/export/SDK/IR/profile/追加native或自动全14。

## 4. 具体落地策略

18deps+shared6 `.items()`/真实source/CPP/IR/currentcase6绑定，先冻结phase/GO，原firstlauncher629363持同handle到wait0。6GiBbaseline+22estimate+4reserve，28runtime/OOM13/unknown1G/.5/600/critical1s/exactunownedNode/ownership/priorabort/cooplock不变。初cell1066自动reviewdeadline超时未执行，经readonly核plan与启动标记全无，工具明示一次小pure-Sfreeze重试后首次actualnative，不重跑stage或删onceguard。原超时证据保留GO_freeze。其他13source保持CB13，不据此声明性能免检；leaderC301/133队列均未修改。

## 5. Benchmark 对比

| source | median us | min..max us | vsCB13 us/% | vsB28 us/% |
|---|---:|---:|---:|---:|
| baseline_v28 | 156.882000 | 156.764000..157.066000 | 63.175500/67.418482 | 0.000000/0.000000 |
| parent_v113 | 93.706500 | 93.450000..93.937000 | 0.000000/0.000000 | -63.175500/-40.269438 |
| candidate_v131 | 86.656000 | 86.548000..86.717000 | -7.050500/-7.524024 | -70.226000/-44.763580 |


中位vsCB13−7.524024%，两round−7.598192%/−7.462097%，maxC86.717<minP93.450，无区间交叠。全部raw us：{"baseline_v28": ["156.913000", "156.851000", "157.066000", "156.764000"], "parent_v113": ["93.558000", "93.855000", "93.450000", "93.937000"], "candidate_v131": ["86.625000", "86.548000", "86.687000", "86.717000"]}。高点/控制样本均保留，不追加取好结果，不pool129/230/232异版异卡。原event包围50Python calls，含hostenqueue，非纯kernel。四candidate同seed官方输入检查，不宣称四种不同输入覆盖。本版仅SC selectedC6收益，不是全14/no-reg/OJ。

## 6. Profile 指标变化

无新mcProfiler/trace/resource/IR，UNAVAILABLE。本版引用131 actual98MT22ST/max4/stack0/dyn8192和32MMA/i32defuse，仅编译事实；本次正确性/端到端收益是独立实测，原因未唯一定位。995个.5swholeCG样本OOM13不增，观测peak 27518451712 B仅下界、不是futureupperbound，工程预算不保证后续安全。

## 7. 实验总结

selected_SC_C6_local_gain_requires_leader_combination_full14_review。正确性完整4C12、两轮更快/无交叠支持当前case6本地收益；组合后全14/所有其他case性能和OJ必须继续验证。sourceccc/header131/Main429/best113/leader其他源码保持，不自动promote、profile或追加native。source+原12CSV/truewait/guards闭环，后续由leader选择获益组合和正式全14队列，不能把编译98MT或源相同作为性能免责。
