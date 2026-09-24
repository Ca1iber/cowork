# v018 case6 V 提前加载：未成功

## 上版本遗留问题
v016 case6 的 shared bank conflict 已大幅下降，但设备 kernel 仍约 163 µs。原数据流先 K copy→QK→softmax，再 V copy→PV，使 V 加载位于后半关键路径。

## 问题原因分析
同步 TileLang T.copy 不会自动构成异步预取。提前让 K/V 同时驻留 shared 还会阻止原编译器复用缓冲区：精确生成 host launch 将动态 shared 从 v016 的 8192 B 提高至 K/V 同时加载的 16384 B。V 在 QK 后但 softmax 前加载时为 8448 B。前者减少一次同步，却仍明显退化。

## 本版本解决方案
只对 BS32 尝试两种 V copy 次序：K copy 后立即 V copy；或 QK 后、softmax 前 V copy。其余形状及数学路径保持 v016。候选均由 experiments/v018_case6_v_early_sc-16g-2/ 中的 patch 复现，未创建 submission/v018。

## 具体落地策略
从 v016 精确源码出发，脚本在 hack/v018_case6_v_early_sc-16g-2/，原始日志、CSV、生成代码在 rep/ 同名目录。调用共享 test_tilelang_nsa_fwd.py::_run_one_case 的官方 case6，warmup10/repeat50、原 reference atol/rtol=1e-2；前后 v016 对照，属于诊断快筛，不是 OJ 或完整14 case 性能结论。

## Benchmark 对比
| 路径 | case6 ms | 正确性 | 动态 shared | 静态同步 |
|---|---:|---|---:|---:|
| v016 前 | 0.163159 | PASS | 8192 B | 7 |
| K/V 一起提前加载 | 0.263158 | PASS | 16384 B | 6 |
| QK 后、softmax 前 V 加载 | 0.180285 | PASS | 8448 B | 7 |
| v016 后 | 0.163011 | PASS | 8192 B | 7 |

## Profile 指标变化
未对明显退化的候选继续运行 mcProfiler。generated_code.tar.gz 与两份 host/device diff 证明加载次序、shared 资源和同步确实改变。数据不支持“V copy 前移可以在当前同步路径中隐藏访存等待”的假设。

## 实验总结
两种候选均正确但耗时退化。K/V 同时驻留使 shared 占用翻倍且 case6 慢约61%；稍后预加载也慢约10%。本轮拒绝，v016 不变。下一轮应减少 S1 路径不必要的在线 softmax 状态更新，而非继续前移同步 T.copy。
