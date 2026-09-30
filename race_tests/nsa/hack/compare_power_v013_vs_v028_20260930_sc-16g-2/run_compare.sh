#!/bin/bash
set -eu
base=/root/tilelang-metax
id=compare_power_v013_vs_v028_20260930_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=$base:$base/race_tests/nsa
export NSA_V028_SOURCE=/tmp/nsa_compare_power_v013_v028_source.py
git show 95e8a78ce:race_tests/nsa/submission/v028_case12_shared_layout_sc-16g-2/submission.py > "$NSA_V028_SOURCE"
mx-smi > "$base/race_tests/nsa/rep/$id/machine_snapshot.txt"
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/$id/run_compare.py"
