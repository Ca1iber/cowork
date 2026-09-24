# v022 合并 case6 输出 swizzle 与 case12 K 直载

## 上版本遗留问题
OJ Accepted v009 的 case6 与 case12 占本地 14 case 耗时总和约一半。v016 单独通过 output_shared swizzle 降低 case6 的 bank conflict，本地快约3.35%；v021 单独通过手写 QK 的 K global→local 直载使 case12 快约13.96%。两者线上 OJ 均未验证，需要在同一提交源码中合并、排除布局干扰。

## 问题原因分析
v016 只影响 BS32 形状的最终输出 shared 地址；v021 只影响 S8/BS16/D64/G16 形状的 K operand 路径。两个改动作用于不同的官方 case，理论上可以在同一 TileLang 源码中保持各自生成代码。其余官方形状应沿用 v009；本地非目标 case 微小差异需要通过代码生成核对。

## 本版本解决方案
从 v021 精确源码出发，只在非 directK 的 BS32 manual-QK 分支加入 v016 对 output_shared 的 make_swizzled_layout 注解。case12 保留 ldmatrix_b_global；其它形状保留 v009。没有更改题目接口、PyTorch 计算、异步 copy、线程数或测试输入。

## 具体落地策略
- 机器 sc-16g-2；起点 Git 5b27bf3a1。v009 SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c；v022 SHA-256 998c55947b9859d9c125e59b0e1857fc7eb81c268084c6bc8e32c600b37156ea。
- 精确候选源码在 submission/v022_case6_case12_combined_sc-16g-2/submission.py；实验 patch、复现脚本、逐 case 数据/生成代码分别在 experiments/hack/rep 同名目录。根目录 submission.py、v009、v016、v021 均未修改。
- 官方14 case 使用共享 test_tilelang_nsa_fwd.py 和固定 official_case.json，warmup10/repeat50，reference atol/rtol=1e-2。按 v022/v009 各三轮独立进程交替，六轮均14/14 PASS；额外 BS32/D32、BS32/G32/D128、S8 短序列、S8/H2/G16 全部 PASS。
- v022 精确源码与全部14份设备代码通过 OJ 静态检查；在线 OJ 尚未测试。

## Benchmark 对比
主指标为每个 case 三轮 GPU latency 中位数，再对14个中位数取算术平均。原始六轮 CSV 和每个 case 的六个原始值见 median_summary.csv。

| 指标 | v009 | v022 | 耗时变化 |
|---|---:|---:|---:|
| case6 | 0.169011 ms | 0.163845 ms | -3.06% |
| case12 | 0.103368 ms | 0.088776 ms | -14.12% |
| 14 case 中位数均值 | 0.039147 ms | 0.037697 ms | -3.71% |

v022 三轮整套平均分别 0.037737、0.037660、0.037729 ms；v009 为 0.039153、0.039113、0.039179 ms。两重点 case 的方向在三轮中一致。其它形状的微小正负差异主要是测量波动。

## Profile 指标变化
本版未重复采集 profiler，因为 14 份生成代码已逐形状验证来源：case6 与 v016 完全相同，case12 与 v021 完全相同；其余官方 case 中11个与 v009 完全相同，case11 仅两处 softmax reduction scratch shared 地址交换。完整 codegen_comparison.csv、generated_code.tar.gz 和 OJ 静态检查日志已归档。

独立已测的对应 profiler 证据：v016 case6 shared 无冲突比例 44.95%→92.45%，冲突 WG 指令额外周期 4.62→0.31；v021 case12 动态 shared 4608→2560 B，K shared 往返消失，全局访存字节近似不变。本版的代码生成精确复用了这些路径，不推断额外的硬件收益。

## 实验总结
v022 将两条互不干扰的本地优化合并，六轮官方正确性通过，case6/case12 分别快约3.1%/14.1%，整套中位数均值低约3.7%。它是当前最有希望的本地提交候选，在线 OJ 结果仍是晋级依据；在 OJ 验证前 v009 继续是唯一已接受版本。
