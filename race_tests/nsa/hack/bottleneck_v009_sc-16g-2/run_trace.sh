#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/bottleneck_v009_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for case in 2 6 12; do
    if NSA_PROFILE_MODE=torchprof NSA_TRACE_PATH="/root/tilelang-metax/$rep/trace_case$case.json" /opt/conda/bin/python -u race_tests/nsa/hack/bottleneck_v009_sc-16g-2/profile_case.py "$case" > "$rep/trace_case$case.log" 2>&1; then result=0; else result=$?; fi
    echo "$result" > "$rep/trace_case$case.exit"
done
