# v005 测量入口

- 候选源码：`race_tests/nsa/submission/v005_manual_qk_mfma_sc-16g-2/submission.py`。
- 原版源码：`race_tests/nsa/submission.py`。
- 官方测试：`MACA_PATH=/opt/maca PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_RESULTS_PATH=<csv> /opt/conda/bin/python race_tests/nsa/hack/v005_manual_qk_mfma_sc-16g-2/run_archived.py`。
- 测试脚本：`race_tests/nsa/test_tilelang_nsa_fwd.py`，从 `official_case.json` 读取 14 个 case，逐 case 对照 `reference.py`，warmup 7、repeat 25。
- 生成代码：`MACA_PATH=/opt/maca PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa /opt/conda/bin/python race_tests/nsa/hack/v005_manual_qk_mfma_sc-16g-2/codegen.py <source> <output-dir>`；分别对原版和候选版执行。
- 静态校验：`python3 validate_oj_submission.py <candidate> --generated-code <case_01.device.cpp> ... --generated-code <case_14.device.cpp>`。

`run_archived.py` 只把精确归档的 `submission.py` 载入为模块 `submission`，然后运行未修改的官方测试入口。此脚本是测试包装器，不是提交代码。
