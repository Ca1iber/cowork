# v132 C301 原C8 SC独立crosscheck（sc-16g-2）

## 1. 上版本遗留问题

worker2 C230独立C8本地screen约−1.96%，并非sc上的证据或全14。leader生成C3018519/header301，CB13完整十八AST加唯一C8 bound-index factory/dispatch，其他13源保持。此前C300 C9组合全14多项正差不推广，其数据与本版独立，不挑选或拼样本。

## 2. 问题原因分析

仅validguard内bounded_start=min(max(rawstart,0),4080)用于K/Vrows，官方B2/L4096/BS16合法idx0..255地址恒等；原Idx/guard/causal/数学/布局/global16B/sync未改。主比较CB13而非异卡P84数据。候选SC CPP/IR/resource没有导出，明确UNAVAILABLE，不套C6的32MMA或异卡38MT。源码与资源/访存原因不能替代本机原native，no HBM/occupancy/单cause结论。

## 3. 本版本解决方案

固定B28-CB13-C301-C301-CB13-B28两round，独立12freshprocess原C8，seed0/F16GradTrue/fullnaive1e-2/W10R50。实际4C12inclusive检查PASS、全部原native/outerwait0，无append或extra sample。leader拥有源码，worker1仅helper、CPU sourceproof和原native验证。

## 4. 具体落地策略

逆变换decoratedfactory完整AST还原当前CB13 _make_power_s1_case4_dense，正确JIT保留。独立K65536+V65536完整16Bvector/halfmax524287/末byte1048575、1024值/block、全旧新地址/对齐/边界一致，staticvalidator原wait0。父C8已归档111 device24237/host5285引用作scope，candidateSCcodegen仍未知。

预检17deps+shared6 `.items()`，6GiB+22工程估计+4reserve/28runtime/OOM13/unknown1GiB/.5/600/1s/originalPopen/priorabort/exactunownedNode/cooplock全保持。cell1014自动reviewdeadline超时未执行，leader只读确认phase与启动标记未写；工具明示一次小pure-Sfreeze重试完成，随后FIRST ACTUAL唯一launcher616017，无native重跑。记录GO_freeze与原wait，未删除onceguard或改预算。v131 source保持冻结、不与此并发。

## 5. Benchmark 对比

| source | median us | min..max us | vsCB13 us / % | vsB28 us / % |
|---|---:|---:|---:|---:|
| baseline_v28 | 51.763500 | 51.692000..51.794000 | 11.039000 / 27.106533 | 0.000000 / 0.000000 |
| parent_v113 | 40.724500 | 40.530000..40.924000 | 0.000000 / 0.000000 | -11.039000 / -21.325838 |
| candidate_v301 | 39.833500 | 39.670000..40.172000 | -0.891000 / -2.187872 | -11.930000 / -23.047128 |


候选中位vsCB13−2.187872%，两round−2.193876%/−1.973014%，maxC40.172<minP40.530，区间不交。所有raw us：{"baseline_v28": ["51.789000", "51.738000", "51.794000", "51.692000"], "parent_v113": ["40.924000", "40.530000", "40.817000", "40.632000"], "candidate_v301": ["39.670000", "39.997000", "40.172000", "39.670000"]}。原event包围50Python calls，含hostenqueue，非纯kernel。四candidate是同seed官方输入重复参考检查，不宣称不同输入覆盖。此为selected SC case8本地收益，非full14/no-reg/OJ；不pool230/231异卡latency或profiler records，也不据其他13源相同豁免performance。

## 6. Profile 指标变化

本版无新metadata/postexport/独立SDKresource/IR/mcProfiler/trace，UNAVAILABLE。原native有正常JIT与GPU运行，不把“无独立compile阶段”说成零GPU或无编译。995个.5swholeCG样本OOM13不增，观测peak 27504517120 B是采样下界，非未来上界；工程预算只证明本次完成。

## 7. 实验总结

状态selected_SC_C8_local_gain_requires_leader_full14_review。selected4C12完整通过且两轮负/无交叠，支持本机case8收益；完整全14另需leader正式排期和actual比较。保留source8519/header301/main429/best113，不自动推广或追加测试。132原CSV与全部truewait/失败审批timeout归档；131编译/后续C301 full14必须独立GO且串行。
