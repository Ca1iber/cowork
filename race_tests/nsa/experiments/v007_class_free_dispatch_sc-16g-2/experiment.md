# v007 去除 OJ 禁止的 class 定义

- 起点：`submission/v006_shape_dispatch_sc-16g-2/submission.py`，SHA-256 `cf19f92faf1f4474c4b0053f4c251495d277ca3019c404b8597087df288794a6`。
- 机器：`sc-16g-2`；根目录原始 `submission.py` 保持不变。
- OJ 失败证据：`triton_sandbox/core/splitter.py` 在载入用户源码时报告 `Class definitions are not allowed in user code`；v005/v006 均含顶层 `class _ManualMacaQK`，错误发生在 kernel 编译或数值比较之前。

## 假设和改动

将 `_ManualMacaQK` 的布局、shared-to-local 加载与 MFMA 方法改写为顶层普通辅助函数，删除所有 `class` 语法。形状分流条件、TileLang 计算、参数顺序和 14 个官方形状保持不变。

预期 OJ 源码拆分器能够载入候选，生成设备代码与 v006 对应形状一致，并通过本地官方 14 case 正确性。若仍有 sandbox 拒绝、任一官方 case 错误，或生成代码出现语义差异，需要继续修复；这次不能仅凭本地 14/14 宣称 OJ 已通过。

本版本源码仅保存在 `submission/v007_class_free_dispatch_sc-16g-2/submission.py`，不复制共享测试输入或更改根目录 `submission.py`。
