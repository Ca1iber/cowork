# v020 case12 分组 sparse block：资源代价超过收益

## 上版本遗留问题
v009 case12 S8 每 query 平均 7.453 有效 block，generated code 在8轮中每轮4处无条件同步，末尾再1处，总共33处/CTA。case12 本地约0.103 ms，在线 PV 手写没有明显 OJ 收益。希望按2/4/8个 block 分组减少在线 softmax 轮数。

## 问题原因分析
将选中的 K block 拼到更大 shared tile，可把 QK/softmax/PV 从8轮降至4/2/1轮，但 K tile、V tile、scores/scores_half fragment 同时变大。资源与局部布局重排可能抵消同步减少。

## 本版本解决方案
只对 S8、BS16、D64、G16、causal1 生成专用 TileLang kernel；每组先搬 K、一次 QK 与在线 softmax，再搬 V、一次 PV；其他形状精确沿用 OJ Accepted v009。扫描每组2/4/8 block，固定64 threads，并尝试128/256 threads 联动。

## 具体落地策略
代码生成器和 runner 在 hack/v020_case12_grouped_blocks_sc-16g-2/；各候选补丁在 experiments/ 同名目录；日志、case12 CSV、生成设备代码在 rep/。使用共享 test_tilelang_nsa_fwd.py::_run_one_case 的原 case12，warmup10/repeat50、PyTorch reference atol/rtol=1e-2。无可提交候选，因此未创建 submission/v020。

初始分组2在早期 query 的全无效组出现 NaN；将全无效组的 rescale 设为1、score权重设为0后，2/4/8 全部数值正确。早期失败日志和修复后的源码 patch 均保留。

## Benchmark 对比
| 路径 | case12 ms | 正确性 | 动态 shared | 后端状态 |
|---|---:|---|---:|---|
| v009 对照一 | 0.103081 | PASS | 4608 B | 64 threads |
| grouped2 | 0.148516 | PASS | 10752 B | 64 threads |
| grouped4 | 0.244849 | PASS | 18944 B | 64 threads |
| grouped8 | 0.251551 | PASS | 18432 B | 64 threads |
| v009 对照二 | 0.102932 | PASS | 4608 B | 64 threads |

128-thread 的 grouped2/4/8 和256-thread 的 grouped4/8 全部在 LayoutInfer 阶段失败：QK 的 scores fragment 与 PV 的 scores_half fragment 线程分布冲突。线程扫描最后一轮 v009 进程退出137（容器 OOM），未纳入统计；同轮第一轮 v009 为0.102943 ms，与上述对照一致。

## Profile 指标变化
没有对严重退化或无法编译的候选继续运行 mcProfiler。generated_code.tar.gz 与 host launch 报告证实：64-thread 分组候选的动态 shared 从 v009 的4.5 KiB 提至10.5/18.5/18 KiB；组内大 GEMM 和更大的 scores fragment 同时增加资源压力。静态同步位置虽减少，当前资源和数据搬运代价更大。

## 实验总结
简单拼接多个 sparse block 并让 T.gemm 处理大 tile 在本机不可取：64-thread 候选全部显著退化，128/256-thread 联动又受 fragment 布局限制。本轮拒绝，v009 继续是 OJ 已接受版本；后续应保持小 shared footprint，再针对每 block 的 K/V 搬运与同步寻找局部数据流优化。
