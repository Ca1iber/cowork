# codex-power v101 worker1：C10直接Q/K与运行时OOM失败记录

## 1. 上版本遗留问题

v100 C12两块共用online更新比v84慢1.793216%，资源MT80→98，已失败闭环9dc327b。本轮先fresh parent84 C10 profile再leaderreview，仅C10数据流，不重复pair方案。其他13条路径精确parent AST prefix，公共main仍原v28。

## 2. 问题原因分析

当前父版C10 profiler：256waves、写512KiB+320B、读593056B、L2 68.86%、shared100%非冲突/0conflict，WG-load45.87/45.83周期。MTE15.42/15.19%、MMA1.87/1.84%，不证明单一瓶颈。资源82MT/24ST、动态shared2KiB、stack0、staticmax5，非实测occupancy。

代码观察Q/K经过global16B producer、shared8B consumer，需要Q1次/K每块2次warp sync，S2共5次。该工作量尚未量化占比，已知bank conflict0，不做bank微调。

## 3. 本版本解决方案

Q/K直接按原MFMA坐标global到local fragment，保留逐块online softmax、实际rounded/scaled F16 P denominator、V/output shared布局及同步。Q/K每lane4half(8B)，16×64坐标穷举等价，但请求合并可能比原16B producer差。

删Q写后sync；删K写前/后sync。K前原保护前次V读→K写，K写不存在后真正下次shared写是V，仍保留V写前sync承担保护。V写前后及output前后全部保留。有效K start>=0且<=token、seq%16==0，推出start+15<seq；sentinel和负index不读取K。

## 4. 具体落地策略

source /tmp/nsa_power_v101_direct_qk.py，SHAe828f662199cccd32462389402776145390a96083f5748c649c0039b677c79f2，exact archive submission同版本，仅exact key(1,256,1,16,64,2,16,True)覆盖新factory。原3允许imports、header v101、无async/foreign/manualgeneralbuiltin或内容cache；parent4c AST prefix精确。

所有三source启动前单一manifest exists+SHA核验。先metadata-only precompile，0attention/0参考，resource gate stack0/staticmax>=5通过。实际device Q/K uint2 8B直接global→fragment，原uint4 16B→qk_fetch→shared。qk_fetch消失；static sync7→4，S2动态删5，V/output4处保留。候选device SHA3e9793ab，与后续失败screen导出精确相同。

C10固定B-I-C-C-I-B两轮，原seed0/F16 causal/naive_nsa/1e-2/W10R50不改。全部CSV12 PASS记录及三个exports/identity文件已发出，之后进程137；OOM计数10→11。具体cleanup/export/destructor组件未知，不称已成功完成screen。

自动审批拒绝native_complete/gate0写入，理由是可能掩盖不完整执行并错误放行。被拒操作未执行，原target_case10.exit/target_screen.exit137保留，没有formal/native/metadata重跑。leader指示以failed_runtime_OOM_screen_inconclusive关闭。peer worker2已收到mapping/sync/coalescing/OOM风险审阅请求，cowork workers/worker1/lessons记录交流。

## 5. Benchmark 对比

仅C10 B1/L256/H1/HQ16/D64/S2/BS16/F16/causalTrue，同sc-16g-2。下表是exit137失败进程已发出的CSV观察，不是通过的screen，也不是全14 verdict。

| v28中位us | parent84中位us | v101中位us | raw对84 | raw对v28 |
|---:|---:|---:|---:|---:|
| 13.660160000 | 12.352000000 | 11.788799500 | -4.559590% | -13.699404% |

| source | 全部样本us |
|---|---|
| baseline_v28 | 11.816961000, 14.028800000, 13.829120000, 13.491200000 |
| parent_v084 | 11.719680000, 13.081599000, 12.984320000, 10.752000000 |
| power_v101 | 12.062720000, 11.514879000, 13.736960000, 11.473920000 |

12条PASS记录、其中候选4条，每行对应原完整参考调用；仅合并计一次，不重复数CSV副本。precompile/metadata/profile/static为0参考。范围交叠和OOM10→11均保留；process/screen仍137，不把raw负差改为成功gate或promote。

## 6. Profile 指标变化

只有编辑前fresh parent当前C10 profile两样本，数据见parent_profile_metrics.json：256waves、read593056B、write524608B、L2 68.86%、shared100%/conflict0、WG-load45.87/45.83。MTE15.42/15.19%、MMA1.87/1.84%。失败gate后未为候选重新采profile，不能假造candidate counters或pairedprofile结论。WG-load是workgroup，不是global/DRAM。

| 资源 | parent84 | v101预编译 |
|---|---:|---:|
| MT | 82 | 70 |
| ST | 24 | 30 |
| staticmaxwarps/PEU | 5 | 7 |
| dynamicshared B | 2048 | 2048 |
| stack B | 0 | 0 |

precompile资源门禁通过，静态max不是实测occupancy，ST增长也保留。实际Q/K8B直接load和较少stage/sync符合机制预测，但失败运行和重叠样本不足以证明性能收益。无新timeline/ISA/已标定sGPU roof，不作HBM带宽或CPU/GPU拆分。

## 7. 实验总结

failed_runtime_OOM_screen_inconclusive。保留4候选/12含对照PASS行观察、完整metadata和实际资源改善，同时保留原137/OOM及自动审批拒绝。不启动formal、不重采native/metadata、不称全14/OJ提升，main仍原v28。经验与peer worker2直接共享，所有建议由各自owner修改计划并交leader批准，不直接修改对方代码。后续方向需先peer review再leader review。
