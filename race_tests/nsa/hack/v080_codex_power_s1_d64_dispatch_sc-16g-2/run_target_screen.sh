#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v080_codex_power_s1_d64_dispatch_sc-16g-2
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for case_index in 2 5 7 8 9 13 14;do
 NSA_PAIR_CASE_INDEX=$case_index /opt/conda/bin/python -u race_tests/nsa/hack/v080_codex_power_s1_d64_dispatch_sc-16g-2/run_target_case.py > "$r/target_case${case_index}.log" 2>&1
 code=$?;echo "$code" > "$r/target_case${case_index}.exit"
 if [ "$code" != 0 ];then echo "$code" > "$r/target_screen.exit";exit "$code";fi
done
/opt/conda/bin/python race_tests/nsa/hack/v080_codex_power_s1_d64_dispatch_sc-16g-2/analyze_target_screen.py > "$r/target_screen_analysis.log" 2>&1
code=$?;echo "$code" > "$r/target_screen.exit"
exit "$code"
