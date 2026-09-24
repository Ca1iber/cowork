#!/bin/bash
set -u
rep=/root/tilelang-metax/race_tests/nsa/rep/v016_case6_shared_conflict_sc-16g-2
cd /opt/mcProfiler-ubuntu18.04 || exit 1
for variant in v009 out_swizzled out_linear; do
    mkdir -p "$rep/mcprof_$variant/raw"
    if [ "$variant" = v009 ]; then source=/root/tilelang-metax/race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py; else source=/tmp/nsa_v016/submission_$variant.py; fi
    target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_VARIANT_SOURCE=$source MCTX_TARGET_PROFILE_PATH=$rep/mcprof_$variant/raw /opt/conda/bin/python -u race_tests/nsa/hack/v016_case6_shared_conflict_sc-16g-2/profile_variant.py 6"
    mcProfiler perf_exec --cmdline "$target" --casename "nsa_v016_$variant-case6_sc16g2" --metrics "shared memory access efficiency" "average conflict cycles per instruction" "average latency per load instruction" "AP MMA Duty ratio" --counts 20 --custom --cwd /root/tilelang-metax > "$rep/mcprof_$variant/mcprofiler.log" 2>&1
    result=$?
    echo "$result" > "$rep/mcprof_$variant/exit_code.txt"
done
