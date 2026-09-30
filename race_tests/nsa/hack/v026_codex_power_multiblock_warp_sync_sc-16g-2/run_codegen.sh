#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v026_codex_power_multiblock_warp_sync_sc-16g-2
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=$base:$base/race_tests/nsa
/opt/conda/bin/python -u $base/race_tests/nsa/hack/$id/export_codegen.py
