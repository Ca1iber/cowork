#!/bin/bash
set -u
r=/root/tilelang-metax/race_tests/nsa/rep/v100_worker1_s8_pair_iteration_sc-16g-2
bash /root/tilelang-metax/race_tests/nsa/hack/v100_worker1_s8_pair_iteration_sc-16g-2/run_parent_profile.sh > "$r/parent_profile_stage.log" 2>&1
code=$?; echo "$code" > "$r/parent_profile.exit"
