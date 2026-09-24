# v012 手写 QK k_pack 联动调参

## 上版本遗留问题

v009 是在线 OJ 已接受的起点；v011 XOR8 布局只有约 1% 的本地目标 case 收益，OJ 尚未验证。本轮回到 v009，检查手写 QK 的 K 维打包数。v009 固定 k_pack=2，case 6/12 走手写 QK，其余 QK 保持 T.gemm，PV 均为 T.gemm。

## 问题原因分析

已验证：v009 的 2 不只是成员值；Q fragment 的 16×32 布局、K local 的每线程 8 个元素、每轮 2 次 MFMA、K 维外循环 D/32 和 operand offset 都绑在该值上。只改成员值不会真正调参。假设：k_pack=1 减少片段占用但增加循环和 K 加载；k_pack=4/8 减少循环但增加向量宽度与局部片段占用。本轮未采集寄存器数或 profiler stall，不能把耗时归因于其中任何一项。

## 本版本解决方案

同步参数化 Q fragment 列宽与 repeat、K shared→local 反向布局及向量加载、K local 大小、每轮 MFMA 次数及 offset、D 维外循环。扫描 1、2、4；另试 D=128 用 8、D=64 用 4。正式归档源码按 D 自适应取 min(4,D/16)，使 D=32 的手写路径仍取 2。线程数 64、原有 K shared 布局、QK 分流、softmax、PV 均保持 v009。

## 具体落地策略

- 机器 sc-16g-2；起点 Git 0d28f5c01c531e87deafa40a0916391aacde8ee1；v009 SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c；v012 SHA-256 3c4040a46c68338c9bfe9e376d6cca30e9a79e4a6c9ba8a0ad0e089a5f3bcb14。
- 官方输入固定使用 race_tests/nsa/official_case.json；官方测试入口 race_tests/nsa/test_tilelang_nsa_fwd.py，warmup 10、repeat 50，项目原有 PyTorch reference 校验 atol/rtol 1e-2。
- 版本源码只在 submission/v012_qk_kpack_sc-16g-2/submission.py；实验说明及各候选 patch 在 experiments/v012_qk_kpack_sc-16g-2/；脚本在 hack/v012_qk_kpack_sc-16g-2/；原始 CSV、日志、生成代码在 rep/v012_qk_kpack_sc-16g-2/。未修改根目录 submission.py。
- 测试命令：NSA_VARIANT_SOURCE=<候选文件> NSA_RESULTS_PATH=<输出 CSV> /opt/conda/bin/python -u race_tests/nsa/hack/v011_qk_layout_sc-16g-2/run_variant.py。case 6/12 快筛使用本版本 run_target.py 调用同一 _run_one_case。

## Benchmark 对比

先在独立进程逐一测 case 6/12，均通过数值校验。v009 前后两次平均作为目标形状对照：

| 配置 | case 6 ms | 对 v009 | case 12 ms | 对 v009 |
|---|---:|---:|---:|---:|
| v009 前 | 0.168294 | +0.03% | 0.103250 | -0.08% |
| k_pack=1 | 0.179507 | +6.70% | 0.107791 | +4.31% |
| k_pack=4 | 0.167639 | -0.36% | 0.103132 | -0.20% |
| v009 后 | 0.168192 | -0.03% | 0.103424 | +0.08% |
| D128=8 / D64=4 | 0.170552 | +1.37% | 0.102958 | -0.37% |

官方 14 case 完整入口：k_pack=4 的两次均 14/14 PASS，平均分别为 0.039101、0.039022 ms；最终精确归档版 14/14 PASS，平均 0.039032 ms。成功的 v009 对照 14/14 PASS，平均 0.039004 ms。另一轮 v009 对照被容器 OOM 杀掉，退出码 137，未纳入统计。

| case | v009 ms | v012 ms | 耗时变化 |
|---:|---:|---:|---:|
| 1 | 0.008781 | 0.008745 | -0.41% |
| 2 | 0.009149 | 0.009375 | +2.47% |
| 3 | 0.012329 | 0.012042 | -2.33% |
| 4 | 0.012646 | 0.012493 | -1.21% |
| 5 | 0.031078 | 0.031386 | +0.99% |
| 6 | 0.168504 | 0.167071 | -0.85% |
| 7 | 0.030930 | 0.031263 | +1.08% |
| 8 | 0.052413 | 0.052485 | +0.14% |
| 9 | 0.051901 | 0.052219 | +0.61% |
| 10 | 0.011950 | 0.012595 | +5.40% |
| 11 | 0.023245 | 0.023721 | +2.05% |
| 12 | 0.103132 | 0.102953 | -0.17% |
| 13 | 0.010424 | 0.010378 | -0.44% |
| 14 | 0.019569 | 0.019722 | +0.78% |
| 14 case 算术均值 | 0.039004 | 0.039032 | +0.07% |

额外正确性：归档版 D=32、S=2/4/8 均通过原测试入口的数值校验。源码及 case 6/12 生成设备代码通过 OJ 静态规则检查。在线 OJ 未测。

## Profile 指标变化

生成代码包 generated_code.tar.gz SHA-256 68721cd65defe1c4edb366f66deb3a9f2fc68e493ded75a7e1d63049272970c7。case 6/12 的 k_pack=1/2/4 设备代码哈希两两不同；QK 的 __builtin_mxc_mma_16x16x16f16 内循环索引分别对应 1/2/4，PV 路径仍为 T.gemm lowering。未采集 mcProfiler、mcTracer 或寄存器报告；候选没有测得可重复的端到端收益，因此目前不对硬件瓶颈做强归因。

## 实验总结

k_pack=1 明显退化；D=128 用 8 也使 case 6 退化。k_pack=4 对 case 6 只有约 0.4–0.9% 的局部改善，case 12 基本持平；14 case 平均与 v009 一致，收益处于计时波动范围。本轮判定为无稳定收益的调参尝试，不替换已被 OJ 接受的 v009，不修改根目录 baseline。v012 源码仅供后续复查，在线 OJ 尚未验证。
