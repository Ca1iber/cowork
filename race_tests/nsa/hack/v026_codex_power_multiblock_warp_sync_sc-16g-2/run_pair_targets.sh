#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v026_codex_power_multiblock_warp_sync_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa
export NSA_V028_SOURCE=/tmp/nsa_power_v026_pair_v028.py
git show 95e8a78ce:race_tests/nsa/submission/v028_case12_shared_layout_sc-16g-2/submission.py > "$NSA_V028_SOURCE"
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/$id/run_pair_targets.py"
