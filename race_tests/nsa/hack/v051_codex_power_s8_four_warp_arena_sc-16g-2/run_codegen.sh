#!/bin/bash
set -u
base=/root/tilelang-metax
id=v051_codex_power_s8_four_warp_arena_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/$id/export_codegen.py"
result=$?;echo "$result" > "$base/race_tests/nsa/rep/$id/codegen.exit"
exit "$result"
