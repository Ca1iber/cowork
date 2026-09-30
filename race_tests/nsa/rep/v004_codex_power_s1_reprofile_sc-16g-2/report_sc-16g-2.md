# codex-power v004：三轮 S8 失败后的原始基线重测（sc-16g-2）

## 1. 重测原因

v001 的 128-token 单 tile、v002 的四块分组和 v003 的四 wave 映射均未超过原始基线。按 AKO4ALL 停滞规则，在选择新的机制前重新 profile 当前基线。本版不修改内核；源仍是用户指定的 `ffa68b684e3876df2821fe34c9959493c2ca065a`，SHA-256 `462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1`。

## 2. 新环境快照与原参考

新快照和输入 SHA 见 `machine_snapshot_sc-16g-2.txt`。同一修正后的项目原生 `_run_one_case` 对 case6、case12 全参考校验均 PASS，warmup 10/repeat 50：case6 **220.974 µs**，case12 **123.448 µs**。v000 对照为 220.641/124.155 µs，方向与数量级稳定。

## 3. 时间线

mcTracer 各有 31 个目标事件，取末 20 次：case6 kernel 中位 **218.624 µs**，case12 **120.576 µs**；相邻 kernel 间隙都为 **2.816 µs**。case6 仍是最大单项设备热点，优化 Python 调用开销不能解释其 220 µs 时间。

## 4. case6 mcProfiler

两次目标采样均显示 8192 achieved/dispatched waves。可用指标中位：L2 hit **65.05%**，shared 无冲突访问比例 **44.19%**，平均冲突额外周期 **4.65**，MMA duty **4.23%**。global read/write、MTE duty 和 load 指令平均延迟的衍生指标因所需底层计数缺失而不可用；原始 JSON、失败原因和空值 CSV 均归档，未借用其他形状的数据。低 shared 无冲突比例和低 MMA duty 是可测试的 operand-feed 假设，并非已证明的单一瓶颈。

## 5. HBM 与 Roofline

case6 10 秒持续负载中，mx-smi 共 66 个物理 HBM 样本，去首尾各 5 后 56/56 活跃，中位 **320.589 GB/s**；XCORE/MC 为 **1125/1800 MHz**。算法 QK+PV 约 **2.147 GFLOPs**；Q/Output、唯一 K/V 与索引最低约 **71.336 MB**，强度 **30.10 FLOP/B**。保守 1400 GB/s 与物理理论 1843.2 GB/s 的理想 HBM 下界约 **50.95/38.70 µs**，低于设备 **218.624 µs**，不支持原始 HBM 已饱和判断。模型是下界，不是精确 per-kernel 字节计数。

## 6. 代码状态与提交限制

原始 case6 生成设备 C++ 和 MXCC 资源已在 v000 归档：60 MT/24 ST registers、0B stack、静态最多 8 warps/PEU。源码未变，当前重测只复用这一代码状态作诊断。其旧式 TileLang 导入仍不符合用户限定的精确三导入形式，因此本版不是 OJ 提交稿。

## 7. 下一机制

S8 大 tile 与 warp 调参已连续失败，下一轮转向 case6 的 shared 操作数布局。假设显式 TileLang swizzle 可降低 K/V shared 访问冲突，改善 MMA 操作数供给，并降低端到端延迟；若生成代码未改变、冲突指标不降或官方计时不快，即证伪并封存。该路径从原始源码构造，不参考此前优化内核实现。
