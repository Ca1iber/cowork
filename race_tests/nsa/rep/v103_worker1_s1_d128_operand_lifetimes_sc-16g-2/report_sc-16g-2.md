# codex-power v103 worker1：C6 plane-first PV/Output失败记录

## 1. 上版本遗留问题

v102固定freshproc证明该协议可完成，但C101直接8B Q/K比84慢9.071843%，不做formal。本轮仅C6，保留所有global16B，不把去shared/少MT当必胜。main仍原v28，数值parent为84 exact4c，sourceHEAD694b。

## 2. 问题原因分析

fresh C6 parent确实100MT/22ST、dynamicshared8192B、stack0、staticmax4；Num32float，Q32half，Voperand仅16half已分64D。shared100%/conflict0，WG-load47.12/47.15cycles，MTE49.53/49.34%、MMA10.50/10.45%、L2 64.95%。写32MiB+416/+320B均满足事前0..512必要scope，非exclusive或HBM流量证明。没有已确认单一dominant瓶颈，静态max不是occupancy。

## 3. 本版本解决方案

只C6 PV按plane64→keytile→chunk，Num16fragment复用代替Num32；每feature仍key0后key1。den原来在V之前、P8resident不移动，不新增P缓存。Num归一化后F16写入已消费V0区，下一plane再clear；Q/K/V global16B和最终packed16B地址/次序原样。

真实布局：V0半元素[0,2048)、V1[2048,4096)，输出lower[0,1024)、upper[1024,2048)。qk_slot是panel布局非row128线性。所有1024个V4half vector与输出vector穷举完整touchset及对齐。plane0读后full64sync保护earlywrite，最后reader前full64sync，所有旧Q/K/V保护保留。

## 4. 具体落地策略

source/tmp/nsa_power_v103_pv_plane.py，SHA2a56f48e011d50cb0de4401d851161fd9d314cf03327f4f399e10389cfc5e7e0，header103/3imports，parent整体AST prefix精确、仅exact C6key覆盖，其他13不改。worker2直接审阅alias/sync/Numclear/Pden风险后leader GO。

metadata0attention/0ref，实际Num16、90MT/24ST/max5/stack0，共享8KiB；globalQKV与Output皆uint4 16B。CPP clear→两个keyPV→divide16→plane0sync→F16 WGstore→nextclear→finalsync，支持机制实际物化。首次static子命令仅源路径拼写错，初始1/stage1及脚本保留；只manifest-derived validator复核既有同source/device0，不重跑metadata或改source。

一次既有run_variant C6 freshproc B-P-C-C-P-B两轮，原fullnaive_nsa/seed0/F16/causal/1e-2/W10R50。source/runtime/monitor按manifest，所有12真实terminal0/OOM11不增；不重复取好、不自动formal。

## 5. Benchmark 对比

仅C6 B8/L1024/H1/HQ16/D128/S1/BS32/F16/causalTrue，同sc-16g-2。4候选完整naive_nsa/总12含对照，各job真实terminal0，warm10/repeat50；只selectedscreen，不称全14。event包含50次Pythoncall，不作纯GPU时间解释。

| source | 全部样本us | 中位us |
|---|---|---:|
| baseline_v28 | 156.324000, 156.631000, 156.339000, 156.564000 | 156.451500 |
| parent_v084 | 93.215000, 93.778000, 93.425000, 93.737000 | 93.581000 |
| power_v103 | 95.908000, 96.384000, 96.026000, 96.174000 | 96.100000 |

对parent84中位耗时 **+2.691786%**。所有候选95.908–96.384us高于所有父版93.215–93.778us，两range不交叠。

| round | parent84 us | v103 us | 对84变化 |
|---|---:|---:|---:|
| 1 | 93.496500 | 96.146000 | +2.833796% |
| 2 | 93.581000 | 96.100000 | +2.691786% |

原summary继承的ranges_overlap判式实际为“非allCbelow”，错误把allCabove标true。原JSON/使用脚本保留，corrected_interval_analysis.json单独核验真正interval intersection为false；不改raw、不重测，拒绝结论不变。

## 6. Profile 指标变化

编辑前fresh parent两sample valid必要scope与100MT资源已记录。candidate预编译Num16/90MT/24ST/max5，staticmax不是实测occupancy；所有global16B/7sync保持，actual物化且静态资源减10MT。候选新GPU profiler未采集：固定screen已明确变慢，停止扩大验证；不假造MTE/MMA/occupancy变化。

| compiler/host资源 | parent84 | v103 |
|---|---:|---:|
| Num localfloat | 32 | 16 |
| MT | 100 | 90 |
| ST | 22 | 24 |
| staticmaxwarp | 4 | 5 |
| dynamicshared B | 8192 | 8192 |
| stack B | 0 | 0 |

每feature key0→key1正确性保留，但Num16意味着同时活跃独立accumulator组从8变4，earlydivide/cast/store插入两个plane之间，是可能影响指令并行性的机制风险；没有ISA/timeline或candidate counters确认唯一因果。source/CPP工作量观察不是动态instruction count。

## 7. 实验总结

rejected_case6_latency_regression_vs_v084。静态资源与Num16预测成立、4次完整正确性通过，时延反而慢2.691786%，两round均正且allCaboveallP；明确否定此实现，不formal、不adaptive重试。main429/parent4c保持，exact2a56仅归档失败候选，无新OJ分数。old静态参数1与rangeflag错误原样保留并分别恢复/派生核验，未重做数学数据。peer心得记录少MT/少WG工作不保证收益，任何新方向先peer与leaderreview。
