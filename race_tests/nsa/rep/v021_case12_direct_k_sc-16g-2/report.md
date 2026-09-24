# v021 case12 手写 QK 的 K global→local 直载

## 上版本遗留问题
OJ 已接受 v009 的 case12（B4 seq1024 H1 HQ16 D64 S8 BS16）每 query 平均处理7.453个有效 block，约0.103 ms。此前诊断显示 MMA Duty约8.40%、MTE Duty约62.49%、L2命中约88.13%，而 HBM 未饱和。v020 把多个block拼成大 tile 导致 shared 增长与显著退化；需要保持小资源开销地减轻每轮数据搬运。

## 问题原因分析
v009 手写 QK 在每个选中block先 T.copy(K→k_shared)，再由 ldmatrix_b(shared→k_local) 搬入 MFMA B operand。该轮路经8次重复。v021 在 S8、BS16、D64、G16 的路径上改为按原 B operand lane/本地索引从全局 K 直接向 k_local 做 vectorized8 读取。虽然跨 lane 的 K 地址跨度较大，但这批 K/V 工作集很小且高比例命中 L2，能避免 shared 中转与缩小动态 shared。

## 本版本解决方案
仅对 selected_blocks==8、block_size==16、dim==64、groups==16 的 manual-QK 路径调用新的 ldmatrix_b_global。其他参数仍精确走 v009 原 K shared 加载、QK/PV、在线 softmax 与输出路径。没有异步 copy、foreign code、Torch GPU 计算或显式同步。

## 具体落地策略
- 机器 sc-16g-2；起点 Git 9dd8619ce；v009 SHA-256 b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c；v021 SHA-256 c81f4c6e1501c5b49ed56d0c260e191879986753acae0baa196f01f1c4aa1b92。
- 精确提交候选位于 submission/v021_case12_direct_k_sc-16g-2/submission.py；实验 patch、脚本、原始 CSV/日志/生成设备代码与 profiler 报告分别位于 experiments/hack/rep 同名目录。根目录 submission.py 和 v009 未修改。
- 共享 test_tilelang_nsa_fwd.py 官方14 case 入口，warmup10/repeat50，PyTorch reference atol/rtol=1e-2。v021/v009 三对独立进程交替，各轮均14/14 PASS；额外 S8 的短序列、H2/G16 与 G32 fallback 数值正确。
- 精确源码和全部14份设备代码通过 OJ 静态检查。在线 OJ 尚未测试 v021。

## Benchmark 对比
| 指标 | v009 | v021 | 耗时变化 |
|---|---:|---:|---:|
| case12 三轮中位数 | 0.103357 ms | 0.088934 ms | -13.96% |
| 14 case 逐 case 中位数的均值 | 0.039155 ms | 0.038147 ms | -2.58% |

case12 的 v021 三轮为0.088771/0.088991/0.088934 ms，v009 为0.103281/0.103409/0.103357 ms，方向一致。v021 首轮 case13 出现0.027919 ms 尖峰，另两轮0.010716/0.011013 ms；原始值均保留，整体主指标用逐 case 三轮中位数以抵抗该异常值。其余13个官方 case 的 generated device code 与 v009 逐字相同，其微小计时差不归因于本轮改动。逐 case 全表见 median_summary.csv。

## Profile 指标变化
| case12 指标 | v009 | v021 |
|---|---:|---:|
| 动态 shared launch bytes | 4608 | 2560 |
| 生成代码静态同步 | 5 | 5 |
| L2C hit rate | 88.13% | 91.57% |
| profiler global read / 调用 | 14.870 MB | 14.845 MB |
| profiler global write / 调用 | 13.481 MB | 13.476 MB |
| shared 无冲突访问 | 74.17% | 65.35% |
| 冲突 WG 指令平均额外周期 | 1.21 | 1.42 |
| AP MTE Duty | 62.49% | 67.60% |
| AP MMA Duty | 8.40% | 9.84% |

生成代码 diff 表明 K 仍以每线程16字节 uint4 从全局读取，但直接放入 k_local；K→shared 写及 shared→local 读消失。shared 缩小约44%，同步静态数量未变。全局访存字节近似不变，而 shared bank 指标略差，说明性能改善并非来自降低 HBM 流量或 bank conflict；更可能是去掉每轮 K 的中间搬运、缩短数据到达关键路径以及降低 shared 资源压力。kernel级计数器不能精确拆出各项收益比例。mcProfiler 产物与 source/codegen 哈希完整归档。

## 实验总结
v021 在 case12 实现了重复测得的约14%局部收益，14 case 中位数均值本地约低2.6%，完整14 case与额外形状正确，OJ 静态检查通过。它仍是 OJ 未验证的候选；v009 继续作为已接受版。与 v016 的 case6 output_shared swizzle 属于不同官方形状、不同数据通路，可在下一版组合并精确复测。
