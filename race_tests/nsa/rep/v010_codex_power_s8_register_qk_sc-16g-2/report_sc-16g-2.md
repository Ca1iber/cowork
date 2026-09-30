# codex-power v010：case12 寄存器操作数 QK（sc-16g-2）

## 1. 起点与证据

分支始于用户指定的 `ffa68b684e3876df2821fe34c9959493c2ca065a`，当前父版是本分支独立完成的 v007。case12（B4/N1024/H1/HQ16/D64/S8/BS16）在 v007 仍沿原始逐块 QK/online softmax/PV 路径，官方约 123–124 µs，设备约 120.6 µs；case6 已由 v007 两组 wave 路径改善。早期把稀疏块合为大 tile 或两块分组都未提速，v008 对 16-token 块直接加第二组 wave 则编译失败。本版重新定位每块 QK 的操作数供给。

## 2. 实现与可证伪假设

仅在 case12 编译期形状，用 TileLang 合法 `T.tvm_mfma` 对每块 16×16 的 QK 输出执行四个 16-wide reduction chunk。Q 每线程载入本地寄存器后复用，K 在每个被选块内按 lane 映射直接载入寄存器；原有 online softmax、causal/sentinel mask 与 TileLang PV GEMM 的数学顺序保留。假设省去 K 的全局→shared→fragment 往返，减少设备耗时。最初使用 FP16 score shared 桥接，case12 原参考 PASS、单轮 122.368 µs；改为 64 线程下合法的 FP16 fragment 后单轮 **117.340 µs**，本版最终选择后者。所有源码从指定起点及本分支代码独立构造，没有引入以前其他分支的 NSA 优化代码。

最终候选与精确提交稿 SHA-256 同为 `8da99365862d898e6e0c16f7a36d34a8d8164cda9840daad7d1b55817d633dd8`，位置为 `submission/v010_codex_power_s8_register_qk_sc-16g-2/submission.py`。源码只含用户指定的三条导入；`T.tvm_mfma` 由正常 TileLang 降低，未从源码手动调用 MXMACA builtins，也没有 async copy、foreign code 或 Torch GPU 替代计算。

## 3. 正确性与代码隔离

v010 候选及精确提交稿各 **14/14 PASS**，case12 相对 v007 的交错八次 **8/8 PASS**，全项交错 **56/56 PASS**。均使用项目原生完整 `naive_nsa` 参考、warmup 10/repeat 50。精确提交稿与 14 份生成设备 C++ 通过 AKO4ALL 静态校验。只有 case12 的设备及 host 启动代码变化：专用 kernel 采用二维 grid，并移除 K shared；其余 13 项两类代码均逐字节相同。目标源码、静态扫描、生成 C++、MXCC 资源和屏蔽试验均留存。

## 4. Benchmark 对比

| 来源 | case12 延迟 | 正确性 | 口径 |
|---|---:|---:|---|
| v007 单轮 | 约 123–124 µs | 14/14 PASS | 原参考、warmup10/repeat50 |
| v010 候选单轮 | 116.956 µs | 14/14 PASS | 相同入口 |
| v010 精确稿单轮 | 116.255 µs | 14/14 PASS | 与候选同 SHA |
| 八次交错 v007→v010 | 124.263→117.689 µs | 8/8 PASS | 快 5.29% |
| 全 14 项交错的 case12 | 123.589→116.459 µs | 56/56 PASS | 快 5.77% |

全项交错逐 case 中位延迟和 **0.583841→0.578978 ms**，低约 **0.83%**。未改动形状仍存在局部计时波动，不能把这些波动归因于 v010；可归因的本地收益是 case12 约 6.6–7.1 µs。v010 的 case6 单轮 159.790/159.693 µs，与 v007 一致。

## 5. Profile 与资源

| 指标 | v007 | v010 |
|---|---:|---:|
| mcTracer case12 kernel 中位（末20次） | 120.832 µs | 113.792 µs |
| mcTracer kernel 间隙中位 | 2.816 µs | 2.816 µs |
| MXCC MT/ST registers | 73/28 | 66/26 |
| MXCC staticMaxWarps/PEU | 6 | 7 |
| mcProfiler achieved/dispatched waves | 4096/4096 | 4096/4096 |
| global read/write | 9.557/8.389 MB | 9.577/8.389 MB |
| L2 hit | 87.43% | 94.98% |
| shared 无冲突访问比例 | 63.24% | 65.19% |
| 每条指令平均冲突额外周期 | 1.94 | 1.41 |
| 平均 load 延迟 | 61.035 cycles | 43.805 cycles |
| MTE/MMA duty | 41.835/7.210% | 54.025/7.870% |
| mx-smi 物理 HBM 稳态中位 | 143.132 GB/s | 151.742 GB/s |

mcTracer 两版各 31 个目标 kernel 事件，取末 20 次；设备改善 **7.040 µs**，与交错测 6.6–7.1 µs 一致，调用间隙未变。mcProfiler 两版各两个目标样本，waves 与 4096 个 CTA 相符；候选 global read 多约 19.8 KB、write 相同，不能把收益称作节省 HBM 字节。L2 hit 与平均 load 延迟改善，结合生成 C++ 里的直接 K 向量载入、K shared 去除，支持操作数获取路径改善的假设；这些计数不是各流水段的绝对耗时。HBM 各 66 个样本，去首尾各 5 后均 56/56 活跃；XCORE/MC 都为 **1125/1800 MHz**。候选资源较轻且无 stack。当前 MXCC `-S` 不可用，未把 ISA 反汇编冒充为已验证。

## 6. Roofline 与局限

case12 QK+PV 约 **2.147 GFLOPs**，Q/Output、唯一 K/V 工作集与索引最低约 **17.957 MB**，强度约 **119.59 FLOP/B**。保守单租户 1400 GB/s 与物理理论 1843.2 GB/s 的理想 HBM 传输下界为 **12.83/9.74 µs**，远低于观测 113–121 µs；不支持原始 HBM 带宽饱和判断。最低字节模型与 mcProfiler 请求计数口径不同，不强行等同。候选保留逐块 online softmax 和 TileLang PV，仍有后续 operand-feed 与同步优化空间。

## 7. 本地结论与 OJ 门槛

**v010 是 codex-power 分支目前最好的本地正确性与性能候选，外部 OJ 待测。** 从用户指定起点独立发展，v007 改善 case6，本版又使 case12 交错中位快约 5.3–5.8%，其他 13 项生成代码不变。精确提交文件、SHA 与缺失的线上结果见 `OJ_PENDING.md`。根 `nsa/submission.py` 仍保留用户指定起点；当前归档候选不声称已超过此前线上较优版本，也不由本地数据推断线上整数分数。
