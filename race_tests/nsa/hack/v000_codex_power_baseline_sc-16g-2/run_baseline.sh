#!/bin/bash
set -eu
root=/root/tilelang-metax/race_tests/nsa
id=v000_codex_power_baseline_sc-16g-2
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:$root
export NSA_VARIANT_SOURCE=$root/submission.py
export NSA_RESULTS_PATH=$root/rep/$id/baseline_official14_sc-16g-2.csv
/opt/conda/bin/python -u $root/hack/$id/run_variant.py
