#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v101_worker1_s2_fixed_selection_sc-16g-2
h=/root/tilelang-metax/race_tests/nsa/hack/v101_worker1_s2_fixed_selection_sc-16g-2
python "$h/preflight_sources.py" target > "$r/target_preflight_at_launch.json"
code=$?;if [ "$code" != 0 ];then echo "$code" > "$r/target_screen.exit";exit "$code";fi
python - <<'GATE'
import json
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v101_worker1_s2_fixed_selection_sc-16g-2');assert (r/'precompile_stage.exit').read_text().strip()=='0';assert json.loads((r/'precompile_resource_gate.json').read_text())['resource_gate_pass']
GATE
code=$?;if [ "$code" != 0 ];then echo "$code" > "$r/target_screen.exit";exit "$code";fi
env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_PAIR_CASE_INDEX=10 NSA_PAIR_PHASE=target /opt/conda/bin/python -u "$h/run_case.py" > "$r/target_case10.log" 2>&1
code=$?;echo "$code" > "$r/target_case10.exit"
if [ "$code" != 0 ];then echo "$code" > "$r/target_screen.exit";exit "$code";fi
python "$h/analyze_targets.py" > "$r/target_analysis.log" 2>&1
code=$?;echo "$code" > "$r/target_screen.exit"
