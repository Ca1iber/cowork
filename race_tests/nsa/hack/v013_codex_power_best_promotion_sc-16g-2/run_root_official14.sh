#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v013_codex_power_best_promotion_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=$base:$base/race_tests/nsa
export NSA_VARIANT_SOURCE=$base/race_tests/nsa/submission.py
export NSA_RESULTS_PATH=$base/race_tests/nsa/rep/$id/root_official14_sc-16g-2.csv
unset NSA_CASES
/opt/conda/bin/python -u $base/race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py
