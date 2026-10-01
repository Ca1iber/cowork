#!/bin/bash
set -u
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
/opt/conda/bin/python -u race_tests/nsa/hack/v074_codex_power_s1_blockstart_broadcast_sc-16g-2/run_pair_case6.py > race_tests/nsa/rep/v074_codex_power_s1_blockstart_broadcast_sc-16g-2/paired_case6.log 2>&1
code=$?;echo "$code" > race_tests/nsa/rep/v074_codex_power_s1_blockstart_broadcast_sc-16g-2/paired_case6.exit
exit "$code"
