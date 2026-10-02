#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v101_worker1_s2_fixed_selection_sc-16g-2
h=/root/tilelang-metax/race_tests/nsa/hack/v101_worker1_s2_fixed_selection_sc-16g-2
python "$h/preflight_sources.py" precompile > "$r/precompile_sources_preflight_at_launch.json"
code=$?;if [ "$code" != 0 ];then echo "$code" > "$r/precompile_stage.exit";exit "$code";fi
env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa /opt/conda/bin/python -u "$h/precompile_case10.py" > "$r/precompile.log" 2>&1
code=$?;echo "$code" > "$r/precompile.exit"
if [ "$code" != 0 ];then echo "$code" > "$r/precompile_stage.exit";exit "$code";fi
python "$h/capture_precompile_resources.py" > "$r/precompile_resources_stage.log" 2>&1
code=$?;if [ "$code" != 0 ];then echo "$code" > "$r/precompile_stage.exit";exit "$code";fi
python /root/tilelang-metax/race_tests/nsa/hack/validate_oj_submission.py /tmp/nsa_power_v101_direct_qk.py --generated-code "$r/codegen_precompile/power_v101/case10_stage1.device.cpp" > "$r/precompile_static.log" 2>&1
code=$?;echo "$code" > "$r/precompile_static.exit";echo "$code" > "$r/precompile_stage.exit"
