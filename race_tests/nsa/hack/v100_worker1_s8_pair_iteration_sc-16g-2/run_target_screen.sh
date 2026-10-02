#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v100_worker1_s8_pair_iteration_sc-16g-2
h=/root/tilelang-metax/race_tests/nsa/hack/v100_worker1_s8_pair_iteration_sc-16g-2
env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_PAIR_CASE_INDEX=12 NSA_PAIR_PHASE=target /opt/conda/bin/python -u "$h/run_case.py" > "$r/target_case12.log" 2>&1
code=$?;echo "$code" > "$r/target_case12.exit"
if [ "$code" != 0 ];then echo "$code" > "$r/target_screen.exit";exit "$code";fi
python "$h/analyze_targets.py" > "$r/target_analysis.log" 2>&1
code=$?;echo "$code" > "$r/target_screen.exit";exit "$code"
