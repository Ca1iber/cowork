# v008 按 AC.txt 的方式内嵌 MMA 辅助类

- 起点：v006 形状分流源码，SHA-256 `cf19f92faf1f4474c4b0053f4c251495d277ca3019c404b8597087df288794a6`。
- 证据：桌面 `AC.txt` 已被在线 OJ 接受，其 `MinimalMacaMMA` 是 `run_kernel` 内、kernel 缓存未命中分支里的局部类；v006 的 `_ManualMacaQK` 则是模块顶层类，被 OJ 的 top-level splitter 拒绝。
- 改动：把 MMA 辅助类和 TileLang kernel 构造函数放进 `run_kernel` 的缓存未命中分支，添加按完整形状参数索引的 kernel 缓存。保留 v006 的形状分流、QK/PV 算法和提交接口。
- 预测：模块顶层不再有 `ClassDef`；官方 14 个形状的生成设备代码与 v006 相同或只存在无语义影响的资源偏移差异，本地正确性 14/14。在线 OJ 是否接受需要独立验证。
- 否证条件：sandbox 仍拒绝、编译或正确性失败、生成代码中算术/访存发生意外改变。

只在 `submission/v008_nested_mma_sc-16g-2/submission.py` 保存候选；根目录原始 `submission.py` 和共享测试文件不变。
