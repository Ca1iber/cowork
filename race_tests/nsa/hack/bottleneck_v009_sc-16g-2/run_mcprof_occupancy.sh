#!/bin/bash
set -u
rep=/root/tilelang-metax/race_tests/nsa/rep/bottleneck_v009_sc-16g-2
cd /opt/mcProfiler-ubuntu18.04 || exit 1
for case in 6 12; do
    mkdir -p "$rep/mcprof_case$case/occupancy_raw"
    target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa MCTX_TARGET_PROFILE_PATH=$rep/mcprof_case$case/occupancy_raw /opt/conda/bin/python -u race_tests/nsa/hack/bottleneck_v009_sc-16g-2/profile_case.py $case"
    mcProfiler perf_exec --cmdline "$target" --casename "nsa_v009_case$case-occupancy_sc16g2" --metrics "Achieved waves" "Dispatched waves" "shared memory access efficiency" "average conflict cycles per instruction" "average latency per load instruction" "Dnoc Read Average Latency" --counts 20 --custom --cwd /root/tilelang-metax > "$rep/mcprof_case$case/occupancy.log" 2>&1
    result=$?
    echo "$result" > "$rep/mcprof_case$case/occupancy.exit"
done
