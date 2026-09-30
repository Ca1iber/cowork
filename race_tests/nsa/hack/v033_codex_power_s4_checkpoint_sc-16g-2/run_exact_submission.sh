#!/bin/bash
set -u
base=/root/tilelang-metax
id=v033_codex_power_s4_checkpoint_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=$base/race_tests/nsa/submission/$id/submission.py NSA_RESULTS_PATH=$base/race_tests/nsa/rep/$id/exact_submission_all14_sc-16g-2.csv
unset NSA_CASES
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py"
result=$?;echo "$result" > "$base/race_tests/nsa/rep/$id/exact_submission.exit"
exit "$result"
