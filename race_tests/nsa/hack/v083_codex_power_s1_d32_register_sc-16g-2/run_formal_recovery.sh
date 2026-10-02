#!/bin/bash
set -u
cd /root/tilelang-metax
id=v083_codex_power_s1_d32_register_sc-16g-2
r=race_tests/nsa/rep/$id
h=race_tests/nsa/hack/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for ci in {5..14};do
 if [ "$ci" = 5 ];then phase=formal_recovery;else phase=formal;fi
 NSA_PAIR_CASE_INDEX=$ci NSA_PAIR_PHASE=$phase /opt/conda/bin/python -u "$h/run_case.py" > "$r/${phase}_case$ci.log" 2>&1 &
 native_pid=$!
 /opt/conda/bin/python "$h/monitor_recovery_memory.py" "$native_pid" "$ci" > "$r/formal_recovery_case${ci}_monitor.log" 2>&1 &
 monitor_pid=$!
 wait "$native_pid";code=$?;echo "$code" > "$r/${phase}_case$ci.exit";wait "$monitor_pid"
 if [ "$code" != 0 ];then echo "$code" > "$r/formal_recovery.exit";exit "$code";fi
done
/opt/conda/bin/python "$h/analyze_formal_all14.py" > "$r/formal_recovery_analysis.log" 2>&1
code=$?;echo "$code" > "$r/formal_recovery.exit";exit "$code"
