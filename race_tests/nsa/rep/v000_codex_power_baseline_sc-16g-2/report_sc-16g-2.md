# codex-power v000：指定起点的 NSA 基线（sc-16g-2）

## 1. 起点与测量语义

分支 `codex-power` 从用户指定的 commit `ffa68b684e3876df2821fe34c9959493c2ca065a` 创建。原始内核为 `race_tests/nsa/submission.py`，SHA-256 `462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1`。`official_case.json` 与 `reference.py` 的 SHA 分别为 `85f2c34acd793fb0a45084175acd7bcde48ff5d717a395d370800c30cf4e7036` 和 `e31d5f188923d8696c7ad190b1652d5b3142c004dc96d0604f371c71f179bf32`。

起点自带测试脚本没有调用提交入口，大形状跳过参考比对，warmup 只有 3 次。为保证测到真实提交路径，本实验在 `hack/` 存放仓库后续修正过的原生 `_run_one_case` 精确副本（SHA `6ebdb82ab43a844a908aeb33c08e2b4a6cf2b7385a20f903f123875b53534568`），由小包装脚本加载起点源码，逐项调用原参考、warmup 10、repeat 50。该测试副本只用于测量，不进入最终提交源码，也不借用后来版本的内核优化。

## 2. 正确性与基线延迟

指定起点在 sc-16g-2 上 **14/14 PASS**，14 项平均 **0.046216 ms**。主要热点如下：

| case | B/N/H/HQ/D/S/BS | 原始延迟 |
|---:|---|---:|
| 6 | 8/1024/1/16/128/1/32 | 220.641 µs |
| 12 | 4/1024/1/16/64/8/16 | 124.155 µs |
| 8 | 2/4096/1/16/64/1/16 | 52.838 µs |
| 9 | 1/8192/1/16/64/1/16 | 52.777 µs |

全部逐项原始数据见 `baseline_official14_sc-16g-2.csv`。这是起点测量，不代表 OJ 可提交版本。

## 3. mcTracer 与目标选择

mcTracer 对 case6/case12 各观察 31 个目标 kernel 事件，取最后 20 次：设备中位分别 **218.112/120.576 µs**，相邻 kernel 间隙均 **2.816 µs**。与官方 event 计时接近，说明两项主要耗时在设备内。case6 是最大单项热点；case12 有 8 个被选块，原始源码用 `T.serial(stages)` 依次执行每块 QK、online softmax、PV，具备移除跨块重复计算的结构机会。下一独立实验优先处理 S=8，不参考此前版本的优化内核代码。

## 4. mcProfiler、HBM 与 Roofline

case12 的 mcProfiler 两个目标样本各有 4096 achieved/dispatched waves；中位 global read/write 为 **9.557/8.389 MB**，L2 命中率 **87.43%**，shared 无冲突访问比例 **63.24%**，每条指令平均冲突额外周期 **1.94**，平均 load 延迟 **60.945 cycles**，MTE/MMA duty **41.735/7.195%**。这些是工具计数口径，不能把占比直接换算为流水段绝对时间。MXCC 资源报告：case6 60 MT/24 ST registers、静态最多 8 warps/PEU；case12 73 MT/28 ST、静态最多 6 warps/PEU；两者均 0B stack。

case12 10 秒持续负载，mx-smi 66 个物理 HBM 样本去首尾各 5 个后，56/56 为活跃样本，中位 **143.451 GB/s**；XCORE/MC 为 **1125/1800 MHz**。这与较长设备耗时下的总吞吐相符，但不是精确单 kernel 字节计数。

按 case12 QK+PV 约 **2.147 GFLOPs**、Q/Output、唯一 K/V 工作集与索引最低约 **17.957 MB**，算术强度约 **119.59 FLOP/B**。以保守 1400 GB/s 与物理理论 1843.2 GB/s 为 HBM 屋顶，理想传输下界约 **12.83/9.74 µs**，远低于观测的 **120.576 µs**。该模型不支持“原始 HBM 带宽饱和”判断；它不能单独证明具体是哪段指令占主导。公式和敏感性值见 CSV。

## 5. 生成代码与工具限制

原始 case6/case12 设备 C++ 已导出，静态 `__syncthreads` 站点分别为 7/5；case12 的 5 个站点处在被选块循环路径，可能按有效块动态重复。设备 C++ 中未见 async-copy 或 foreign-call 标记。MXCC 编译资源成功。当前 MXCC 不识别 `-S`，因此没有可靠 ISA 反汇编；失败命令见 `isa_attempt.log`。首次导出代码时误用系统 Python，出现 `ModuleNotFoundError: tilelang`，随后改为现有 /opt/conda 环境，两个目标形状均成功导出；两份日志均保留。

## 6. OJ 导入门槛

历史源码使用 `from tilelang import language as T`，不符合用户要求的精确导入格式，AKO4ALL 静态校验退出码为 1。故此版本只作为性能和正确性起点，`submission/v000.../` 中明确标为不可提交。后续候选源码只能使用用户指定的 `import tilelang`、`import tilelang.language as T`、`from tilelang.layout import make_swizzled_layout`；其他导入和异步拷贝、外部设备代码按 AKO4ALL 排除。

## 7. 后续独立实验

可证伪假设：对 S=8 的 case12，将 8 个被选块的 K/V 收集到一个合法 shared tile，执行一次 QK、一次全局 softmax 与一次 PV，可缩短原始跨块循环的重复 MMA、归约和同步。风险是 shared、寄存器和填充成本升高，或 TileLang 大 tile 编译效果不佳。先在原始源码上单独实现与验证，继续使用全项参考及 end-to-end 官方计时；任何不正确、不可编译或端到端变慢的版本都应保留失败证据而不晋升。
