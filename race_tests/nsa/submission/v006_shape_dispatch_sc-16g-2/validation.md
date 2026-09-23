# v006 提交源码验证

- 精确源码：`submission.py`，SHA-256 `cf19f92faf1f4474c4b0053f4c251495d277ca3019c404b8597087df288794a6`；与根目录 `race_tests/nsa/submission.py` 字节相同。
- 官方 14 case：归档候选两轮、根目录直接运行一轮，均 14/14 正确；计时使用 warmup 7、repeat 25。
- OJ 静态校验：根目录精确源码与 14 份候选生成设备源码全部通过。
- 路径：`block_size=32` 或 `S>1` 时手写 QK；其他形状原版 QK；PV 均为 `T.gemm`。
- 性能：平均耗时受未改动 case 的显著运行波动影响，尚不能声明稳定加速；未进行在线 OJ 提交。
