#!/bin/bash
set -eu
cd /opt/mcProfiler-ubuntu18.04
rep=/root/tilelang-metax/race_tests/nsa/rep/v028_case12_shared_layout_sc-16g-2
for variant in v026 v028; do
 if [ "$variant" = v026 ]; then source=/root/tilelang-metax/race_tests/nsa/submission/v026_full_past_mask_sc-16g-2/submission.py; else source=/root/tilelang-metax/race_tests/nsa/submission/v028_case12_shared_layout_sc-16g-2/submission.py; fi
 mkdir -p "$rep/mcprof_$variant/raw"
 target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_VARIANT_SOURCE=$source MCTX_TARGET_PROFILE_PATH=$rep/mcprof_$variant/raw /opt/conda/bin/python -u race_tests/nsa/hack/v023_case6_direct_k_sc-16g-2/profile_variant.py 12"
 mcProfiler perf_exec --cmdline "$target" --casename "nsa_v028_${variant}_case12" --metrics "L2C Hit Rate" "Global Memory Read bytes" "Global Memory Write bytes" "AP MTE Duty ratio" "AP MMA Duty ratio" "shared memory access efficiency" "average conflict cycles per instruction" "average latency per load instruction" --counts 20 --custom --cwd /root/tilelang-metax > "$rep/mcprof_$variant/mcprofiler.log" 2>&1
 echo $? > "$rep/mcprof_$variant/exit_code.txt"
done
