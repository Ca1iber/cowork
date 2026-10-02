# v200 worker2：subagent2 本机基线与 profile 诊断

## 1. 上版本遗留问题

共同代码基线为 commit7bb0e33b、v084 SHA4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0。用户 OJ 结果把 case5、9、8 列为本 worker 的优先投入对象，分数不是物理瓶颈证明；不能直接采用 sc-16g-2 的绝对耗时判断新机器上的收益。

## 2. 问题原因分析

已验证：新机器 hostname6b3727803ca4，16GB/25% Compute sGPU，32GiB CPU cgroup；同步源码、五个运行库哈希及 shared native/reference/shapes 哈希一致。第一次 import 因 build/tvm 搜索目录缺失 exit1；恢复空目录后 import0，原 nativecase5 环境 gate0、1个完整 reference、24.812us、OOM0。该迁移问题不是算法性能退化。该单次耗时不作为优化结论。

当前推测：UNKNOWN；必须由当前机器的 native/profile/codegen 联合证据选择下一机制。WG-load 指标属于 Workgroup Memory，不是 DRAM；staticMaxWarps 不是实测 occupancy。

## 3. 本版本解决方案

本版本没有 kernel 修改。固定原 v28 与 v084 两个黑盒代码源，在本机建立全14正确性和计时对照；再对 case5/8/9 做每 source2样本的 mcProfiler，并捕获对应实际生成代码和资源。没有新候选提交稿，也没有优化收益 verdict。

## 4. 具体落地策略

每 case freshprocess，B28-P84-P84-B28，直接调用原 native _run_one_case。seed0、float16、requires_gradTrue、no_grad naive_nsa、原 tolerance、预热10/计时50 全部不变。计划56完整 reference=28原版+28parent，candidate0；环境1reference单独计数。profiling 使用现成 requires_gradFalse driver，0reference；六 CLI job×counts2=12样本。native 后才能 profile/resource，重任务串行。路径详见 diagnostic_plan.json、hack/README.md。

## 5. Benchmark 对比

本版本仅建立控制基线，没有 kernel 修改、candidate0。56个原 native 完整 reference 全部 PASS：原版28 + v08428。每 case/source只有2次测量，B-P-P-B固定顺序；环境 smoke另1个parent reference不并入56。单位us，范围完整保留。

| Case | 原v28中位数/范围 | v084中位数/范围 | v084相对原版 |
|---|---:|---:|---:|
| 1 | 9.763840 / 8.944640–10.583040 | 8.629760 / 8.611840–8.647680 | -11.615% |
| 2 | 9.630720 / 9.410560–9.850880 | 9.510400 / 9.149440–9.871360 | -1.249% |
| 3 | 11.921920 / 11.919360–11.924480 | 10.319360 / 10.168320–10.470400 | -13.442% |
| 4 | 12.884480 / 12.508160–13.260800 | 11.345920 / 11.038719–11.653121 | -11.941% |
| 5 | 30.942721 / 30.807040–31.078401 | 24.373761 / 24.360960–24.386561 | -21.229% |
| 6 | 156.290560 / 156.062717–156.518402 | 94.325762 / 94.320641–94.330883 | -39.647% |
| 7 | 31.464959 / 31.063039–31.866879 | 24.560640 / 24.550400–24.570880 | -21.943% |
| 8 | 51.653120 / 51.563520–51.742721 | 40.115201 / 39.843841–40.386562 | -22.337% |
| 9 | 51.814401 / 51.804161–51.824641 | 40.330238 / 40.033278–40.627198 | -22.164% |
| 10 | 11.601920 / 11.591680–11.612160 | 10.536960 / 10.321920–10.752000 | -9.179% |
| 11 | 23.022081 / 22.988801–23.055360 | 19.200000 / 19.107840–19.292160 | -16.602% |
| 12 | 83.143683 / 83.102722–83.184643 | 71.974400 / 71.966720–71.982079 | -13.434% |
| 13 | 10.526720 / 10.521600–10.531840 | 10.099200 / 9.456640–10.741760 | -4.061% |
| 14 | 19.312640 / 19.215360–19.409920 | 15.383040 / 15.298560–15.467520 | -20.347% |

负差表示更快。这些是同机器已存在代码的诊断，不能称新优化或新 OJ 分数。短case2/13范围重叠，case1原版范围8.94464–10.58304us保留，不以噪声名义删除。native CUDA events包住50次Python run_kernel调用，host enqueue间隙可能贡献计时范围；没有定量CPU/GPU拆分，也不能称纯shader时间。

## 6. Profile 指标变化

固定6个CLI全部外层exit0，捕获12个raw JSON记录，**不是12个有效样本**。C8原版两个记录均缺counter值（原始字符串cannot get values from data）；同job早期Killed line234在约03:22:02、target初始化约03:22:07之前，cgroupOOM0→1。被kill具体子组件UNKNOWN，dmesg访问被拒绝，不推断无害或destructor原因。C9parent sample1写字节残差576超过预声明0..512B；保留该预测反证，不扩大阈值。

原analysis1/post1保持不变，trace排队任务因门禁失败跳过，未执行mcTracer GPU任务。独立forensic parser仅导出既有raw：12records、10numeric、9满足原scope、2不可用、1数值scope失败；不会恢复原gate。没有重采native/profile。

| Case/source | 样本数/原scope通过 | Shared非冲突% | WG冲突cycles | WG-load cycles | MTE% | MMA% |
|---|---:|---:|---:|---:|---:|---:|
| 5/baseline_v28 | 2/2 | 35.850/35.850 | 6.800/6.800 | 106.130/107.220 | 46.890/47.470 | 4.550/4.600 |
| 5/parent_v084 | 2/2 | 100.000/100.000 | 0.000/0.000 | 50.860/51.030 | 66.990/65.430 | 6.660/6.500 |
| 8/baseline_v28 | 2/0 | NA/NA | NA/NA | NA/NA | NA/NA | NA/NA |
| 8/parent_v084 | 2/2 | 100.000/100.000 | 0.000/0.000 | 50.510/50.540 | 67.970/67.800 | 6.750/6.740 |
| 9/baseline_v28 | 2/2 | 35.850/35.850 | 6.800/6.800 | 106.930/106.000 | 49.800/49.490 | 4.950/4.920 |
| 9/parent_v084 | 2/1 | 100.000/100.000 | 0.000/0.000 | 50.080/50.180 | 70.960/71.560 | 7.070/7.130 |

WG-load属于Workgroup Memory issue-to-memopsdone，不是DRAM/global load latency。非冲突100%表示该访问分类；不说明删除shared一定更快。MTE/MMA duty比例不等HBM throughput，GlobalReadbytes不是未经证明的HBM实流量，Achievedwaves不等occupancy。波形/输出payload footprint是必要一致性，不是独占物理卡的证明。native inputs requires_gradTrue；现成profile driver requires_gradFalse、warm10+20range calls，与官方W10R50不同，0reference。

以下6份资源捕获独立使用既有actualCPP执行一次，0attention/0reference，exit0；没有重跑失败post。

| Case/source | MT | ST | 动态shared B | Static maxwarp/PEU | Stack B |
|---|---:|---:|---:|---:|---:|
| 5/baseline_v28 | 34 | 22 | 4096 | 8 | 0 |
| 5/parent_v084 | 42 | 20 | 2048 | 8 | 0 |
| 8/baseline_v28 | 34 | 22 | 4096 | 8 | 0 |
| 8/parent_v084 | 42 | 20 | 2048 | 8 | 0 |
| 9/baseline_v28 | 32 | 20 | 4096 | 8 | 0 |
| 9/parent_v084 | 42 | 20 | 2048 | 8 | 0 |

编译器static_shared报告0与host动态shared分开；static maxwarp不是实测occupancy，stack0不等所有private spill证明。fresh C5 parent actualCPP显示：Q/K global16B→shared8B；V global16B→shared4B→operand8B；output shared8B写/8B读→global16B。该输出阶段存在，但其耗时占比未量化。

## 7. 实验总结

结论：**诊断部分证据完成，profile不完整且存在scope反证/OOM事件**；没有新kernel/candidate/提交稿。原native56通过与profile失败独立表述，环境1ref单列。main submission原v28 SHA429和archived parent SHA4c保持，原shared runner/reference/shapes不变。

C5有效两source×2raw与actualCPP/resources支持提出一项可证伪机制供peer及leader评审：只针对C5尝试删除output shared staging，保持numerator/den和F32→F16完全同parent，改为MFMA lane坐标直接8B globalstore。这是未经验证的假设：可删2个同步和每query2KiB WG写+2KiB WG读，但每lane由2×16B连续store变4×8B stridedstore，可能增加store issue/sector成本。下一版仅在leader批准后编辑，不改变其他case。详细索引证明/反向预测见experiments/next_mechanism_proposal.md。

mcTracer实际/opt/maca/bin存在但notinPATH；初始PATH清单不能说toolabsent，help0/version已记录。ISAdecoder与本机校准HBM/compute roof缺失，trace因失败gate未跑；没有伪造roof/occupancy/launch-gap量化。见UNAVAILABLE.md。
