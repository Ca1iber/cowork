#!/bin/bash
set -u
rep=/root/tilelang-metax/race_tests/nsa/rep/bottleneck_v009_sc-16g-2
target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa MCTX_TARGET_PROFILE_PATH=$rep/mcprof_case12/raw /opt/conda/bin/python -u race_tests/nsa/hack/bottleneck_v009_sc-16g-2/profile_case.py 12"
printf '%s\n' "$target" > "$rep/mcprof_case12/target_command.txt"
cd /opt/mcProfiler-ubuntu18.04 || exit 1
mcProfiler perf_exec --cmdline "$target" --casename nsa_v009_case12_sc16g2 --metrics RoofLine --counts 20 --custom --cwd /root/tilelang-metax > "$rep/mcprof_case12/mcprofiler.log" 2>&1
result=$?
printf '%s\n' "$result" > "$rep/mcprof_case12/exit_code.txt"
exit "$result"
