#!/bin/bash
set -u
base=/root/tilelang-metax
id=v034_codex_power_s8_kpair_prefetch_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/$id/export_codegen.py"
result=$?;echo "$result" > "$base/race_tests/nsa/rep/$id/codegen.exit"
exit "$result"
