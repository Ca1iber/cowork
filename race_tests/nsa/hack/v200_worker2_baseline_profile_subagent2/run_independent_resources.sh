#!/bin/bash
cd /root/tilelang-metax
python race_tests/nsa/hack/v200_worker2_baseline_profile_subagent2/capture_resources.py
code=$?
printf "%s\n" "$code" > race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2/independent_resources.exit
exit "$code"
