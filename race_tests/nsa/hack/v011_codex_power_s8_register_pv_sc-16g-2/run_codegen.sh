#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v011_codex_power_s8_register_pv_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=$base:$base/race_tests/nsa
/opt/conda/bin/python -u $base/race_tests/nsa/hack/$id/export_codegen.py
