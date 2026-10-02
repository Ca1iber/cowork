#!/bin/bash
set -u
r=/root/tilelang-metax/race_tests/nsa/rep/v101_worker1_s2_fixed_selection_sc-16g-2
bash /root/tilelang-metax/race_tests/nsa/hack/v101_worker1_s2_fixed_selection_sc-16g-2/run_parent_profile.sh > "$r/parent_profile_stage.log" 2>&1
code=$?; echo "$code" > "$r/parent_profile.exit"
