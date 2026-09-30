# codex-power v002：四块一组的 S8 tile 筛选（sc-16g-2）

## 1. 起点与假设

父版 v001 的 128-token 单 tile 虽正确，却比原始基线慢 5.43 倍，且使用 109 MT/56 ST registers。v002 假设将 8 个块分成两组、每组 64 token，可减少 fragment 和 shared 压力，同时把 online softmax 从 8 轮缩为 2 轮。原始基线 case12 的官方延迟为 **124.155 µs**。

## 2. 实现

从用户指定的原始 `ffa68b6…` 源码独立构造 S8/BS16/D64/G16 专用路径。每个 segment 收集 4 个被选 K/V 块，进行 QK、掩码、online softmax 更新和 PV；共两轮。首块无效的整组跳过，组内无效块写零且分数设负无穷。其他形状仍走起点路径。候选 SHA-256 `15e8a7b7a0cbd5220dd7628ceab9eef48713f87ce2432f70b43714b4efac6c19`。

## 3. 导入与正确性

候选只有用户允许的三条导入，没有额外 class、异步拷贝或外部设备代码。源码及目标形状生成 C++ 的 OJ 静态检查通过。case12 的原始 `naive_nsa` 参考 **PASS**，项目原生计时使用 warmup 10/repeat 50。

## 4. 性能筛选

case12 从原始基线 **124.155 µs** 升至 v002 **242.396 µs**，约慢 **1.95 倍**。虽比 v001 的 674.616 µs 低，仍与本版预测方向相反。本数值仅是目标形状屏蔽测试，不能称全量官方或 OJ 结果。

## 5. 代码与资源

MXCC 报告 v002 目标 kernel 为 **150 MT/30 ST registers、0B stack、静态最多 3 warps/PEU**；原始基线为 73/28、6 warps/PEU。生成设备 C++ 中两个 segment 仍逐次执行，内部 QK/PV 仍有 MFMA 循环；按组缩小 tile 没有解决寄存器压力。当前证据支持资源恶化是主要风险，不能仅凭资源统计精确分摊延迟。

## 6. 未采集证据

因目标形状已比基线慢近一倍，全 14 项正式计时、mcTracer、mcProfiler、持续 HBM 与外部 OJ 均未运行，明确记录在 `UNAVAILABLE_FULL_PROFILE.md`。候选保存在 `experiments/`；`submission/` 只保存不可提交说明，根提交入口未改。

## 7. 结论

**v002 失败并封存。** 下一步需针对 v001/v002 共同暴露的 per-thread fragment 和 warp 映射问题，尝试把 128 列分给更多线程，再通过生成代码确认是否真的减少每线程工作；仍先过参考、静态导入和端到端延迟。
