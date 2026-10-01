#!/bin/bash
set -u
base=/root/tilelang-metax
id=v041_codex_power_s8_probability_cache_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa TVM_LOG_DEBUG=src/op/parallel.cc=1
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/$id/debug_layout_codegen.py" > "$base/race_tests/nsa/rep/$id/debug_layout.log" 2>&1
echo $? > "$base/race_tests/nsa/rep/$id/debug_layout.exit"
