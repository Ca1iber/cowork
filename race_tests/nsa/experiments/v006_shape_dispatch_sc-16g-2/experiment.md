# v006 按参数选择 QK 路径

- 机器：`sc-16g-2`；起点提交 `bb5d20514032825b2ae0d061ffcec1f8abbd0f0e`。
- 基线：根目录 `race_tests/nsa/submission.py`，SHA-256 `462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1`。
- 固定测试：`race_tests/nsa/official_case.json` 的 14 个 case；warmup 7、repeat 25；逐 case 保留。

## 假设

v005 手写 QK 路径在 `block_size=32` 的 case 6、`S>1` 的 case 10–12 有改善迹象，但在部分 `S=1, block_size=16` 形状波动或退化。只根据公开接口参数选择路径：`block_size=32` 或 `S>1` 时使用手写 QK MFMA，其余使用原版 QK `T.gemm`。PV GEMM、threads=64、输出语义、官方测试入口保持不变。

预计上述 4 个 case 获益，其他 10 个 case 应接近原版。若任一 case 不正确、源码不合规、生成代码出现异步拷贝，或官方 14 case 平均延迟没有可重复改善，则该分流假设不成立。路径分流的 host 开销、编译期条件是否正确消去，以及 GPU 运行波动是主要风险。

共享的测试入口、`official_case.json` 和参考实现不复制到实验目录。候选源码只在对应 `submission/<id>/submission.py` 保存一份，实验目录仅存补丁和身份记录。
