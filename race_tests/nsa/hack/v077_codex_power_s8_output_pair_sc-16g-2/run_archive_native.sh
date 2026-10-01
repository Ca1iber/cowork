#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v077_codex_power_s8_output_pair_sc-16g-2
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_VARIANT_SOURCE=/root/tilelang-metax/race_tests/nsa/submission/v077_codex_power_s8_output_pair_sc-16g-2/submission.py NSA_RESULTS_PATH=$r/archive_native_all14_sc-16g-2.csv
env -u NSA_CASES /opt/conda/bin/python -u race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py > "$r/archive_native_all14.log" 2>&1
code=$?;echo "$code" > "$r/archive_native_all14.exit"
exit "$code"
