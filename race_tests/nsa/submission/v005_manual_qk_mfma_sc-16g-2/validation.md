# v005 候选源码验证

- 文件：`submission.py`，SHA-256 `32af6c4ba94279470a97e4d6cfb0093f28690c9409265f32ee54023b4f5195f5`。
- 官方 14 case：归档文件经 `hack/v005_manual_qk_mfma_sc-16g-2/run_archived.py` 调用，14/14 正确；warmup 7、repeat 25；平均 0.1213 ms。
- OJ 静态校验：源码本身及全部 14 份生成设备源码通过 `validate_oj_submission.py`。
- 状态：可运行的提交候选，但性能收益不稳定，未替换根目录 `submission.py`，未进行在线 OJ 提交。
