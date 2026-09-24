# v013 手写 PV 的片段与 V shared 布局调参

## 上版本遗留问题

v010 已把 PV 写成手动 MFMA，但 BS16 生成代码与 v009 的 T.gemm lowering 基本相同；BS32 为匹配 PV A 与 QK score 布局增加 shared 往返和两次 block 同步，因此无稳定收益。v012 调 QK 的 k_pack 也无整体收益。本轮聚焦 PV。

## 问题原因分析

已验证：BS32 下 v010 的 PV A fragment 用 k_pack=2，每线程 K 片段分布与 QK 输出的 score fragment 不同，直接 T.copy(scores,scores_half) 会数值错误（case 6 95.2% 元素不匹配，日志 target_direct2.log）。将 PV k_pack 降为 1、按 K16 两轮累积后，A operand 的每线程片段与 QK score 输出一致，直接转换通过数值校验。该变化减少一次 shared 重排。V shared 的物理布局也影响生成地址和本地耗时；寄存器及 bank 冲突指标未采集，不能对内部瓶颈作强归因。

## 本版本解决方案

沿用 v009 的 QK 分流、64 threads、softmax 和接口。PV 使用手写 T.tvm_mfma，按 K16 的 k_pack=1 加载 V local、累积输出；PV A fragment 直接采用 QK score store 的线程/本地索引布局，移除 BS32 的 scores_half_shared。对 V shared 布局扫描默认 swizzle、linear、half-bank、quarter-bank，选择两目标 case 同时更快的 linear。

## 具体落地策略

- 机器 sc-16g-2，起点 Git 97b738b8b；v009 SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c；v010 SHA-256 760ae6978f591ec075763b9b25aad07a5b708771af268a7b1acab9a136647916；v013 SHA-256 1940406c8138122fe45a6f635564d12f8a4a5bd000ccfdeca799e4caee0c9b26。
- 精确提交源码位于 submission/v013_manual_pv_tune_sc-16g-2/submission.py；候选 patch 在 experiments/v013_manual_pv_tune_sc-16g-2/；可复现实验脚本在 hack/v013_manual_pv_tune_sc-16g-2/；逐 case CSV、日志、生成代码在 rep/v013_manual_pv_tune_sc-16g-2/。根目录 submission.py 未修改。
- 官方输入为 race_tests/nsa/official_case.json，测试入口 race_tests/nsa/test_tilelang_nsa_fwd.py，warmup 10、repeat 50，PyTorch reference 用 atol/rtol=1e-2 校验。脚本 run_official.sh 交替运行 v013/v009 两轮，结果均 14/14 PASS；额外 G=32 的 D64/D128 和 D32 S4 也 PASS。
- OJ 静态源码和 v013 全 14 份生成设备代码检查通过；在线 OJ 尚未测 v013。

## Benchmark 对比

case 6/12 单形状扫描均使用原测试入口 _run_one_case 并逐次通过正确性：

| 运行 | case 6 ms | case 12 ms |
|---|---:|---:|
| target_01_v009 | 0.167854 | 0.102953 |
| target_02_v010 | 0.169513 | 0.102953 |
| target_03_direct1_linear | 0.166098 | 0.101514 |
| target_04_direct1_half | 0.172989 | 0.106726 |
| target_05_direct1_quarter | 0.170798 | 0.109030 |
| target_06_direct1 | 0.168453 | 0.102784 |
| target_07_v009 | 0.167757 | 0.103060 |

交替完整测量平均：v013 两轮 0.039006、0.039098 ms；v009 两轮 0.039317、0.039306 ms。配对的 14 case 算术均值为 v013 0.039052 ms、v009 0.039311 ms，v013 低约 0.66%。14 个 case 中 8 个耗时下降、6 个上升。

| case | v009 配对均值 ms | v013 配对均值 ms | 耗时变化 |
|---:|---:|---:|---:|
| 1 | 0.010086 | 0.009508 | -5.740% |
| 2 | 0.010330 | 0.009715 | -5.949% |
| 3 | 0.012349 | 0.012085 | -2.138% |
| 4 | 0.013197 | 0.012816 | -2.891% |
| 5 | 0.031419 | 0.032169 | +2.387% |
| 6 | 0.168773 | 0.166843 | -1.144% |
| 7 | 0.030976 | 0.031524 | +1.769% |
| 8 | 0.051827 | 0.052643 | +1.575% |
| 9 | 0.051814 | 0.052596 | +1.507% |
| 10 | 0.011997 | 0.011658 | -2.822% |
| 11 | 0.023460 | 0.022900 | -2.389% |
| 12 | 0.103455 | 0.100751 | -2.613% |
| 13 | 0.011067 | 0.011147 | +0.718% |
| 14 | 0.019610 | 0.020373 | +3.891% |

case 6/12 分别低约 1.14%/2.61%，但 case 5/7/8/9/14 分别慢约 2.39%/1.77%/1.58%/1.51%/3.89%；整体本地均值收益不能直接代表每个 shape 都改善。case 1/2 两轮方向不一致，视为测量波动。

## Profile 指标变化

设备代码包 generated_code.tar.gz SHA-256 228a1bba302c217d301940c6caff26a06520eb2b921ac6544d140544a6a5aed2。case 6 的 __syncthreads() 静态出现次数：v009 7、v010 9、PV 直读默认布局 7、v013 7；case 12 各版均为 5。v013 case 6/12 设备代码哈希与直读默认布局不同，说明 linear V 布局确实改变了生成代码。QK 路径未变，PV 仍走 T.tvm_mfma。未采集 mcProfiler、mcTracer、Roofline 或寄存器报告；该轮无法验证 bank 冲突或占用率变化。

## 实验总结

PV k_pack=2 直接复用 QK score 布局数值错误，不能用；k_pack=1 直读正确并消除 v010 的 BS32 额外 shared 重排。V linear 布局在 case 6/12 首轮均优于默认 swizzle，half/quarter 更慢。v013 整套本地均值小幅改善，但 5/7/8/9/14 退化，OJ 尚未验证，因此只归档为候选，不替换 OJ Accepted 的 v009。下一轮可把手写 PV 限定在已有手写 QK 的形状，保留其他形状的 v009 PV 路径并配对验证。
