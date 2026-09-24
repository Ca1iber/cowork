# v025 case6 单 CTA 串行多个 query：退化

## 上版本遗留问题
v023 本地 case6 约0.157 ms，仍有8192个64-thread CTA，每个CTA仅处理一个query token。希望通过减少CTA数量获得比继续调K预取参数更大的收益。

## 问题原因分析
官方 case6 每个query独立随机选择一个KV block。将多个query放进同一CTA并不能保证K/V block复用；若仍由同一64线程wave串行计算，只会减少同时可调度的CTA。TileLang 编译器还可能延长 shared 缓冲区活跃期，增大每CTA资源需求。

## 本版本解决方案
从 v023 精确源码出发，只对 S1/BS32/D128/G16、且序列长度可整除分组大小的形状设置 token_group=2/4/8。T.Kernel token grid 相应缩小，一个CTA内部 T.serial 逐token执行原v023的QK/softmax/PV并重置状态；其它形状 token_group=1。补丁在 experiments/v025_case6_token_group_sc-16g-2/，脚本/原始数据分别在hack/rep同名目录。

## 具体落地策略
调用共享 test_tilelang_nsa_fwd.py::_run_one_case 的官方case6，warmup10/repeat50、reference atol/rtol=1e-2，前后v023对照。三种候选源码均通过OJ源码静态检查；只做目标case快筛，因为所有候选显著退化，未创建submission/v025。

## Benchmark 对比
| 方案 | case6 ms | 正确性 | token grid x | 动态 shared |
|---|---:|---|---:|---:|
| v023 前 | 0.156938 | PASS | 1024 | 8448 B |
| 每CTA两个query | 0.175488 | PASS | 512 | 12800 B |
| 每CTA四个query | 0.174633 | PASS | 256 | 12800 B |
| 每CTA八个query | 0.181970 | PASS | 128 | 12800 B |
| v023 后 | 0.156708 | PASS | 1024 | 8448 B |

实际CTA总数为 grid_x×B×H，case6 的 B8/H1，分别8192/4096/2048/1024。减少CTA未使关键路径缩短。

## Profile 指标变化
未对明显退化候选再跑mcProfiler。generated_code.tar.gz显示 token 循环确实进入设备代码，host launch grid缩小，但动态shared从8448上升到12800 B；同一wave串行执行2/4/8个query。K/V选中块无共享保证，资源增加和并行CTA减少与退化方向一致。无法仅凭这些量化调度/占用各自百分比。

## 实验总结
按query串行持久化CTA不是本题case6的有效结构改法：没有KV复用，又减少独立wave并增加shared资源，目标耗时退化12%–16%。本轮拒绝，v023保持本地最佳候选。若追求更大提升，需要真正并行的多query数据流或新的KV访问重排，而非仅减少CTA数。
