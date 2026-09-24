#!/bin/bash
set -u
rep=/root/tilelang-metax/race_tests/nsa/rep/v021_case12_direct_k_sc-16g-2
source=/root/tilelang-metax/race_tests/nsa/submission/v021_case12_direct_k_sc-16g-2/submission.py
target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_VARIANT_SOURCE=$source MCTX_TARGET_PROFILE_PATH=$rep/mcprof/raw /opt/conda/bin/python -u race_tests/nsa/hack/v021_case12_direct_k_sc-16g-2/profile_variant.py 12"
cd /opt/mcProfiler-ubuntu18.04 || exit 1
mcProfiler perf_exec --cmdline "$target" --casename "nsa_v021_case12_direct_k_sc16g2" --metrics "shared memory access efficiency" "average conflict cycles per instruction" "AP MTE Duty ratio" "AP MMA Duty ratio" "L2C Hit Rate" "Global Memory Read bytes" "Global Memory Write bytes" --counts 20 --custom --cwd /root/tilelang-metax > "$rep/mcprof/mcprofiler.log" 2>&1
echo "$?" > "$rep/mcprof/exit_code.txt"
