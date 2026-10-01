#!/bin/bash
set -u
base=/root/tilelang-metax
id=v042_codex_power_s8_lane_normalizer_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/$id/run_pair_case12_with_parent.py" > "$base/race_tests/nsa/rep/$id/paired_parent.log" 2>&1
echo $? > "$base/race_tests/nsa/rep/$id/paired_parent.exit"
