# codex-power v100 worker1：case12 两块更新失败记录

## 1. 上版本遗留问题

共同父版v084 source4c674c79，commit7bb0e33b；case12用户OJ80分。worker1负责6/10/11/12，本轮只改C12，其他13路径保留父版AST。公共submission.py原v28不变。

## 2. 问题原因分析

fresh parent profile：MTE74.88/75.11%、MMA12.92/12.96%、L2 87.43%、shared100%非冲突/0冲突；WG-load50.42/50.39周期属于Workgroup Memory，不是global。高MTE不证明HBM瓶颈。自己开发的S8代码每块一次max归约和numerator rescale，是工作量观察，非已证明的主要瓶颈。资源80MT/22ST、2KiB动态shared、stack0、静态warp上限6。

## 3. 本版本解决方案

两块QK共用一次最大值更新与numerator rescale，8次selected改为4次pair。每pair8个scores/P，分别PV；P仍F16乘256，den累加同一实际rounded/scaled P。保留causal/sentinel，无效块无K/V访问；空pair跳过，单有效块另一个P为0。全部mask的参考本身NaN，没有新的empty-all契约。

## 4. 具体落地策略

仅exact key(4,1024,1,16,64,8,16,True)覆盖_make_power_s8_pair_iteration；初始14代码closure/0JIT，首调正常attention后換真实JITKernel，无数据cache。保留parent完整AST prefix、原坐标与同步/shared布局。

源码/tmp/nsa_power_v100_pair_iteration.py，SHA39e142971e79d40d4040f616ef57ac2186f524c09a7f7721e06082bc472a8edf；精确归档submission同版本。原native naive_nsa/seed0/F16 causal/1e-2/W10R50不变。C12 B-I-C-C-I-B两轮，仅selected screen。

第一次wrapper候选路径拼写错，在任何native前失败0参考；实际终态后只修复一次路径，原日志和linecache显示限制保留。后续三source统一manifest exists+SHA preflight；引入时间记录，不倒签。

生成CPP parent202行/selected<8，candidate226行/pair<4且inner<2。两QK后共同rescale再两PV，scores4→8；生成源码结构符合机制，静态文本不是运行时instruction计数。标准TileLang MFMA正常lowering，源码及三份device/精确归档validator全部通过。其他13路径数学保持不豁免性能。

## 5. Benchmark 对比

仅C12 B4/L1024/H1/HQ16/D64/S8/BS16/F16/causalTrue，同sc-16g-2；原native参考与W10R50不变。hack/run_target_screen.sh与run_case.py。

| v28 us | parent84 us | v100 us | 对84变化 | 对v28变化 |
|---:|---:|---:|---:|---:|
| 83.312640500 | 72.522239500 | 73.822720000 | +1.793216% | -11.390733% |

候选样本us：['73.932800000', '73.287678000', '73.840642000', '73.804798000']；父版：['72.540159000', '72.140799000', '72.673278000', '72.504320000']。全部候选高于全部父版，拒绝且不重复native、不启动formal。4候选完整参考/12含对照，仅case12；合并CSV计一次，副本不重复计数；wrapper初始失败/profile/metadata/static均0额外参考。

## 6. Profile 指标变化

当前paired mcProfiler各2样本，native后driverW10+20/gradFalse，不代替nativeTrue基准。4096waves/8MiB加事前0至512B残量，仅必要scope条件。WG-load属于workgroup，不是global/DRAM。

| 均值指标 | parent84 | v100 |
|---|---:|---:|
| waves | 4096.0000 | 4096.0000 |
| read_bytes | 9557152.0000 | 9559520.0000 |
| write_bytes | 8388928.0000 | 8388928.0000 |
| l2_hit_pct | 87.4300 | 87.4500 |
| shared_nonconflict_pct | 100.0000 | 100.0000 |
| conflict_cycles | 0.0000 | 0.0000 |
| WG_load_latency_cycles | 50.3450 | 49.5800 |
| mte_pct | 75.1450 | 66.9750 |
| mma_pct | 12.9550 | 12.7500 |

| source | MT | ST | dynamicsharedB | stackB | staticmaxwarps/PEU |
|---|---:|---:|---:|---:|---:|
| parent_v084 | 80 | 22 | 2048 | 0 | 6 |
| power_v100 | 98 | 32 | 2048 | 0 | 4 |

资源压力MT80到98/ST22到32/staticmaxwarps6到4，shared2048B/stack0不变。静态资源不是实测占用率，不单独证明退化唯一原因。

当前paired读计数parent9,557,152B、candidate9,559,520B，写均8,388,928B，waves均4096；L2 87.43%到87.45%，shared均100%/0冲突。WG-load均值50.345到49.58周期，但native反而慢；MTE75.145%到66.975%、MMA12.955%到12.75%也不代表提速。布局未动、冲突未变，不能将失败归因bank；资源压力/较长score生命周期是有证据的tradeoff线索，尚未通过ISA/timeline定量拆分因果。

## 7. 实验总结

rejected_case12_selected_screen_regression_vs_v084：生成代码机制成立，四次完整正确性通过，但中位对父版慢1.793216%，全部候选高于全部父版。保存失败证据，main不变，无全14或OJ提升宣称。下一阶段fresh parent case10 profile后向leader提交新假设，不无证据继续pair叠加。
