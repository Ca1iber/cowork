#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v009_codex_power_s8_group2_two_waves_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=$base:$base/race_tests/nsa
/opt/conda/bin/python -u $base/race_tests/nsa/hack/$id/export_codegen.py
