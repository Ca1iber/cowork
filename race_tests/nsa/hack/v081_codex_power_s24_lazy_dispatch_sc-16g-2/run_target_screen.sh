#!/bin/bash
set -u
cd /root/tilelang-metax
id=v081_codex_power_s24_lazy_dispatch_sc-16g-2
r=race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for ci in 10 11;do
 NSA_PAIR_CASE_INDEX=$ci NSA_PAIR_PHASE=target /opt/conda/bin/python -u race_tests/nsa/hack/$id/run_case.py > "$r/target_case$ci.log" 2>&1
 code=$?;echo "$code" > "$r/target_case$ci.exit"
 if [ "$code" != 0 ];then echo "$code" > "$r/target_screen.exit";exit "$code";fi
done
/opt/conda/bin/python race_tests/nsa/hack/$id/analyze_targets.py > "$r/target_analysis.log" 2>&1
code=$?;echo "$code" > "$r/target_screen.exit";exit "$code"
