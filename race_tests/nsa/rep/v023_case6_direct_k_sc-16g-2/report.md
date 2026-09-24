# v023 case6 K 直载与两轮预取

## 上版本遗留问题
v022 合并 case6 output_shared swizzle 与 case12 K global→local 直载后，本地14 case 中位数均值比 OJ Accepted v009 低约3.7%；但 case6 仍约0.164 ms。case6 MMA Duty低、L2命中约69%、K 数据到达是剩余疑点。需要检验 case12 成功的 K 直载是否适用于 BS32/D128，并调预取深度。

## 问题原因分析
v022 的 case6 先将 K global→shared，再从 shared 装入 MFMA B 的 k_local；K 的 shared 路径与输出 swizzle 并存。v023 只在 S1/BS32/D128/G16 把 K 直接 vectorized8 从全局载入 local。直接一轮读后就做 MFMA，虽省 shared 中转但跨 lane 的 K 访问更分散。预装两轮 K 片段可在使用前发出更多 L2 请求，且 local 缓冲仅为四轮全预装的一半。

## 本版本解决方案
以 v022 精确源码为起点，扩展 use_direct_k 到 case6 参数；该路径保留 v022 对 output_shared 的 swizzled layout。扫描每轮即用 K、每次预装2轮、一次预装4轮三种 B fragment 数据流，联动调整 k_local 长度和 MFMA B operand 偏移。最终选择预取深度2；case12 和其它参数路径保持 v022。

## 具体落地策略
- 机器 sc-16g-2；起点 Git ec791dcaa。v009 SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c；v022 SHA-256 998c55947b9859d9c125e59b0e1857fc7eb81c268084c6bc8e32c600b37156ea；v023 SHA-256 eb4fdfd7cc0814443109a6674a14c3efe3fbe5f1d17ae6e198a6e866093e9fd2。
- 精确候选源码在 submission/v023_case6_direct_k_sc-16g-2/submission.py；实验 patch、脚本、原始日志/CSV/设备代码/profiler 在 experiments/hack/rep 同名目录。根目录 submission.py、v009、v022 均未修改。
- case6 预取深度屏：直接 K 为0.161828 ms；预装2轮两次为0.156718/0.156590 ms；预装4轮两次为0.157870/0.157681 ms；v022 前后0.163267/0.163154 ms，全部正确。
- 官方14 case：v023 三轮各14/14 PASS；v009 第一轮完成CSV后进程退出137（容器 OOM），严格排除，补跑至三轮正常退出基线。额外 BS32/D32、BS32/G32/D128、S8 短序列和 S8/H2/G16 形状均 PASS。精确源码和全部14份设备代码通过 OJ 静态检查；在线 OJ 尚未测。

## Benchmark 对比
主指标为每 case 的三轮 GPU latency 中位数，再对14个 case 中位数取算术平均。原始全部数据和被排除的退出137轮日志均保留。

| 指标 | v009 三轮中位数 | v023 三轮中位数 | 耗时变化 |
|---|---:|---:|---:|
| case6 | 0.168540 ms | 0.157041 ms | -6.82% |
| case12 | 0.103455 ms | 0.088760 ms | -14.20% |
| 14 case 中位数均值 | 0.039110 ms | 0.037273 ms | -4.70% |

v023 三轮14 case 平均分别0.037257/0.037235/0.037212 ms；三轮有效 v009 为0.039156/0.039059/0.039176 ms。case6 的新局部收益相对 v022 三轮中位数0.163845 ms 约为4.15%；case12 保留 v022 的直载收益。其它 case 的小幅时间差不能归因于本轮，因为其计算设备代码未实质改变。

## Profile 指标变化
| case6 指标 | v022 | v023 |
|---|---:|---:|
| k_local / thread | 16 half | 32 half |
| 动态 shared launch bytes | 8192 | 8448 |
| 静态 block 同步 | 7 | 5 |
| L2C 命中率 | 69.37% | 76.22% |
| profiler global read / 调用 | 59.248 MB | 58.669 MB |
| profiler global write / 调用 | 53.905 MB | 53.905 MB |
| shared 无冲突访问比例 | 92.45% | 89.19% |
| WG load 平均延迟 | 40.26 cycles | 38.22 cycles |
| AP MTE Duty | 37.13% | 36.43% |
| AP MMA Duty | 5.46% | 5.75% |

设备代码显示每次预装两轮 K 的16字节向量读，然后对两轮执行 MFMA；K global→shared→local 往返消失，output_shared swizzle 保留。静态同步少2处，但动态 shared 反而比 v022 多256 B，因为编译器重排了剩余 V/output/reduction 暂存。全局字节近似不变、L2命中上升，shared bank 指标略降；因此本轮收益归因于 K 数据供给顺序和省掉中转较合理，不能称为新的 bank conflict 优化。kernel级计数器不能精确拆出两者各自的百分比。

14份生成代码检查：case6 新 K 预取路径改变；case12 与 v022 逐字相同；case10/11 仅 reduction scratch shared 地址互换；其余官方形状与 v022 逐字相同。完整 codegen_comparison.csv、生成代码及 profiler 原始 bundle 已归档。

## 实验总结
v023 在保留 v022 case12 局部收益的同时，将 case6 相对 v009 的本地耗时降低约6.8%，14 case 中位数均值降低约4.7%；全部官方及额外形状正确，源文件与生成设备代码通过 OJ 静态检查。它是当前最佳本地候选。在线 OJ 尚未验证，v009 仍是唯一已接受版本，不能把本地收益等同 OJ 得分提升。
