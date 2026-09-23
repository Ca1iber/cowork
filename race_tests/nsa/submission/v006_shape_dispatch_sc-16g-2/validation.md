# v006 提交源码验证

- 精确候选源码：本目录的 `submission.py`，SHA-256 `cf19f92faf1f4474c4b0053f4c251495d277ca3019c404b8597087df288794a6`。根目录 `race_tests/nsa/submission.py` 已恢复为最早加入 Git 的提交 `ffa68b684e3876df2821fe34c9959493c2ca065a` 中的版本，SHA-256 `462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1`，与 v003 归档文件相同。
- 官方 14 case：归档候选两轮、此前临时复制到根目录后运行一轮，均 14/14 正确；计时使用 warmup 7、repeat 25。
- OJ 静态校验：本目录精确候选源码与 14 份候选生成设备源码全部通过。
- 路径：`block_size=32` 或 `S>1` 时手写 QK；其他形状原版 QK；PV 均为 `T.gemm`。
- 性能：平均耗时受未改动 case 的显著运行波动影响，尚不能声明稳定加速；未进行在线 OJ 提交。
