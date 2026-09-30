# codex-power v007：case6 两组 wave 分工（sc-16g-2）

## 1. 上轮问题与假设

用户指定的 `ffa68b684e3876df2821fe34c9959493c2ca065a` 起点在 sc-16g-2 上 case6 为约 220 µs。独立构造的 v006 移除了最终 output shared 往返，case6 全项交错中位为 **216.286 µs**，但设备时间仍约 214.5 µs。本版只对 S1/BS32/D128/G16 的 case6 把 CTA 从 64 提到 128 线程，让 QK/PV 和输出 fragment 分给两组 64-thread wave。预测每线程矩阵/输出工作减少并降低端到端耗时，其他形状保持 v006。

## 2. 实现与编译修正

初版 128 线程源码在 FP32 `scores` 与 FP16 `scores_half` fragment 间触发 TileLang layout infer conflict，源码与日志已保留。随后仅在 case6 将 FP16 权重存入 shared，保留 128 线程、v006 直接全局输出及原数学流程。最终候选和精确提交稿 SHA-256 同为 `3d3f1b6d3b7bfb98a3ed19b665e412ac1871e77f3a9d14c8a9d6c4cf1e13ead7`。源码只用用户指定的三条导入，辅助类不在模块顶层，也无 async copy、foreign code 或 Torch GPU 替代计算。

## 3. 正确性与代码隔离

v007 开发源码和精确 `submission/v007_codex_power_s1_two_waves_sc-16g-2/submission.py` 各 **14/14 PASS**；目标 case6 与 v006 交错 **8/8 PASS**，全 14 项 v000/v007 交错 **56/56 PASS**。计时入口为项目原生完整参考、warmup 10/repeat 50。精确提交稿和 14 份生成设备 C++ 均通过 AKO4ALL 静态扫描。case6 的设备和 host 启动代码改变，后者反映 64→128 线程；其他 13 项两类代码均逐字相同。最初的代码隔离脚本误要求目标 case6 的 host 启动代码相同，已修正并保留首次日志。

## 4. Benchmark 对比

| 来源 | case6 延迟 | 正确性 | 口径 |
|---|---:|---:|---|
| 原始起点 v000 单轮 | 220.641 µs | 14/14 PASS | 完整参考、warmup10/repeat50 |
| v006 单轮 | 216.392 µs | 14/14 PASS | 同一入口 |
| v007 候选单轮 | 159.841 µs | 14/14 PASS | 同一入口 |
| v007 精确提交稿首轮 | 158.889 µs | 14/14 PASS | 同 SHA，case10 计时异常 |
| v006→v007 八次交错中位 | 216.566→159.447 µs | 8/8 PASS | 快 26.37% |
| v000→v007 全项交错的 case6 中位 | 220.618→159.747 µs | 56/56 PASS | 快 27.59% |

全项交错逐 case 中位延迟和 **0.648495→0.586947 ms**，低 **9.49%**。非目标形状虽然设备代码不变，短时计时仍有波动；可归因收益集中在 case6。精确提交稿首轮 case10 为 **74.573 µs**，同源码其他测量约 14 µs；本版不把这一次异常均值算成性能结论，异常日志已留存。精确提交稿再次复测 14/14 PASS，case10 回到 14.141 µs，case6 为 159.237 µs，14 项平均 41.930 µs；整版结论以交错测为主。

## 5. 设备 Profile 与资源

| 指标 | 原始起点 v000 | v007 |
|---|---:|---:|
| mcTracer case6 kernel 中位（末20次） | 218.112 µs | 157.440 µs |
| mcTracer kernel 间隙中位 | 2.816 µs | 2.816 µs |
| MXCC MT/ST registers | 60/24 | 46/24 |
| MXCC staticMaxWarps/PEU | 8 | 8 |
| mcProfiler achieved/dispatched waves | 8192/8192 | 16384/16384 |
| global read/write | 37.608/33.555 MB | 37.599/33.559 MB |
| L2 hit | 65.05% | 73.54% |
| shared 无冲突访问比例 | 44.19% | 75.64% |
| 每条指令平均冲突额外周期 | 4.65 | 1.10 |
| 平均 load 延迟 | 53.455 cycles | 48.655 cycles |
| MTE/MMA duty | 25.990/4.220% | 49.150/5.800% |
| mx-smi 物理 HBM 稳态中位 | 320.424 GB/s | 441.001 GB/s |

两版 mcTracer 各有 31 次目标 kernel，取最后 20 次。设备中位改善 **60.672 µs**，与全项交错 case6 约 60.9 µs 一致；调用间隙未变。mcProfiler 每版两个目标样本，v007 的 waves 恰好翻倍，与 128 线程对 64 线程的变更相符。计数器百分比不能换算成阶段耗时；读写字节近似相同，HBM 中位上升反映更短时间完成相近工作，不能解释为拥有更多 HBM 配额。HBM 两版均 66 个采样，去首尾各 5 后 56/56 活跃；XCORE/MC 都为 **1125/1800 MHz**。生成 C++ 的每线程 `output_acc` 从 32 降到 16，MXCC 无 stack。当前安装的 MXCC 不支持 `-S`，没有可靠 ISA 反汇编；结论基于设备 C++、资源和运行 profile。

## 6. Roofline 与可归因范围

case6 QK+PV 约 **2.147 GFLOPs**，Q/Output、唯一 K/V 工作集和索引最低约 **71.336 MB**，强度 **30.10 FLOP/B**。保守单租户 1400 GB/s 与物理理论 1843.2 GB/s 的理想 HBM 传输下界分别约 **50.95/38.70 µs**，低于观测 157–218 µs；不能声称原始 HBM 带宽已经饱和。这个最低字节模型与 mcProfiler 的请求计数口径不同，不强行等同。当前可归因的变化是 case6 分工、fragment 大小、资源和设备时间；其余 13 项内核逐字相同，整版是否在线提分需要外部 OJ 的全向量验证。

## 7. 结论与外部 OJ 状态

**v007 是 codex-power 分支迄今最好的本地候选。** 从用户指定的原始内核出发、未复制此前优化内核代码，本轮 case6 通过两组 wave 和必要的 FP16 shared 权重桥接，使目标端到端中位快约 27.6%；全项中位延迟和下降约 9.5%。完整参考、精确文件、交错计时、生成代码、资源、mcTracer、mcProfiler 与 HBM 支持这一局部结论。

外部 OJ 尚未提交，`OJ_PENDING.md` 给出精确文件和 SHA。当前根 `nsa/submission.py` 保留用户指定起点，归档的 `submission/v007_codex_power_s1_two_waves_sc-16g-2/submission.py` 是可上传候选。本地改善并不证明已超过此前 OJ 较优实现，也不证明线上其他项分数不变。下一步继续独立优化 S8 等剩余热点，或由用户用精确 SHA 获取全 14 项 OJ 分数后再决定是否晋升。
