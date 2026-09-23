# v008：按 AC.txt 的嵌套类结构构造 NSA kernel

桌面 `AC.txt` 的 `MinimalMacaMMA` 定义在 `run_kernel` 的 kernel 缓存未命中分支内，文件顶层没有类。v006 的 `_ManualMacaQK` 位于文件顶层，在线 OJ 的 top-level splitter 在执行前报 `Class definitions are not allowed in user code`。v008 以 v006 为起点，把辅助类和 TileLang kernel 构造函数都移入 `run_kernel` 的缓存未命中分支，并使用按 `(B, seq_len, H, HQ, D, S, block_size, is_causal)` 索引的 kernel 缓存。AC.txt 是 MoE 算子，只借鉴源码组织结构；NSA 算法和分流条件沿用 v006。

- v006 源码 SHA-256：`cf19f92faf1f4474c4b0053f4c251495d277ca3019c404b8597087df288794a6`。
- v008 精确候选 SHA-256：`ad5516a81d4f410691f660451c6525c14e91ef0f622e87288cd30c1bbea44f2f`。
- 根目录原始 `submission.py` SHA-256：`462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1`，未修改。
- AST：顶层 `ClassDef` 为 0；`run_kernel` 内嵌 `_ManualMacaQK` 一个，与 AC.txt 的组织方式相同。提交函数名、参数顺序保持一致。
- OJ 静态检查：源码及 14 个官方形状的生成设备代码均通过。全部 14 个形状编译成功；与 v006 比，12 个形状的 host/device 源码逐字相同，case 11/12 的 host 源码相同，device 仅交换 max/sum 归约 shared 暂存偏移。
- 本地官方测试：从本目录精确源码调用 `run_kernel`，14/14 PASS；warmup 10、repeat 50，14 case 平均 0.0712 ms。主机内存采样峰值约 25.5 GB，前后 OOM kill 计数均为 1。

生成代码归档 `generated_code.tar.gz` 的 SHA-256 为 `cf159f54015408fa4403a0372106e35d2f8f1892d3e4e4f46ad44221647a5228`。**在线 OJ 尚未验证**；本地静态检查只能证明已去掉 v006 已知的顶层类障碍，不能代替在线接受结果。候选只保存在 `submission/v008_nested_mma_sc-16g-2/submission.py`。
