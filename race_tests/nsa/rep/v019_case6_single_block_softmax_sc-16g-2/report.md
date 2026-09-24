# v019 case6 S1 单块 softmax：收益不显著

## 上版本遗留问题
v016 消除 case6 主要输出 shared bank conflict 后，case6 仍约 163 µs。v017 输出直写和 v018 V 提前加载均退化。S1 只有一个选中 block，但 v016 仍沿用通用多 block 在线 softmax 更新。

## 问题原因分析
通用路径保留 previous_max/rescale、旧 denominator 乘法和旧 output_acc 缩放。对第一个且唯一有效 block，旧 denominator/output_acc 都为0，这些在线累加状态数学上多余；但是否占主耗时需通过生成代码和计时检验。

## 本版本解决方案
仅对 BS32 且 S1 编译期分流：QK 和 causal mask 后，直接 reduce_max、exp2、reduce_sum，令 denominator=block_sum，进行一次 PV 和输出归一化；其他形状保持 v016。未改变输入输出接口或 sentinel 判断。

## 具体落地策略
实验补丁在 experiments/v019_case6_single_block_softmax_sc-16g-2/；脚本在 hack/；原始日志/CSV/生成代码在 rep/。从 v016 精确源码出发，仅筛选官方 case6，调用共享 test_tilelang_nsa_fwd.py::_run_one_case，warmup10/repeat50，reference atol/rtol=1e-2。无可推广提交候选，因此未创建 submission/v019。

## Benchmark 对比
| 路径 | case6 ms | 正确性 |
|---|---:|---|
| v016 前 | 0.163185 | PASS |
| S1 直接 softmax | 0.162796 | PASS |
| v016 后 | 0.163727 | PASS |

相对前后对照均值仅低约0.4%，在本地小幅波动范围内，未跑完整14 case或 OJ。

## Profile 指标变化
生成代码表明 exp2f 静态调用从2处降为1处，旧 output_acc rescale 删除；7处同步未变。设备代码由9494字节变为9108字节。没有对噪声边缘候选另采 mcProfiler；生成代码差异与微弱耗时变化说明被删的在线状态不是 case6 主要瓶颈。

## 实验总结
数学冗余已清除、数值正确，但本地性能收益不显著。本轮判定无推广价值，保留 v016；下一轮转向约占14 case 耗时19%的 case12 S8 串行 block 路径。
