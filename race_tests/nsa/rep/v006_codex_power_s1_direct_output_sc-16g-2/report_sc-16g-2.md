# codex-power v006：case6 直接写输出（sc-16g-2）

## 1. 起点与问题

分支从用户指定的 `ffa68b684e3876df2821fe34c9959493c2ca065a` 建立，v000 精确原始源码 SHA-256 为 `462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1`。v004 新快照下 case6（B8/N1024/H1/HQ16/D128/S1/BS32）原参考 PASS，官方端到端 **220.974 µs**、设备中位 **218.624 µs**。起点生成 C++ 的最终 FP32 输出经过 FP16 output shared，再同步并搬到全局；对应两个靠近输出阶段的同步点。v005 显式 K/V swizzle 被编译器折叠为基线相同设备代码，已封存。

## 2. 假设与实现

本版只对 case6 编译期形状用 TileLang `T.Parallel` 将 `output_acc` 的每个元素直接写入全局 Output，依目标 dtype 完成 FP16 转换；其余形状保留用户指定起点的计算路径。预测移除 output shared 往返和同步，设备端降低数微秒。候选来自起点源码直接构造，不复制此前优化内核；精确候选和提交稿 SHA-256 同为 `20b816ab98e11584ad2e271c2c5feb5e640e79bc244d74656dbd45f16f21fca6`。根 `nsa/submission.py` 当前保持起点，实验提交文件位于 `submission/v006_codex_power_s1_direct_output_sc-16g-2/submission.py`。

## 3. 正确性、代码隔离和 OJ 规则

v000 基线、v006 候选与精确提交稿各 **14/14 PASS**；使用项目原生完整 `naive_nsa` 参考、warmup 10/repeat 50。全 14 项交错 **56/56 PASS**，目标 case6 反向重复交错 **8/8 PASS**。源码恰好使用用户限定的三条 import，无顶层 class、异步拷贝、外部设备代码或 Torch GPU 替代计算。精确提交稿及 14 份生成设备 C++ 均通过 AKO4ALL 静态规则。14 项 host 代码全部相同，13 个非目标形状设备代码逐字相同；只有 case6 设备代码改变。case6 静态 CTA 同步站点 **7→5**，输出写入不再经过 shared；生成 C++ 仍保持数值转换。

## 4. Benchmark 对比

| 来源 | case6 延迟 | 正确性 | 口径 |
|---|---:|---:|---|
| v000 起点单轮 | 220.641 µs | 14/14 PASS | 完整参考，warmup10/repeat50 |
| v006 候选单轮 | 216.392 µs | 14/14 PASS | 相同入口 |
| v006 精确提交稿单轮 | 216.525 µs | 14/14 PASS | 与候选同 SHA |
| ABBA 目标八次中位 v000→v006 | 220.700→217.262 µs | 8/8 PASS | 快 1.56% |
| ABBA 全项 case6 中位 v000→v006 | 220.595→216.286 µs | 56/56 PASS | 快 1.95% |

单轮 14 项平均为 v000 **46.216 µs**、候选 **45.610 µs**、精确稿 **45.568 µs**。全项交错逐 case 中位和为 **0.642057→0.637882 ms**；其余形状虽然设备代码相同，局部计时仍有噪声，因此可归因的本地收益是 case6 约 3.4–4.3 µs，不能把上述中位和直接当 OJ 提分。原始逐项 CSV 全部归档。

## 5. Profile 与资源变化

| 指标 | v000 | v006 |
|---|---:|---:|
| mcTracer case6 kernel 中位（末20次） | 217.984 µs | 214.528 µs |
| mcTracer kernel 间隙中位 | 2.816 µs | 2.816 µs |
| MXCC MT/ST registers | 60/24 | 58/26 |
| MXCC staticMaxWarps/PEU | 8 | 8 |
| mcProfiler achieved/dispatched waves | 8192/8192 | 8192/8192 |
| global read/write | 37.609/33.555 MB | 37.609/33.560 MB |
| L2 hit | 65.05% | 73.425% |
| shared 无冲突访问比例 | 44.19% | 80.33% |
| 每条指令平均冲突额外周期 | 4.65 | 0.86 |
| 平均 load 延迟 | 53.795 cycles | 40.460 cycles |
| MTE/MMA duty | 26.055/4.230% | 26.315/4.315% |
| mx-smi 物理 HBM 稳态中位 | 319.804 GB/s | 325.185 GB/s |

mcTracer 的设备端改善 **3.456 µs** 与官方 event 交错测接近，间隙不变。mcProfiler 两版各两个目标样本，计数并非每段绝对耗时；shared 无冲突比例上升主要与移除最终 shared 输出读写相符。读字节相同、写字节只差约 4.9 KB，不支持“大幅节省 HBM 字节”的解释。HBM 每版 66 个样本，去首尾各 5 后均为 56/56 活跃点；XCORE/MC 均 **1125/1800 MHz**。资源报告均 0B stack，静态 warp 上限相同。当前工具链 MXCC `-S` 不可用，没有冒充 ISA 已验证；精确的设备 C++、MXCC 资源和原始 profiler 报告均留存。

## 6. Roofline 与其他写法

case6 QK+PV 约 **2.147 GFLOPs**，Q/Output、唯一 K/V 工作集与索引最低约 **71.336 MB**，强度 **30.10 FLOP/B**。按保守 1400 GB/s、物理理论 1843.2 GB/s 的 HBM 屋顶，理想传输下界约 **50.95/38.70 µs**，均远低于观测的 214–218 µs；不能断定原始 HBM 带宽饱和。最低字节模型与 mcProfiler 计数属于不同口径，不把它们强行相等。

同机制的 `T.copy(output_acc, Output[...])` 简写也通过 case6 参考，单轮 216.817 µs；生成的 case6 设备代码与当前候选逐字节相同。最终保留已经完成交错验证的 `T.Parallel` 写法，不把这一次单轮差值作为调优收益。

## 7. 结论与 OJ 状态

**v006 是可复验的本地改善候选，外部 OJ 待测。** 源码、完整参考、交错计时、mcTracer、生成代码与资源共同支持 case6 约 1.5–2% 的本地收益。根目录仍保留用户指定起点；精确 OJ 文件和 SHA 见 `OJ_PENDING.md`。本版没有外部 OJ 逐项分数，不能声称已超过此前线上较优版本或成为 NSA SOTA。后续可从此独立实现继续探索单块数学或 operand feed，但每一机制必须有新的代码生成和端到端证据。
