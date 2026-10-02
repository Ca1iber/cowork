# Leader 最佳已验证 kernel 集合 v113

`submission.py` 与已验证 v113 逐字节相同（SHA256 cb30f2f7982c3415af53a5c137f5563ec849eed7fe85228a4b05384e6b1e1bcc），首行保留 `# codex-power v113`。

- case11：Worker1 v113 的全局 softmax。
- case12：Worker1 v104 的全局 softmax。
- 其余 case：共同基线 v84；Worker2 暂无稳定胜出的新方案，因此保留 v84。

原 v115 固定全14比较完成，56份候选 / 168份总完整 naive_nsa 正确性检查通过。C11/C12 相对 v84 分别快约6.28% / 4.11%，但 case1、6、7、8、9、10 观察到正耗时差，当前不能保证全 case 不退化。集合别名未另行计时，也没有新的 OJ 成绩。

来源清单见 `kernel_origins.json`。正式测试对照入口保持原始 v28，避免改变既定实验。
