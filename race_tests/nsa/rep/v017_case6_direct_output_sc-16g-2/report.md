# v017 case6 去掉输出 shared 往返：未成功

## 上版本遗留问题
v016 把 case6 shared 无冲突访问比例从 44.95% 提升至 92.45%，case6 本地快约 3.35%，但输出仍通过 output_acc→output_shared→Output，两次同步夹着 shared 中转。想验证这段开销能否进一步消除。

## 问题原因分析
v016 设备代码最后通过 shared 重排 MFMA 的 C fragment，再用每线程 16 字节的 uint4 合并写入全局 Output。初始假设该 shared 往返主要是额外开销。试验显示它还负责跨 lane 布局转换、形成宽而合并的 global store。

## 本版本解决方案
从 v016 精确源码出发，只在 BS32 路径测试三种不经 shared 的输出：T.copy(output_acc, Output)、先 T.copy 到 half fragment 再写 Output、T.Parallel 逐元素写。另试给 half/float fragment 显式注解连续全局写所需的线程布局。其余形状沿用 v016。

## 具体落地策略
- 机器 sc-16g-2；起点 Git 08b8878d3。只在 /tmp/nsa_v017 生成实验候选，补丁在 experiments/v017_case6_direct_output_sc-16g-2/，脚本在 hack/ 同名目录，原始日志、CSV、设备代码在 rep/ 同名目录。
- 测试调用共享 test_tilelang_nsa_fwd.py::_run_one_case 的官方 case6，warmup10/repeat50，PyTorch reference atol/rtol=1e-2。前后运行 v016 对照。属于诊断快筛，不作为 OJ 或完整 14 case 性能结论。
- 没有生成 submission/v017 版本：全部候选退化或编译失败，v016 仍是本地最佳候选。

## Benchmark 对比
| 路径 | case6 ms | 正确性 | 设备同步 | 全局 Output 写宽 |
|---|---:|---|---:|---|
| v016 前 | 0.162954 | PASS | 7 | 每线程 uint4，16 B |
| direct copy | 0.174377 | PASS | 5 | 每线程 uint2，8 B |
| half fragment | 0.180291 | PASS | 5 | 每线程 uint2，8 B |
| scalar store | 0.173942 | PASS | 5 | 每线程 uint2，8 B |
| v016 后 | 0.163005 | PASS | 7 | 每线程 uint4，16 B |

显式 coalesced half/float fragment 候选在 TileLang LayoutInfer 阶段失败：output_acc 的 MFMA C fragment 线程布局与期望连续全局写布局冲突。失败日志、源码 patch 均保留。

## Profile 指标变化
本轮没有对退化路径继续运行 mcProfiler；generated_code.tar.gz 证明三个正确的直写路径都去掉两次同步及输出 shared 往返，但 global store 从 uint4 缩成分散的 uint2。无法把性能退化精确拆分成指令数与访存事务，但代码生成与时间方向一致。

## 实验总结
直接移除 output_shared 不能改善 case6：省下 shared 往返后丢失了跨 lane 重排与合并 global store，耗时反而高 7%–11%。显式 coalesced fragment 在当前 TileLang 布局推断中不可用。本轮判为拒绝，v016 不变；下一轮应转向 K/V 数据到达时机和关键路径重排，不再盲目删除 output_shared。
