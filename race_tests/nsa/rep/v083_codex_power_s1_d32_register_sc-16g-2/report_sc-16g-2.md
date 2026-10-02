# codex-power v083：case1 D32 direct-register

## 1. 上版本遗留问题

v082 C3快16.2%，但case1固定相对v28 +5%，故拒绝。本版从v081候选回起，仅新增C1，不包含被拒绝的82 kernel。主入口仍原始v28。

## 2. 问题原因分析

fresh C1原路径probe64waves、65536payload+320B计数，residual来源未归因、scope仅必要条件。24MT/20ST、动态shared2048B，52.63% shared效率/conflict3.27，load39.48/40.64、MTE5.21/4.86、MMA0.33/0.32。小grid低duty不能直接定唯一瓶颈；host已有cache路径，class仅miss不是每call。初始分析0.1%相对写字节阈值不适合64KiB+320，已分析级修正，raw/测量未重跑。

## 3. 本版本解决方案

新设计64线程、16heads×16keys×32features：Q/K按MFMA fragment直接global8Bload，V按keyquarter/col16 scalarload，正常MFMA QK2/PV2；num8float、q/Vop8half、score/P4。无shared和memory barrier，Output直接global8Bstore。可能改变global事务效率或增加MT，不能只凭去shared宣称提速。

## 4. 具体落地策略

源码/tmp/nsa_power_v083_d32_register.py，SHAe89c6893b737962cec1ea25518f384e5b6241dbaa909a9483545daa2d4440f98，header v083、3允许import；整份parent81 AST为前缀，只附加exact C1 factory/lazykey。其余13个body/keys保持，C3仍原v28。初始13代码closure/0编译对象，首调完整attention后cache真实JITKernel，不缓存Tensor/内容/结果，不加热wrapper。

prove_d32验证Q/K/output512坐标完整、V/PV512完整，local vectoroffset0/1对应8extent，valid16row block在L64内。F32QK/max、FP16Pscale256、den同consumedP、F32PV。完整原native naive_nsa/seed0/F16/causal/W10R50/容差不变，每case独立进程B-I-C-C-I-B两轮，codegen在计时后且phase独立路径。C1 screen中位v28 9.19552/parent81 9.37984/83 8.94464us，样本明显重叠，不能当稳健收益。

新资源32MT/24ST/shared0/stack0/maxwarps8，实际host无shared。最初resource metadata用双括号0模式不匹配实际单括号(int64_t)0；compiler已exit0，仅解析既有raw修正，未重跑native。首次formal case5仅到tilelang库加载便137、OOM8→10，尚0参考，前4case完整。原失败保留initial_formal_import_exit137；仅case5同源码重试一次，后6–14首次执行，read-only内存监控；formal_recovery独立gate，不覆盖原137。无GPU设置/库/bench改变。

## 5. Benchmark 对比

原始完整naive_nsa、F16 causal seed0、W10R50/容差不变。B-I-C-C-I-B两轮各4样本，单位us。所有原始/固定复测数据保留，不以代码一致豁免退化。

| case | v28 | parent81 | v082 | vs v28 | vs81 |
|---|---:|---:|---:|---:|---:|
| 1 | 8.980480 | 9.154560 | 8.942080 | -0.428% | -2.321% |
| 2 | 9.943040 | 9.118720 | 8.988160 | -9.604% | -1.432% |
| 3 | 12.198400 | 12.523520 | 12.241920 | +0.357% | -2.249% |
| 4 | 12.864000 | 11.368960 | 10.903040 | -15.244% | -4.098% |
| 5 | 31.016959 | 24.714240 | 24.688640 | -20.403% | -0.104% |
| 6 | 156.712956 | 94.397440 | 94.461441 | -39.723% | +0.068% |
| 7 | 30.976000 | 24.898559 | 24.908800 | -19.587% | +0.041% |
| 8 | 52.487680 | 40.537600 | 40.527360 | -22.787% | -0.025% |
| 9 | 52.124160 | 40.286720 | 40.279038 | -22.725% | -0.019% |
| 10 | 11.896320 | 10.567680 | 10.593280 | -10.953% | +0.242% |
| 11 | 23.349760 | 19.517440 | 19.512320 | -16.435% | -0.026% |
| 12 | 83.499522 | 72.166400 | 72.117760 | -13.631% | -0.067% |
| 13 | 10.974720 | 9.751040 | 9.692160 | -11.686% | -0.604% |
| 14 | 19.870720 | 15.493120 | 15.459840 | -22.198% | -0.215% |

首轮相对任一对照正差的所有case固定复测一次。

| case | v28 | parent81 | v082 | vs v28 | vs81 |
|---|---:|---:|---:|---:|---:|
| 3 | 12.213760 | 12.224000 | 12.221440 | +0.063% | -0.021% |
| 6 | 156.951036 | 93.780479 | 93.644800 | -40.335% | -0.145% |
| 7 | 31.083520 | 24.732160 | 24.765439 | -20.326% | +0.135% |
| 10 | 11.906560 | 10.598400 | 10.611200 | -10.879% | +0.121% |

精确候选参考次数 90 覆盖14项；全组 242 includingcontrols. Target4/12,formal56/168,risk16/48,exactarchive14/14. 合并仅计一次，逐case副本/metadata/profile不是额外完整参考。

## 6. Profile 指标变化

fresh parent preprobe与native之后当前双版本mcProfiler各2样本。64waves/64KiB+小额未归因残量仅scope必要一致性；driverW10+20 gradFalse、nativeTrue，不宣称运行时等价。

| metric mean | parent81 | v082 |
|---|---:|---:|
| waves | 64.0000 | 64.0000 |
| read_bytes | 76704.0000 | 75808.0000 |
| write_bytes | 65856.0000 | 65856.0000 |
| l2_hit_pct | 76.2250 | 85.6300 |
| shared_nonconflict_pct | 52.6300 | 100.0000 |
| conflict_cycles | 3.2700 | 0.0000 |
| load_latency_cycles | 40.0150 | 0.0000 |
| mte_pct | 5.1650 | 4.4800 |
| mma_pct | 0.3300 | 0.3850 |

| source | MT | ST | stackB | dynamic sharedB | static maxwarps/PEU |
|---|---:|---:|---:|---:|---:|
| parent_v081 | 24 | 20 | 0 | 2048 | 8 |
| power_v083 | 32 | 24 | 0 | 0 | 8 |

静态shared与实际host动态shared分别记录；static maxwarps/raw achieved不是实测占用，保留minblocks警告。无ISA解码器/已标定sGPU roof，mcTracer前期124/仅header未新重试，mx-smi只读状态不是逐kernel带宽。

当前C1正式仅比v28快0.4276%、比parent81快2.321%，screen样本重叠，不能当稳健收益。C3固定比v28 +0.0628799%、C7比parent81 +0.13456%，所有原始/确认数据保留；按严格不退化门槛不提升，不能以字段未改或噪声猜测豁免。原formal137与case5恢复单独记录，metadata两次解析失配只改分析，不重跑native，候选SHA不变。

raw metric组和description核准：load_latency_cycles属于Workgroup Memory的WG-load从issue到memopsdone，conflict也是WG指令，不能叫global/DRAM load延迟。新kernel无shared，工具填100%eff/0WG-load/0conflict只是零访问的报告行为，不当有效效率100或global零时延。zero_shared_raw_metric_context留原始group/description，表格仅保留raw字段。

当前双版本：global read76704→75808B、write65856不变、L2 76.225→85.63%，MTE5.165→4.48、MMA0.33→0.385。shader去shared是真实改变、寄存器24/20→32/24，端到端对v28仅0.4276%，不能以这些counter替代稳定时延收益或消除其他case正差。OOM8→10原失败保留，恢复采样后10不变，仍不证明内存风险解除。

## 7. 实验总结

仅C1新分支，其他13个body/keys精确parent81。完整14 native正确性检查与正式/固定风险数据全部留存，外部OJ待核对，无退化未证明。本版只归档候选，主入口原v28与此前版本不变；source/资源/profile/端到端一起判断，不仅凭去shared宣称收益。
