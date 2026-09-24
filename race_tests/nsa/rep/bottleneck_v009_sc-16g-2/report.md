# v009 Native Sparse Attention 耗时诊断（sc-16g-2）

## 范围与口径

- 目标：OJ 已接受的 race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py，SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c；起点 Git 728fdea68。根目录 submission.py 未修改。
- 官方 14 case 配置和测试脚本哈希见 input_sha256.txt。全套耗时取 v015 同机交替实验中 v009 三轮各 case 的中位数；原始值在 ../v015_targeted_pv_sc-16g-2/median_summary.csv。
- profile 输入构造与官方 _run_one_case 使用相同 seed、q/k/v 形状和 randperm(max(1,t//block_size))[:S] 下标生成。预热 10 次；mcProfiler 仅在 cuda.profiler.start/stop 标记间采 20 次。PyTorch 时间线另采 30 次；大块设备复制单独校准 HBM。
- MetaX C500，MACA 3.7.1.5，KMD 3.8.30，mx-smi 2.3.1，mcProfiler 3.8.1.4；sGPU 已启用，best effort 调度、10 ms 时间片。负载时 XCORE 1125 MHz。完整只读快照在同目录 mxsmi_*。
- 容器未找到可调用的 mcTracer；用 PyTorch 设备时间线区分 kernel 与 launch。mcProfiler 原始事件/报告在 mcprof_case*/ 的报告与压缩包中，控制台日志在 profiler_logs.tar.gz。

## 哪些 case 占时间

v009 官方 14 case 的中位数之和为 0.547277 ms，仅用于定位优先级，不是 OJ 分数公式。

| case | 形状摘要 | 耗时 ms | 耗时占比 |
|---:|---|---:|---:|
| 6 | B8, seq1024, D128, S1, BS32 | 0.168847 | 30.85% |
| 12 | B4, seq1024, D64, S8, BS16 | 0.103286 | 18.87% |
| 8 | B2, seq4096, D64, S1, BS16 | 0.051845 | 9.47% |
| 9 | B1, seq8192, D64, S1, BS16 | 0.051850 | 9.47% |

case 6+12 占 49.72%，再加 case 8+9 为 68.66%。同为 4096 CTA 的 case 5/7 都约 31 µs；同为 8192 CTA 的 case 8/9 都约 52 µs。对 S1/D64 路径，CTA 数与每 CTA 工作量比 batch/seq 的分配更能解释耗时。

## 启动间隔与设备 kernel

PyTorch 时间线在每个 case 记录 30 次稳态调用，单位 µs。间隔为同一设备流相邻 kernel 之间的时间；下表使用中位数。profiler 可能扩大偶发间隔，设备忙碌比例不能直接当成无 profiler 的官方计时。

| case | kernel 中位数 | 相邻间隔中位数 | trace 期间设备执行占比 |
|---:|---:|---:|---:|
| 2 | 5.888 | 2.816 | 45.8% |
| 6 | 165.120 | 2.816 | 96.7% |
| 8 | 48.640 | 2.816 | 88.6% |
| 12 | 100.096 | 2.816 | 94.8% |

已验证：case 6/8/12 的主要耗时在 GPU kernel 本体；case 2 等小形状的启动/提交间隔才占显著比例。kernel 时间加典型间隔与官方 runner 的单次时间接近。

## 设备瓶颈证据

MTE/MMA Duty 是相对 AP 活跃周期的比例，不是整卡利用率。shared 无冲突比例按 mcProfiler 定义为没有 bank conflict 的访问占比。物理 HBM 值来自负载期间 mx-smi 每 100 ms 采样，筛除空闲值后的中位数。

| 指标 | case 6 | case 12 |
|---|---:|---:|
| QK+PV 逻辑 FLOPs | 2.147 GF | 2.001 GF |
| CTA 数 | 8192 | 4096 |
| 每 CTA 平均有效 sparse block | 1.000 | 7.453 |
| L2C 命中率 | 69.44% | 88.13% |
| profiler global read + write / 调用 | 112.88 MB | 28.35 MB |
| 物理 HBM 活跃中位数 | 424.18 GB/s | 172.20 GB/s |
| AP MTE Duty | 35.00% | 62.49% |
| AP MMA Duty | 5.34% | 8.40% |
| shared 无 bank conflict 访问占比 | 44.95% | 74.17% |
| 有冲突的 WG 指令平均额外周期 | 4.62 | 1.21 |
| WG load 平均延迟 | 69.08 cycles | 50.92 cycles |
| DNOC read 平均延迟 | 415.49 cycles | 329.26 cycles |

本实例 1 GiB 设备复制三轮有效带宽为 1427.221/1427.166/1426.564 GB/s，中位数 1427.166 GB/s；工作集远大于 8 MiB L2。这是诊断用的大块复制上限，不是 NSA 的保证值。case 6/12 物理 HBM 活跃读数仅为其约 30%/12%。mcProfiler RoofLine 派生带宽约 430/182 GB/s，与 mx-smi 的方向和量级一致。RoofLine 使用 1843.2 GB/s 物理理论屋顶，不能直接拿它的 compute/memory 分类代表当前 sGPU。

### case 6：数据供给与 shared 访问

v009 每 query 一个 64-thread CTA；运行时 wavefront 为 64，case 6 共 8192 CTA。每 CTA 做 D128×BS32 的 QK、在线 softmax、PV，生成代码有 7 处静态 block 同步。MMA Duty 仅 5.34%，HBM 未接近当前复制上限；shared 访问仅 44.95% 无冲突，WG load 延迟 69 cycles，L2C 命中率也较低。主要限制更像 K/V 数据供给、shared bank 冲突与相关等待，而不是 MFMA 算术峰值。当前计数器不能精确区分 K、V 与 reduction scratch 哪个 buffer 的冲突最多；此前 v011 只改 K shared 布局收益很小，不宜继续盲调单一 swizzle。

### case 12：每 query 串行处理多 block

按官方下标生成方式，每 CTA 平均处理 7.453 个有效 block。生成代码有 4 处同步位于 T.serial(S) 内、1 处位于循环后；循环内的同步位于 valid-block 判断之外，因此 S8 每 CTA 执行 4×8+1=33 次同步，即使部分下标为 sentinel。循环内还反复 K/V 搬运、QK、max/sum reduction、exp2/rescale 与 PV。K/V 唯一数据约 1 MiB，L2C 命中率 88.13%，物理 HBM 仅 172 GB/s，而 MTE Duty 为 62.49%、MMA Duty 仅 8.40%。串行 sparse-block 数据流和每块在线 softmax 更新应优先优化；PV MFMA 不是主要算力瓶颈。v015 手写 PV 本地对 case 12 仅约 2% 改善、OJ 总体无明显提升，与此相符。kernel 级计数器无法精确给出 softmax、K/V 复制和同步各占多少百分比。

## 下一步优先级

1. case 12 / S8：尝试把最多 8 个选中 block 的 K/V 拼入一个约 128-token tile，做一次 QK、一次 softmax reduction 与一次 PV，减少逐 block 在线归一化和反复同步。需保留 sentinel、重复下标与 causal 语义，先核实 shared/register 预算和生成代码。
2. case 6 / BS32：先定位哪个 shared buffer 冲突，再改 K/V 加载及 fragment 供给；结合 L2/DNOC 延迟检查并发隐藏能力。仅重复 v011 的 K swizzle 扫描依据不足。
3. case 8/9 等大 S1：关注每 token 一个 64-thread CTA 的粒度与任务数；小 case 才优先考虑 launch 开销。

以上为本机 v009 诊断，不修改提交 kernel，也不把 profiler 附加运行的时间直接与 OJ 时间比较。
