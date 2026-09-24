# v014 选择性手写 PV

## 上版本遗留问题

v013 对所有形状启用手写 PV，case 6/12 比 v009 快 1.14%/2.61%，但 case 5/7/8/9/14 有 1.5%–3.9% 的退化。需要保留受益形状并让其余形状回到 v009 PV T.gemm。

## 问题原因分析

v013 中 PV K16 直接消费 QK score，BS32 消除了 v010 多出的两次 block 同步；V 采用 linear shared 布局。基于 v013 的逐 case 观察，手写 QK 的形状是优先适用手写 PV 的候选。其余形状的退化来自手写 PV 路径或本地波动，需通过编译代码与 v009 对齐来隔离。

## 本版本解决方案

定义 use_manual_pv=use_manual_qk：block_size=32 或 S>1 时使用 v013 手写 PV K16+linear V；其余形状使用 v009 T.gemm PV。QK、softmax、64 threads、tile 及接口保持不变。

## 具体落地策略

- 机器 sc-16g-2，起点 Git 0bef05422；v009 SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c；v013 SHA-256 1940406c8138122fe45a6f635564d12f8a4a5bd000ccfdeca799e4caee0c9b26；v014 SHA-256 6f63ad7d994ef035acf77340b71c99427a09cbb2172d98868af67bd8dbe3c4e7。
- 精确源码在 submission/v014_selective_pv_sc-16g-2/submission.py；patch/假设、脚本、数据分别位于 experiments/hack/rep 的同版本目录。根目录 submission.py 不变。
- 官方 14 case 用共享 race_tests/nsa/test_tilelang_nsa_fwd.py，warmup 10、repeat 50，原 PyTorch reference atol/rtol=1e-2。run_official.sh 在独立进程按 v014/v009/v014/v009 交替运行。
- 精确源码和全部 14 份生成设备代码通过 OJ 静态检查；在线 OJ 未测。

## Benchmark 对比

四轮均 14/14 PASS。v014 两轮均值 0.038790、0.038656 ms；v009 两轮为 0.038892、0.038868 ms。配对 14 case 算术均值 v014 0.038723 ms、v009 0.038880 ms，耗时低约 0.40%；4 个 case 更快，10 个更慢（多数小差额属于同代码路径计时波动）。

| case | v009 ms | v014 ms | 耗时变化 |
|---:|---:|---:|---:|
| 1 | 0.008827 | 0.009075 | +2.810% |
| 2 | 0.009331 | 0.009559 | +2.438% |
| 3 | 0.012050 | 0.012231 | +1.510% |
| 4 | 0.012464 | 0.012862 | +3.185% |
| 5 | 0.030987 | 0.031278 | +0.941% |
| 6 | 0.168732 | 0.165888 | -1.686% |
| 7 | 0.030795 | 0.030978 | +0.598% |
| 8 | 0.051792 | 0.052319 | +1.018% |
| 9 | 0.051620 | 0.051707 | +0.168% |
| 10 | 0.011858 | 0.011709 | -1.252% |
| 11 | 0.022715 | 0.023019 | +1.341% |
| 12 | 0.103122 | 0.101027 | -2.031% |
| 13 | 0.010452 | 0.010995 | +5.190% |
| 14 | 0.019576 | 0.019471 | -0.534% |

case 6/12 分别低 1.69%/2.03%；case 10 低 1.25%，case 11 高 1.34%。非手写 PV 的 case 1/2/3/4/5/7/8/9/13/14 设备代码与 v009 逐字相同；它们的测量差异不能归因于本轮代码变化。

## Profile 指标变化

generated_code.tar.gz SHA-256 34d70790dc1481e3cd9d9aacaa78ccf3ad3aeb0266359baf86d056049cf28c87。codegen_comparison.csv 显示 10 个普通 PV case 与 v009 设备代码逐字相同；case 6/10 与 v013 逐字相同；case 11/12 与 v013 仅有 softmax block_max/block_sum 的 shared scratch 地址互换，其余指令一致。未采集 mcProfiler、mcTracer 或寄存器指标。

## 实验总结

选择性分流消除了 v013 在非手写 QK 形状上的代码差异，case 6/12 的局部收益重复出现，整套本地耗时略低。case 11 没有稳定收益，OJ 尚未验证。v014 仅为本地候选，v009 继续作为 OJ 已接受版本；下一轮进一步只对 case 6/12 对应参数启用手写 PV。
