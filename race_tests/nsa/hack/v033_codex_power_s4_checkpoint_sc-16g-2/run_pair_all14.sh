#!/bin/bash
set -u
base=/root/tilelang-metax
id=v033_codex_power_s4_checkpoint_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/$id/run_pair_all14.py"
result=$?;echo "$result" > "$base/race_tests/nsa/rep/$id/paired_all14.exit"
exit "$result"
