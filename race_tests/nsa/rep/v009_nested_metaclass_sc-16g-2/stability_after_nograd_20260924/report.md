# v009：本地测试参考计算加 no_grad 后的三轮官方 14 case

- 机器：sc-16g-2；精确提交源码是 submission/v009_nested_metaclass_sc-16g-2/submission.py，SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c。
- 14 case 来自根目录 official_case.json，SHA-256 85f2c34acd793fb0a45084175acd7bcde48ff5d717a395d370800c30cf4e7036。
- 共享 test_tilelang_nsa_fwd.py 的新 SHA-256 是 6ebdb82ab43a844a908aeb33c08e2b4a6cf2b7385a20f903f123875b53534568；仅在 naive_nsa 参考计算外加 torch.no_grad()。输入、校验容差、run_kernel 调用、warmup 10、repeat 50 与 CUDA event 计时循环保持原样。
- 三次独立进程，每次均 14/14 PASS；OOM kill 计数前后均为 2。逐 case 原始数据见 run_01.csv、run_02.csv、run_03.csv。

| 轮次 | 14 case 平均耗时 ms |
| --- | ---: |
| 1 | 0.039247 |
| 2 | 0.039456 |
| 3 | 0.039120 |

三轮平均 0.039275 ms，最大与最小相差 0.86%，总体变异系数 0.35%。此前保留自动求导图的 v009 五轮整套平均范围为 0.062378–0.066199 ms，跨度 6.13%。两组参考计算内存环境不同，绝对耗时差不能解释为 kernel 加速。

| Case | 三轮最小 ms | 中位数 ms | 最大 ms | 最大/最小差 |
| --- | ---: | ---: | ---: | ---: |
| 7 | 0.030822 | 0.031165 | 0.031299 | 1.55% |
| 9 | 0.051937 | 0.052209 | 0.052214 | 0.53% |
| 12 | 0.103117 | 0.103301 | 0.103322 | 0.20% |
| 14 | 0.019799 | 0.019825 | 0.019912 | 0.57% |

此前波动明显的四个 case 在新口径下收敛；完整 14 case 中仍有一次 case 5 的 0.036255 ms，相比另两轮的 0.031508/0.031544 ms 偏高约 15%。因此本地计时显著改善，但并非绝对无波动。机器可读逐 case 范围见 summary.csv；GPU 使用/时钟采样见 gpu_samples.log。

结论：在本次三轮测试窗口，参考计算关闭 autograd 后，全套平均值和重点 case 均明显更稳定，且不再触发参考计算的 OOM。后续版本比较需要在同一新测试入口下同时重测原始 baseline 和候选，旧口径耗时不能直接混合比较。v009 OJ Accepted 的提交源码与根目录原始 submission.py 均未修改。
