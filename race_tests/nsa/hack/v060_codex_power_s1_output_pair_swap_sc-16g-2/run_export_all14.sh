#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v060_codex_power_s1_output_pair_swap_sc-16g-2
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
/opt/conda/bin/python -u race_tests/nsa/hack/v060_codex_power_s1_output_pair_swap_sc-16g-2/export_all14.py > "$r/export_all14.log" 2>&1
code=$?;echo "$code" > "$r/export_all14.exit"
exit "$code"
