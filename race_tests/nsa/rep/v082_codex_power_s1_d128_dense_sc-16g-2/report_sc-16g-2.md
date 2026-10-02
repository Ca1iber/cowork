# codex-power v082：case3 S1 D128 16key dense kernel

## 1. 上版本遗留问题

v081 C3仍原始v28路径，正式12.25728us，固定复测相对parent80仍+0.083573%。本版只新增C3；其余已优化数学/dispatch与v081保持一致，主入口仍v28。

## 2. 问题原因分析

fresh parent81 C3 mcProfiler counts2、256waves/约1MiB输出匹配；shared效率35.24%、conflict7.16、load43.67/43.81，MTE10.45/10.34、MMA1.49/1.47。52MT/20ST/stack0/static maxwarps8，实际动态shared8192B。已观察冲突，未证明其端到端占比，小grid与host launch仍可能限制，不单凭duty认定唯一瓶颈。

## 3. 本版本解决方案

D128拆成两个64feature panel，每query 64线程，16key×16heads，正常16x16x16 f16 MFMA 8次QK/8次PV。qk/out按row128重新排布，V两个1024half片保留自建panel位排列。shared2048half=4096B，q/num/Vop32，score/P4；单block max、FP16Pscale256、FP32den同ConsumedP，全部输入在每次调用内重算。

## 4. 具体落地策略

源码/tmp/nsa_power_v082_d128_dense.py，SHA6d8b91f405043ddc4e26e515a54e894cb5e64b1c5c2a5fb9cb8428148f204616，header为# codex-power v082。parent81整份AST为精确前缀，只附加D128 factory与exact C3 lazy key；另13项生成代码应精确parent。初始13 key+factory closure、0已编译对象，首调完整执行后cache成为真实JITKernel。无数据缓存/热wrapper。

D128_coordinate_proof验证2048坐标bijective、Q/K全局copy、QK operand、V producer/PV operand、output覆盖与4half连续pack，MFMA local vectoroffset0..7在32extent内，valid16row block有界。证明不代替完整浮点reference。原v28只黑盒，不阅读以前团队kernel；新D128从自建panel设计推导，没有继承先前D128优化实现。

Target/正式/风险采用原native完整naive_nsa/seed0/F16/causal/W10R50/原容差；每case独立进程三源B-I-C-C-I-B两轮，codegen在计时后捕获、phase路径分离。C3 target4候选参考，target中位12.44672→10.61888us，快14.685%；所有4候选低于所有parent样本，仅称screen，不能代替全14/OJ结论。实际target资源66MT/20ST/stack0/maxwarps7、动态shared4096B；MT上升和static maxwarps下降并不等于实测occupancy结论。

## 5. Benchmark 对比

原始完整naive_nsa、F16 causal seed0、W10R50/容差不变。B-I-C-C-I-B两轮，各4样本，单位us。首轮与固定复测全保留，不以字节一致豁免时延。

| case | v28 | parent81 | v082 | vs v28 | vs81 |
|---|---:|---:|---:|---:|---:|
| 1 | 9.269760 | 9.187840 | 9.267200 | -0.028% | +0.864% |
| 2 | 9.735680 | 9.359360 | 9.154560 | -5.969% | -2.188% |
| 3 | 12.305920 | 12.293120 | 10.301440 | -16.289% | -16.202% |
| 4 | 12.897280 | 11.041280 | 10.946560 | -15.125% | -0.858% |
| 5 | 31.324160 | 24.734720 | 24.647680 | -21.314% | -0.352% |
| 6 | 156.689920 | 93.908476 | 94.010882 | -40.002% | +0.109% |
| 7 | 31.280640 | 24.627200 | 24.739840 | -20.910% | +0.457% |
| 8 | 51.975679 | 40.092158 | 40.355840 | -22.356% | +0.658% |
| 9 | 52.416000 | 40.578558 | 40.778242 | -22.203% | +0.492% |
| 10 | 11.750400 | 10.728960 | 10.887680 | -7.342% | +1.479% |
| 11 | 23.372800 | 19.576320 | 19.617280 | -16.068% | +0.209% |
| 12 | 83.320322 | 72.225280 | 72.227840 | -13.313% | +0.004% |
| 13 | 11.095040 | 9.792000 | 9.981440 | -10.037% | +1.935% |
| 14 | 19.827200 | 15.472640 | 15.434240 | -22.156% | -0.248% |

首轮相对任一对照出现正差的全部case固定复测一次。

| case | v28 | parent81 | v082 | vs v28 | vs81 |
|---|---:|---:|---:|---:|---:|
| 1 | 8.755200 | 8.742400 | 9.192960 | +5.000% | +5.154% |
| 6 | 156.705284 | 94.471678 | 94.458880 | -39.722% | -0.014% |
| 7 | 31.224320 | 24.637440 | 24.801280 | -20.571% | +0.665% |
| 8 | 51.850240 | 40.143359 | 40.028160 | -22.800% | -0.287% |
| 9 | 51.985920 | 40.343042 | 40.289280 | -22.500% | -0.133% |
| 10 | 11.965440 | 10.577920 | 10.600960 | -11.404% | +0.218% |
| 11 | 23.357440 | 19.543040 | 19.540480 | -16.342% | -0.013% |
| 12 | 83.276801 | 72.294400 | 72.158718 | -13.351% | -0.188% |
| 13 | 10.882560 | 9.338880 | 9.274880 | -14.773% | -0.685% |

精确候选参考次数 110 覆盖14项；全组 302 includingcontrols. Target4/12,formal56/168,risk36/108,exactarchive14/14. 只计合并文件，逐case副本、metadata/profile不重复计完整参考。

## 6. Profile 指标变化

先fresh parent preprobe，native结束后再当前双版本mcProfiler各2样本。256waves/1MiB scope一致仅必要条件。driverW10+20 requires_grad=False，native=True，不宣称运行时等价。

| metric mean | parent81 | v082 |
|---|---:|---:|
| waves | 256.0000 | 256.0000 |
| read_bytes | 1181024.0000 | 1180256.0000 |
| write_bytes | 1048896.0000 | 1048896.0000 |
| l2_hit_pct | 56.5050 | 55.7800 |
| shared_nonconflict_pct | 35.2750 | 80.4900 |
| conflict_cycles | 7.1450 | 0.8900 |
| load_latency_cycles | 43.8300 | 50.7850 |
| mte_pct | 10.4600 | 12.9050 |
| mma_pct | 1.4950 | 1.9150 |

| source | MT | ST | stackB | dynamic sharedB | static maxwarps/PEU |
|---|---:|---:|---:|---:|---:|
| parent_v081 | 52 | 20 | 0 | 8192 | 8 |
| power_v082 | 66 | 20 | 0 | 4096 | 7 |

静态shared0不是总量0，动态shared取实际host；static maxwarps/raw achieved不是实测占用，保留minblocks警告。没有可用ISA解码器或已标定sGPU roof；mcTracer前期124/仅header，本版未重试。mx-smi仅只读状态，不是逐kernel带宽/占用。

缓存host结构只读AST审计：run_kernel已有key/get/if-miss/call快速路径，class仅在miss分支，未发现每call重复定义class；因此不据此另改host。GPU代码一致不解释也不豁免case1 +5%，剩余时延来源未验证。

当前双版本C3计数：shared35.275%→80.49%、conflict7.145→0.89，MTE10.46→12.905、MMA1.495→1.915；但load43.83→50.785变差、L2 56.505→55.78略降、流量近似相同。shared8→4KiB、MT52→66、static maxwarps8→7。端到端目标改善16.202%，指标支持布局/供给变化，不能据单计数断言唯一瓶颈或实际占用变好。case1固定+5%是独立退化门槛失败，不因C3收益或上述指标豁免。

## 7. 实验总结

仅新增C3，其余13个body/keys精确parent81。全14 native正确性通过，正式/风险所有正差保留；外部OJ分数待核对，无退化尚未证明。本版rejected：case1固定确认相对原始v28 +5%、相对parent81 +5.154%，未通过本地无退化门槛；只归档候选，主入口原v28与此前候选不变。结合实际资源/profile/端到端判断，不把收益全归因bank冲突。
