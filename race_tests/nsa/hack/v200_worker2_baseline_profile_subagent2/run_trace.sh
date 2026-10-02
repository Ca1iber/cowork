#!/bin/bash
cd /root/tilelang-metax
python race_tests/nsa/hack/v200_worker2_baseline_profile_subagent2/run_trace.py
code=$?
printf "%s\n" "$code" > race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2/trace_orchestrator.exit
exit "$code"
