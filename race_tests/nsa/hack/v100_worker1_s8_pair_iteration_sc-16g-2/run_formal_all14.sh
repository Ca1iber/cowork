#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v100_worker1_s8_pair_iteration_sc-16g-2
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for case_index in {1..14};do
 NSA_PAIR_CASE_INDEX=$case_index NSA_PAIR_PHASE=formal /opt/conda/bin/python -u race_tests/nsa/hack/v100_worker1_s8_pair_iteration_sc-16g-2/run_case.py > "$r/formal_case${case_index}.log" 2>&1
 code=$?;echo "$code" > "$r/formal_case${case_index}.exit"
 if [ "$code" != 0 ];then echo "$code" > "$r/formal_all14.exit";exit "$code";fi
done
/opt/conda/bin/python race_tests/nsa/hack/v100_worker1_s8_pair_iteration_sc-16g-2/analyze_formal_all14.py > "$r/formal_all14_analysis.log" 2>&1
code=$?;echo "$code" > "$r/formal_all14.exit"
exit "$code"
