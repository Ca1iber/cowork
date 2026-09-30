# codex-power v003：S8 四 wave tile 的失败筛选（sc-16g-2）

## 1. 起点与假设

v000 原始 case12 为 **124.155 µs**；v001 的 64 线程 128-token tile 为 **674.616 µs**、每线程 32 个 FP32 score、109 MT/56 ST。v002 四块分组仍慢。v003 假设把同一 128 列 tile 分给 256 线程，降低每线程 fragment、缩短矩阵指令循环，使目标延迟回到基线以下。

## 2. 两次实现状态

第一份 256 线程候选保留 FP16 `scores_half` fragment，TileLang 报 `Layout infer conflict between scores and scores_half`，未运行；源码和编译日志分别保留为 `candidate_fragment_conflict.py`、`screen_fragment_conflict.log`。随后仅将 `scores_half` 改为 shared，保留 256 线程和相同数学流程。最终候选 SHA-256 `49274a43b56a6c1ccd32a66ac4c1655bd631f821decbd6a3c6d0e340b078fef7`，只使用用户限定的三条导入。

## 3. 正确性与静态规则

最终候选通过 case12 完整 `naive_nsa` 参考以及源码、目标生成设备 C++ 的 OJ 静态校验，没有额外 class、异步拷贝或外部设备代码。目标形状计时沿用原生 warmup 10/repeat 50。

## 4. 性能筛选

256 线程最终候选为 **338.908 µs**，比原始基线慢约 **2.73 倍**。虽比 v001 的 674.616 µs 快，仍不能进入全量竞赛测试或提交。这只是 case12 屏蔽结果，不是 OJ 分数。

## 5. 生成代码与资源

每线程 FP32 `scores` 从 v001 的 32 个降到 8 个；MXCC 从 v001 的 109 MT/56 ST 降至 **54 MT/28 ST、0B stack、静态最多 8 warps/PEU**。资源预测部分得到验证，但设备 C++ 有 **9 个静态 CTA 同步站点**，共享 FP16 权重增加了读写与同步；生成代码仍包含 QK/PV 的 MFMA 循环。不能仅凭这些计数精确归因 215 µs 回退，但它们解释了为何“更多线程”本身不等于更低端到端延迟。

## 6. 未采集证据

case12 屏蔽已超过基线 2.7 倍，因此未运行全 14 项正式计时、mcTracer、mcProfiler、持续 HBM 或外部 OJ。缺项见 `UNAVAILABLE_FULL_PROFILE.md`，没有补造数据。根 `submission.py` 未改，`submission/v003.../` 只记录不可提交原因。

## 7. 结论

**v003 失败并封存。** v001/v002/v003 三种 tile/warp 布局连续未能超过原始基线。按照 AKO4ALL 的停滞规则，下一步先在新环境快照下重新 profile 起点，再转向不同的机制；不沿着大 tile 分支继续调参。
