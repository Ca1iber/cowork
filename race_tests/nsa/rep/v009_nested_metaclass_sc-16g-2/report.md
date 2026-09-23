# v009 修复 OJ 内嵌类的 metaclass NameError

v008 在线 OJ 的实际错误发生在 warmup 前：sandbox 将内嵌类改写为 `class _ManualMacaQK(metaclass=__metaclass__)`，但 `run_kernel` 中未定义 `__metaclass__`。桌面已 AC 的 `AC.txt` 在内嵌类之前有 `__metaclass__ = type`。v009 按这一结构在缓存未命中分支添加同名绑定，并把 `_qk_reverse_load_layout` 也移入同一作用域；形状分流和 TileLang 计算不变。

- v008 源码 SHA-256：`ad5516a81d4f410691f660451c6525c14e91ef0f622e87288cd30c1bbea44f2f`。
- v009 精确候选 SHA-256：`b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c`。
- 根目录原始 `submission.py` SHA-256：`462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1`，未修改。
- AST：顶层 `ClassDef` 为 0；`run_kernel` 的局部类之前有且仅有一个 `__metaclass__ = type` 绑定。提交函数参数顺序未变。
- 14 个官方形状均编译成功，源码和生成设备代码静态校验通过。与 v008 相比，13 个形状的 host/device 源码完全相同；case 11 的 host 源码相同，device 仅交换 max/sum 归约 shared 暂存偏移。
- 本地官方测试从本目录精确源码调用 `run_kernel`：14/14 PASS，warmup 10、repeat 50，14 case 平均 0.0720 ms。主机内存采样峰值约 25.6 GB，测试前后 OOM kill 计数均为 1。

生成代码归档 `generated_code.tar.gz` 的 SHA-256 是 `5d3c48f2418d4f54e741fd187a53573ec69aff9f61429010d2d47bb00e78481d`。**在线 OJ 尚未验证**：本地运行不会执行 OJ 的 sandbox 源码改写，只有在线提交才能确认此 NameError 是否消失以及后续校验是否通过。候选只保存在 `submission/v009_nested_metaclass_sc-16g-2/submission.py`。
