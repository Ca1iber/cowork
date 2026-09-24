#!/bin/bash
set -u
rep=/root/tilelang-metax/race_tests/nsa/rep/v023_case6_direct_k_sc-16g-2
cd /opt/mcProfiler-ubuntu18.04 || exit 1
for variant in v022 v023; do
    mkdir -p "$rep/mcprof_$variant/raw"
    source=/root/tilelang-metax/race_tests/nsa/submission/$variant
    if [ "$variant" = v022 ]; then source=/root/tilelang-metax/race_tests/nsa/submission/v022_case6_case12_combined_sc-16g-2/submission.py; else source=/root/tilelang-metax/race_tests/nsa/submission/v023_case6_direct_k_sc-16g-2/submission.py; fi
    target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_VARIANT_SOURCE=$source MCTX_TARGET_PROFILE_PATH=$rep/mcprof_$variant/raw /opt/conda/bin/python -u race_tests/nsa/hack/v023_case6_direct_k_sc-16g-2/profile_variant.py 6"
    mcProfiler perf_exec --cmdline "$target" --casename "nsa_v023_$variant-case6_sc16g2" --metrics "L2C Hit Rate" "Global Memory Read bytes" "Global Memory Write bytes" "AP MTE Duty ratio" "AP MMA Duty ratio" "ISU stall cycles layout" "shared memory access efficiency" "average latency per load instruction" --counts 20 --custom --cwd /root/tilelang-metax > "$rep/mcprof_$variant/mcprofiler.log" 2>&1
    echo "$?" > "$rep/mcprof_$variant/exit_code.txt"
done
