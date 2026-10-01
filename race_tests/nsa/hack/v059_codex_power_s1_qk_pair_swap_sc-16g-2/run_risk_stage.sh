#!/bin/bash
set -u
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
/opt/conda/bin/python -u race_tests/nsa/hack/v059_codex_power_s1_qk_pair_swap_sc-16g-2/run_pair_risk.py > race_tests/nsa/rep/v059_codex_power_s1_qk_pair_swap_sc-16g-2/paired_risk.log 2>&1
code=$?;echo "$code" > race_tests/nsa/rep/v059_codex_power_s1_qk_pair_swap_sc-16g-2/paired_risk.exit
exit "$code"
