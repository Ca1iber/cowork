#!/bin/bash
set -u
r=/root/tilelang-metax/race_tests/nsa/rep/v100_worker1_s8_pair_iteration_sc-16g-2
h=/root/tilelang-metax/race_tests/nsa/hack/v100_worker1_s8_pair_iteration_sc-16g-2
python "$h/preflight_sources.py" paired_profile > "$r/paired_profile_preflight_at_launch.json"
code=$?; if [ "$code" != 0 ];then echo "$code" > "$r/profile_stage.exit";exit "$code";fi
bash "$h/run_mcprof.sh" > "$r/profile_stage.log" 2>&1
code=$?;echo "$code" > "$r/profile_stage.exit"
