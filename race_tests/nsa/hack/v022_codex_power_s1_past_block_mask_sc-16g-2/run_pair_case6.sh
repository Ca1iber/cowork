#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v022_codex_power_s1_past_block_mask_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa
export NSA_V028_SOURCE=/tmp/nsa_power_v016_pair_v028.py
git show 95e8a78ce:race_tests/nsa/submission/v028_case12_shared_layout_sc-16g-2/submission.py > "$NSA_V028_SOURCE"
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/$id/run_pair_case6.py"
