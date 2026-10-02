#!/bin/bash
cd /root/tilelang-metax
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
python race_tests/nsa/hack/v200_worker2_baseline_profile_subagent2/run_post_baseline.py
code=$?
printf "%s\n" "$code" > race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2/post_baseline.exit
exit "$code"
