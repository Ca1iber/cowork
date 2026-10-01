#!/bin/bash
set -eu
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v057_codex_power_s1_proven_bounds_sc-16g-2
for label in power_v057 baseline_v28;do test "$(cat "$r/mcprof_$label/exit_code.txt")" = 0;done
bash race_tests/nsa/hack/v057_codex_power_s1_proven_bounds_sc-16g-2/run_risk_stage.sh
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_VARIANT_SOURCE=/root/tilelang-metax/race_tests/nsa/submission/v057_codex_power_s1_proven_bounds_sc-16g-2/submission.py NSA_RESULTS_PATH=$r/archive_native_all14_sc-16g-2.csv
set +e
env -u NSA_CASES /opt/conda/bin/python -u race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py > "$r/archive_native_all14.log" 2>&1
code=$?;echo "$code" > "$r/archive_native_all14.exit"
exit "$code"
