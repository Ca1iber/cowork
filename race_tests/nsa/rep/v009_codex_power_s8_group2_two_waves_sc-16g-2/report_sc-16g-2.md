# codex-power v009：两块分组与双 wave 的 case12 失败筛选（sc-16g-2）

## 1. 起点和假设

原始 case12（B4/N1024/H1/HQ16/D64/S8/BS16）在 v000/v004 为 **124.155/123.448 µs**。v008 直接把 16 列块交给两组 wave 时 TileLang 编译除零。本版把相邻两个被选块组织为 32 列、用 128 线程处理，一共四个 online-softmax segment，目标是让每组 wave 获得完整的 16 列矩阵块，同时保持 shared 与 fragment 小于早期 64/128-token 方案。

## 2. 三份实现

从本分支独立构造的 v007 源码出发，只给 S8/BS16/D64/G16 插入两块分组路径。共享 FP16 score 的主候选 SHA-256 为 `bff0a800c667b4d260ea7c0ad4a3d395c4d89bbd6d6b62f996c29d35ad81f184`。fragment FP16 score 变体 SHA `d5c0210296215b6a5feb0fcf8b9287c36503a1ccfe55903c8e4b3dee1dfe3e73`；组内 K/V 用 `T.Parallel` 同时加载的变体 SHA `46440238aa3ecdbbdaf7151d3772e4b27cd938a9c8aa8c9c314a82ac7818cc32`。三者仅使用用户指定的三条导入，没有 async copy 或外部设备代码。

## 3. 正确性与静态规则

主候选与并行加载变体均通过 case12 完整 `naive_nsa` 参考，使用原生 warmup10/repeat50；源码及目标生成设备 C++ 静态扫描通过。fragment 变体虽通过源码静态扫描，但 TileLang 报 `Layout infer conflict between scores and scores_half`，无正确性或计时结果。

## 4. 目标性能

| case12 | 参考 | 延迟 |
|---|---|---:|
| 原始 v000 | PASS | 124.155 µs |
| v009 两块分组，逐块 `T.copy` | PASS | 135.557 µs |
| v009 两块分组，组内 `T.Parallel` 加载 | PASS | 135.511 µs |

两种可运行变体都比原始基线慢约 9%，差别仅 0.046 µs，不能视作并行加载收益。它们都只是 case12 屏蔽结果，并非完整官方或 OJ 成绩。

## 5. 设备代码与资源

主候选 MXCC 使用 **64 MT/26 ST registers、0B stack、静态最多 8 warps/PEU**，比原始 case12 的 73/28、6 warps 更轻。主候选与并行加载变体的目标设备 C++ SHA 不同，说明加载写法确实改变代码；但端到端没有改善。主候选静态 CTA 同步站点为 6，原始为 5；动态执行轮数分别为 4 与最多 8。单凭这些计数无法精确拆分延迟，候选运行数据已直接否定收益假设。

## 6. 未采集证据

因正确变体都慢于原始基线，未运行全 14 项正式计时、mcTracer、mcProfiler、持续 HBM 和外部 OJ；缺项见 `UNAVAILABLE_FULL_PROFILE.md`。根 `nsa/submission.py` 未改，提交目录只记录不可提交原因。

## 7. 结论

**v009 失败并封存。** 两块分组克服了 v008 的编译问题，但未降低 case12 延迟；组内并行加载也没有带来可测收益。下一机制需要改变 QK 的操作数供给或计算映射，不能继续假定合并更多块就会更快。
