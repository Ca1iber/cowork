#!/bin/bash
set -u
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
/opt/conda/bin/python -u race_tests/nsa/hack/v045_codex_power_s8_value_select_sc-16g-2/run_pair_case12.py > race_tests/nsa/rep/v045_codex_power_s8_value_select_sc-16g-2/paired.log 2>&1
code=$?;echo "$code" > race_tests/nsa/rep/v045_codex_power_s8_value_select_sc-16g-2/paired.exit
exit "$code"
