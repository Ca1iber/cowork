#!/bin/bash
set -u
base=/root/tilelang-metax
id=v004_codex_power_s1_reprofile_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
profile=$base/race_tests/nsa/hack/$id/profile_variant_v28.py
out=$rep/mcprof_case6
mkdir -p "$out/raw"
cd /opt/mcProfiler-ubuntu18.04
target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=$base/race_tests/nsa/submission.py MCTX_TARGET_PROFILE_PATH=$out/raw /opt/conda/bin/python -u $profile 6"
timeout 480s mcProfiler perf_exec --cmdline "$target" --casename "nsa_codex_power_v004_case6" --metrics "L2C Hit Rate" "Global Memory Read bytes" "Global Memory Write bytes" "AP MTE Duty ratio" "AP MMA Duty ratio" "shared memory access efficiency" "average conflict cycles per instruction" "average latency per load instruction" "Achieved waves" "Dispatched waves" --counts 2 --custom --per-kernel --cwd /root/tilelang-metax > "$out/mcprofiler.log" 2>&1
code=$?
echo "$code" > "$out/exit_code.txt"
report_dir=$(sed -n 's/^\[info\] output path is: //p' "$out/mcprofiler.log" | tail -1)
if [ "$code" = 0 ] && [ -n "$report_dir" ] && [ -f "$report_dir/report.txt.json" ]; then cp -a "$report_dir" "$out/report_bundle"; fi
echo "code=$code report=$report_dir"
