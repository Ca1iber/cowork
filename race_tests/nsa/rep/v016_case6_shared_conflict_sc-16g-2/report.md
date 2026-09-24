# v016 case 6 输出 shared bank conflict 优化

## 上版本遗留问题

v009 是 OJ 已接受的版本，case 6 官方形状为 B8、seq1024、H1、HQ16、D128、S1、BS32。v009 在本机 case 6 耗时约 0.169 ms，设备 kernel 约 165 µs。前一轮瓶颈报告测得 shared memory 无冲突访问仅 44.95%、有冲突的 WG 指令平均额外 4.62 cycles、WG load 平均延迟约 69 cycles；MMA Duty 只有 5.34%。v011 仅调 K shared 布局只有约 1% 的本地收益，冲突来源尚未定位。

## 问题原因分析

本轮把 K、V、输出暂存区的布局分开修改、独立编译，并使用相同 case 6 输入和 profiler 指标。K XOR8 的无冲突访问比例仍是 44.95%，V linear 降为 39.20%，V half 降为 41.88%。只有 output_shared 显式 swizzle 将无冲突比例提高到 92.45%。设备代码对比表明该候选只改了最终 output_acc→output_shared→Output 的 shared 写/读地址；QK、PV、MFMA 和 7 次同步均未改变。因而 case 6 的大部分可见 shared bank conflict 来自输出暂存区的原默认布局，而不是本轮尝试的 K/V 布局。

## 本版本解决方案

从 OJ Accepted v009 精确源码出发，仅在 block_size==32 的 manual-QK 分支为 output_shared 注解 make_swizzled_layout。其他参数路径使用原 v009 布局。完整计算、线程数、causal/sentinel 语义、PV T.gemm、run_kernel 接口均保持不变。选中候选位于 submission/v016_case6_shared_conflict_sc-16g-2/submission.py；根目录 submission.py 与 v009 均未修改。

## 具体落地策略

- 机器 sc-16g-2，起点 Git 98cd50450；v009 SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c；v016 SHA-256 ee4791ddb1e461b3ab4d83ca736bab66217366abbbb9bb0c140eb85c6fca1315。
- 所有候选 patch 位于 experiments/v016_case6_shared_conflict_sc-16g-2/；脚本位于 hack/ 同名目录；原始日志、CSV、生成代码和 profiler bundle 位于 rep/ 同名目录。没有复制官方 JSON、reference、共享测试入口或 v009 submission 到 experiments。
- case 6 快筛调用共享 test_tilelang_nsa_fwd.py 的 _run_one_case，warmup 10、repeat 50，原 PyTorch reference atol/rtol=1e-2。full14 用同一官方入口按 v016/v009/v016/v009 独立进程交替运行。
- profiler 采 20 次预热后的 case 6；选用 shared memory access efficiency、average conflict cycles per instruction、average latency per load instruction、AP MMA Duty ratio。所有 profiler 附加耗时不用于与干净 benchmark 直接比较。
- 14 case 精确提交源码和全部生成设备代码通过静态 OJ 检查；额外 BS32 的 D32、G32/D64、G32/D128 形状数值校验通过。在线 OJ 尚未测 v016。

## Benchmark 对比

case 6 首轮布局扫描及前后对照详见 screen_summary.csv。主要值如下：

| 候选 | case 6 ms | 结果 |
|---|---:|---|
| v009 前对照 | 0.167946 | PASS |
| K XOR8 | 0.166902 | PASS |
| V linear | 0.166774 | PASS |
| V half | 0.172221 | PASS |
| V XOR8 | 0.169329 | PASS |
| K+V XOR8 | 0.168100 | PASS |
| v009 后对照 | 0.167654 | PASS |
| 输出 linear（第二轮） | 0.167726 | PASS |
| 输出 swizzled（第二轮） | 0.162898 | PASS |
| V XOR4（第二轮） | 0.198098 | PASS |

完整 14 case 四轮均 14/14 PASS。case 6 的 v016 两轮为 0.163476/0.163492 ms，v009 两轮为 0.169108/0.169206 ms；配对均值 0.163484 对 0.169157 ms，耗时降低 3.35%。14 case 算术均值 v016 为 0.038894 ms、v009 为 0.039122 ms，低约 0.58%；非 case 6 的微小差异主要受本地波动影响。

## Profile 指标变化

| case 6 指标 | v009 | K XOR8 | V linear | V half | 输出 linear | 输出 swizzled |
|---|---:|---:|---:|---:|---:|---:|
| shared 无冲突访问比例 | 44.95% | 44.95% | 39.20% | 41.88% | 44.95% | 92.45% |
| 冲突 WG 指令平均额外周期 | 4.62 | 4.62 | 5.85 | 5.23 | 4.62 | 0.31 |
| WG load 平均延迟 cycles | 69.72 | 69.09 | 79.93 | 71.37 | 69.36 | 40.28 |
| AP MMA Duty | 5.34% | 5.39% | 5.40% | 5.23% | 5.35% | 5.47% |

v016 相对本轮 v009：无冲突比例提高 47.50 个百分点；冲突时额外周期低约 93%；WG load 平均延迟低约 42%。MMA Duty 仅小幅变化，说明减少 bank conflict 改善了数据供给，但没有把整个 kernel 转变为 MMA 吞吐受限。

生成代码包 generated_code.tar.gz、筛选版生成代码包 screen_codegen.tar.gz、codegen_comparison.csv 与 case06_codegen.diff 保留精确证据。14 个官方 case 中，12 个设备代码与 v009 逐字相同；case 10 仅交换两处 softmax reduction scratch shared 地址；case 6 仅改变输出暂存区 shared 地址。同步和 MFMA 数目未变。

## 实验总结

本轮成功找到并降低 case 6 的主要 shared bank conflict：output_shared swizzle 使无冲突访问比例从 44.95% 升到 92.45%，case 6 两轮本地耗时稳定降低约 3.35%。这也说明 bank conflict 虽明显，但不是全部 165 µs 的来源，否则端到端收益应更大。v016 已作为独立提交候选归档；在线 OJ 尚未验证，v009 继续是已接受版本。若继续优化 case 6，应转向剩余的 K/V 数据供给、L2/DNOC 延迟和 CTA 粒度，不宜继续重复无效的 K/V swizzle 小调。
