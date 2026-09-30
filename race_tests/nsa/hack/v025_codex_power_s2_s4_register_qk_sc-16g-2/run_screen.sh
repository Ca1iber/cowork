#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v025_codex_power_s2_s4_register_qk_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa
export NSA_VARIANT_SOURCE=$base/race_tests/nsa/experiments/$id/candidate.py NSA_RESULTS_PATH=$base/race_tests/nsa/rep/$id/screen_case10_case11_sc-16g-2.csv NSA_CASES=10,11
/opt/conda/bin/python -u $base/race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py
