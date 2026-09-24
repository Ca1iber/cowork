# v027 K 直载后的 V 提前加载：拒绝

## 上版本遗留问题与本轮假设
新一轮 profile 显示 case6/12 设备 kernel 主导时延，K 直载后的 VLS pipeline stall 上升，case12 MTE Duty 约65%，HBM 没达到复制上限。v026 的 V copy 在 softmax 之后、PV 之前。旧 v018 在 K shared 路径提前 V 使 shared 翻倍并严重退化；本轮 case6/12 均为 K 直载，测试资源关系不同的两个提前时机：QK 前、QK 后而 softmax 前。假设提前发起 V load 可与 QK 或 softmax 重叠。

## 实现与测试
从 v026 精确提交 `2395e0a4c`、源码 SHA-256 `3687b4c84081ecf00b3286c40a7fc57ddf89cd0dfa83aca63574513c028acc77` 生成两个独立候选：`pre_qk` SHA-256 `caaef123fe8c6cce65658da04b7bf785653cc7364557015f5dd655eff7ffe1e9`、`pre_softmax` SHA-256 `563bddf2950edb78f038256eba911fd1572b6c5e791047511e414eb8c0f9d96a`。源码快照与 patch 均在 experiments 同名目录；没有复制固定 JSON/reference/测试入口，也没有创建 submission/v027。两候选仅对 directK case6/12 改 V copy 顺序，其余参数路径保持 v026。

通过共享 `_run_one_case` 的原 reference、rtol/atol 1e-2、GPU event warmup10/repeat50，顺序 `v026→pre_qk→v026→pre_softmax→v026`。两候选 case6/12 均 PASS，源码和对应两份设备代码通过 OJ 静态检查；由于目标结果已经退化，未做完整14 case或在线 OJ，不把此 screen 当正式14 case 成绩。

## 目标时延
| 路径 | case6 ms | 对 v026 三轮中位数变化 | case12 ms | 对 v026 三轮中位数变化 |
|---|---:|---:|---:|---:|
| v026 三轮 | 0.157000 / 0.156810 / 0.156723；中位数 0.156810 | — | 0.086871 / 0.086605 / 0.086661；中位数 0.086661 | — |
| QK 前 V copy | 0.156759 | -0.03%（噪声内） | 0.087793 | +1.31% |
| QK 后、softmax 前 V copy | 0.167997 | +7.13% | 0.089400 | +3.16% |

## 生成代码归因
两个变体都实际移动了 V 的 16B `uint4` 全局读取；case6/12 的静态 `__syncthreads()` 数量仍各5处，且目标代码均通过无异步 copy 等 OJ 静态检查。`pre_qk` 的 case12 在每个 selected 循环开头增加了一处同步，随后 V 与 K 全局读取，再在 softmax 前同步，没形成可观收益。`pre_softmax` 的 case12 先在 QK 后同步，然后 V copy，紧接着再次同步才开始 max/softmax；这会把 V 等待提前到 softmax 前，而不是与之重叠，和 case6/12 退化方向一致。设备代码 diff 与原始目标源码都已归档。没有对已明确退化的候选继续 mcProfiler/HBM/完整14 case；本轮不声称量化每处同步的单独开销。

## 结论
假设被证伪：在当前 TileLang 同步 `T.copy` 降低路径中，提前 V copy 不会自动形成有效计算/加载重叠；K 直载虽避免 v018 的 K shared 冲突，也不足以使两种时序获益。v027 拒绝，v026 保持局部候选，case6 仍沿用 v023 设备路径。下一轮应改变 V 数据布局或 CTA 内工作组织，而不是继续移动同步 copy 的位置。
