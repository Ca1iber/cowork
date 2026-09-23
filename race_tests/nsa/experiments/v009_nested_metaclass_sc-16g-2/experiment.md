# v009 修复 OJ 内嵌类 metaclass 作用域

- 起点：`submission/v008_nested_mma_sc-16g-2/submission.py`，SHA-256 `ad5516a81d4f410691f660451c6525c14e91ef0f622e87288cd30c1bbea44f2f`。
- OJ 失败证据：sandbox 在 warmup 前把局部类改写为 `class _ManualMacaQK(metaclass=__metaclass__)`，但 v008 的 `run_kernel` 没定义 `__metaclass__`，触发 `NameError`。已 AC 的 `AC.txt` 在局部类前包含 `__metaclass__ = type`。
- 改动：按 AC.txt 在缓存未命中分支先定义 `__metaclass__ = type`，再定义 MMA 辅助类；同时把该类使用的索引辅助函数移入同一作用域。保留 v008 的形状分流、TileLang 计算和接口。
- 预测：OJ sandbox 改写后的 metaclass 名称可以解析；14 个官方形状生成代码与 v008 保持等价，本地正确性通过。在线 OJ 仍须单独验证。
- 否证条件：再次出现 sandbox NameError、编译或正确性失败、生成 kernel 算术改变。

候选仅在 `submission/v009_nested_metaclass_sc-16g-2/submission.py`；根目录原始提交代码不变。
