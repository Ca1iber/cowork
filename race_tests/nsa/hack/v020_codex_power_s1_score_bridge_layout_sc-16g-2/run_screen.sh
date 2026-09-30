#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v020_codex_power_s1_score_bridge_layout_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=$base:$base/race_tests/nsa
export NSA_VARIANT_SOURCE=$base/race_tests/nsa/experiments/$id/candidate.py
export NSA_RESULTS_PATH=$base/race_tests/nsa/rep/$id/screen_case6_sc-16g-2.csv
export NSA_CASES=6
/opt/conda/bin/python -u $base/race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py
