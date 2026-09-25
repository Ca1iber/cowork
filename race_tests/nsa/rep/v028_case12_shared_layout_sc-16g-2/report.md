# v028 case12 V shared 线性布局：局部优化，bank conflict 反而升高

## 上版本遗留问题与假设
v026 case12 约0.0866 ms，profile 显示 shared 无冲突仅65.35%、WG load 约47.8 cycles、MTE Duty约65%；每个 query 的 S8 稀疏块会重复读取 V shared。旧 v016 在 case6 给输出暂存加 swizzle 曾显著降低 bank conflict，故本轮对 case12 分别试 `output_shared` swizzle 和 `v_shared` linear 两个独立缓冲区布局。预计能降低 shared 冲突/加载延迟；实际结果推翻了这一具体归因，但 `v_shared` linear 在时延上确实获益。

## 实现与归档
从 v026 精确源码 SHA-256 `3687b4c84081ecf00b3286c40a7fc57ddf89cd0dfa83aca63574513c028acc77` 起步。失败的 output swizzle 变体 SHA-256 `d74d948d5127f22e5ad0a21c5c0d170fff9b0ad6e4c518e799913eb6c9e0aadc` 只保留于 experiments；最终 `v_shared` linear 候选在 `submission/v028_case12_shared_layout_sc-16g-2/submission.py`，SHA-256 `42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd`。仅 case12 (S8/BS16/D64/G16) 添加 `v_shared: tilelang.layout.make_linear_layout(v_shared)`；case6 和其它官方形状沿用 v026。根目录 `race_tests/nsa/submission.py` 未修改。机器 sc-16g-2；起点分支 `nsa-dev`、Git `ca792f868`；官方 JSON、测试入口和源码哈希见 `input_sha256.txt`。

## 正确性与 OJ 规则
两个布局候选都通过共享 `_run_one_case` 的 case6/12 原 reference（rtol/atol 1e-2）。最终精确提交源码通过原 `test_tilelang_nsa_fwd.py` 的官方14 case，14/14 PASS，warmup10/repeat50 GPU event。源码及全部14份生成设备代码通过 OJ 静态检查；没有异步 copy、注入代码或 PyTorch GPU 运算。**在线 OJ 未验证**，不能称 Accepted。

## 目标 case 重复结果
v026 的五轮目标测试分别围绕两个候选交替运行；v028 linear 初筛一次、独立确认两次。下表用各自中位数，所有原始 CSV/日志均保留。output swizzle 首轮 case12 0.086630 ms、相邻 v026 0.086697 ms，差异在噪声内，未继续。

| case | v026 中位数 ms | v028 中位数 ms | 耗时变化 |
|---:|---:|---:|---:|
| 6 | 0.156692 | 0.156790 | +0.06%，持平 |
| 12 | 0.086697 | 0.083323 | -3.89% |

## 官方14 case 同环境对照
单轮官方14 case 均14/14 PASS；v026 case12 0.086482 ms、v028 0.083507 ms（-3.44%）。14 case 算术均值0.037073→0.036944 ms（-0.35%）；单轮整体均值仍小，不能据此宣称线上总分提升。逐 case 对比如下，完整原始值见 `official_v026.csv`、`official_v_linear.csv` 和 `official_comparison.csv`。

| case | v026 ms | v028 ms | 耗时变化 |
|---:|---:|---:|---:|
| 1 | 0.008648 | 0.009160 | +5.92% |
| 2 | 0.009129 | 0.009656 | +5.77% |
| 3 | 0.012247 | 0.012268 | +0.17% |
| 4 | 0.012795 | 0.012564 | -1.80% |
| 5 | 0.031386 | 0.031232 | -0.49% |
| 6 | 0.156841 | 0.157076 | +0.15% |
| 7 | 0.031457 | 0.031252 | -0.65% |
| 8 | 0.052234 | 0.052557 | +0.62% |
| 9 | 0.052163 | 0.052270 | +0.20% |
| 10 | 0.011919 | 0.011914 | -0.04% |
| 11 | 0.023270 | 0.023281 | +0.05% |
| 12 | 0.086482 | 0.083507 | -3.44% |
| 13 | 0.010573 | 0.010737 | +1.55% |
| 14 | 0.019871 | 0.019748 | -0.62% |

## 生成代码与资源
`codegen_comparison.csv` 显示，14个官方形状中仅 case12 的设备代码不同，全部 host 代码逐字相同。case12 只改两处 V shared 地址：global→shared 的写址从多层 XOR/swizzle 变成线性 `i*512 + thread*8`，shared→PV fragment 的读址从多层位运算变成线性 `lane/warp` 组合；V global 仍为16B `uint4` 读取。静态 `__syncthreads()` 都是5处，MFMA/softmax/输出路径未变。见 `case12_device.diff` 与完整 `generated_code.tar.gz`。未归档后端 ISA，不能给出每线程指令数的精确变化。

## 硬件计数器：原 bank 假设被证伪
同机、同 case12、每组20次 profiler 计数（不使用 profiler 时长做性能结论）：

| 指标 | v026 | v028 linear |
|---|---:|---:|
| shared 无冲突访问 | 65.35% | 48.71% |
| 冲突指令平均额外周期 | 1.42 | 2.82 |
| WG load 平均延迟 | 47.80 cycles | 62.35 cycles |
| L2 hit | 91.57% | 91.57% |
| global read / 调用 | 14.843 MB | 14.842 MB |
| global write / 调用 | 13.476 MB | 13.479 MB |
| MTE Duty | 65.39% | 61.11% |
| MMA Duty | 10.03% | 10.44% |

同步8秒持续负载的 mx-smi 物理 HBM：v026 case12 约204.9 GB/s，v028 约212.3 GB/s；v028 为66/66活跃样本，XCORE/MC 均1125/1800 MHz。此前同实例大块复制约1427 GB/s，只作量级参照。v028 变快的同时 bank conflict **更重**、全局流量基本不变，故本次不是 bank conflict 优化；生成代码里地址计算显著简化，可能抵消了更差的 shared 访问，但没有后端 ISA 或分阶段计时，不能断言唯一原因。对性能收益的判断来自无 profiler 的重复 GPU event 计时。

## 结论
v028 是可复现的 case12 局部改进，目标形状中位数比 v026 低约3.9%，case6 持平，官方14 case 完整正确。初始“bank conflict 会下降”的预测被硬件计数器否定；保留准确的反例和最终候选，线上 OJ 仍待验证。case6 这轮没有新的局部收益，继续以 v023 的 K 直载和 output swizzle 路径为准。下一步若继续 case6，应针对向量加载供给或并行工作组织，而不是重复同步 V copy 前移或沿用本轮线性 V 布局推断。
