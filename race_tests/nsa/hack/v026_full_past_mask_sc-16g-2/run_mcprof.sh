#!/bin/bash
set -eu
cd /opt/mcProfiler-ubuntu18.04
rep=/root/tilelang-metax/race_tests/nsa/rep/v026_full_past_mask_sc-16g-2
mkdir -p "$rep/mcprof_case12/raw"
target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_VARIANT_SOURCE=/tmp/nsa_v026/submission.py MCTX_TARGET_PROFILE_PATH=$rep/mcprof_case12/raw /opt/conda/bin/python -u race_tests/nsa/hack/v023_case6_direct_k_sc-16g-2/profile_variant.py 12"
mcProfiler perf_exec --cmdline "$target" --casename nsa_v026_case12_fullpast --metrics "L2C Hit Rate" "Global Memory Read bytes" "Global Memory Write bytes" "AP MTE Duty ratio" "AP MMA Duty ratio" "ISU stall cycles layout" "shared memory access efficiency" "average latency per load instruction" --counts 20 --custom --cwd /root/tilelang-metax > "$rep/mcprof_case12/mcprofiler.log" 2>&1
echo $? > "$rep/mcprof_case12/exit_code.txt"
