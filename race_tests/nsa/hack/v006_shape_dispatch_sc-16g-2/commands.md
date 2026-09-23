# v006 官方测试与代码生成

- 根目录基线：`race_tests/nsa/submission.py`。
- 候选：`race_tests/nsa/submission/v006_shape_dispatch_sc-16g-2/submission.py`。
- 测试包装器：`race_tests/nsa/hack/v006_shape_dispatch_sc-16g-2/run_archived.py`，将精确归档的候选文件载入为 `submission` 模块，然后运行未修改的 `race_tests/nsa/test_tilelang_nsa_fwd.py`。
- 官方 case：`race_tests/nsa/official_case.json`，14 个 case；原测试脚本使用 warmup 7、repeat 25，逐 case 正确性比较与计时。
- 环境：`MACA_PATH=/opt/maca`，`PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa`，解释器 `/opt/conda/bin/python`。
- 交替计时：`bash race_tests/nsa/hack/v006_shape_dispatch_sc-16g-2/run_paired.sh`，依次运行候选、根目录 v003 基线、候选，各自产生完整 14-case CSV 与日志。该脚本在根目录 `submission.py` 被替换前执行。
- 根目录实测：将 SHA-256 相同的归档候选复制到 `race_tests/nsa/submission.py` 后，直接运行 `race_tests/nsa/test_tilelang_nsa_fwd.py`，结果保存为 `root_submission.csv` 和 `root_submission.log`。
- 代码生成：沿用 `race_tests/nsa/hack/v005_manual_qk_mfma_sc-16g-2/codegen.py`，传入候选文件与输出目录，覆盖官方全部 14 个 case。
- OJ 静态检查：`validate_oj_submission.py` 校验候选源码，并通过重复的 `--generated-code` 参数检查全部 14 份生成设备源码。

所有计时结果和生成代码摘要保存在 `rep/v006_shape_dispatch_sc-16g-2/`。测试包装器不属于提交源码。
