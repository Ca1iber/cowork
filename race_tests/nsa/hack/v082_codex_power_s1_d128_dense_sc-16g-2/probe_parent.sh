#!/bin/bash
set -u
base=/root/tilelang-metax
id=v082_codex_power_s1_d128_dense_sc-16g-2
r=$base/race_tests/nsa/rep/$id
source=$base/race_tests/nsa/submission/v081_codex_power_s24_lazy_dispatch_sc-16g-2/submission.py
cpp=$base/race_tests/nsa/rep/v081_codex_power_s24_lazy_dispatch_sc-16g-2/codegen_formal/power_v081/case3_stage1.device.cpp
/opt/maca/mxgpu_llvm/bin/mxcc -x maca -device-obj -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I/root/tilelang-metax/src -use-fast-math -D__FAST_HALF_CVT__ -resource-usage -o "$r/parent_case3.mcbin" "$cpp" > "$r/parent_case3.resource.log" 2>&1
code=$?;echo "$code" > "$r/parent_case3.resource.exit"
if [ "$code" != 0 ];then echo "$code" > "$r/parent_probe.exit";exit "$code";fi
profile=$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py
out=$r/mcprof_parent_preprobe
mkdir -p "$out/raw"
cd /opt/mcProfiler-ubuntu18.04
target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=$source MCTX_TARGET_PROFILE_PATH=$out/raw /opt/conda/bin/python -u $profile 3"
timeout 480s mcProfiler perf_exec --cmdline "$target" --casename "nsa_power_v082_parent81_case3_preprobe" --metrics "L2C Hit Rate" "Global Memory Read bytes" "Global Memory Write bytes" "AP MTE Duty ratio" "AP MMA Duty ratio" "shared memory access efficiency" "average conflict cycles per instruction" "average latency per load instruction" "Achieved waves" "Dispatched waves" --counts 2 --custom --per-kernel --cwd "$base" > "$out/mcprofiler.log" 2>&1
code=$?;echo "$code" > "$out/exit_code.txt"
report_dir=$(sed -n 's/^\[info\] output path is: //p' "$out/mcprofiler.log" | tail -1)
if [ "$code" = 0 ] && [ -n "$report_dir" ] && [ -f "$report_dir/report.txt.json" ];then cp -a "$report_dir" "$out/report_bundle";fi
echo "$code" > "$r/parent_probe.exit";exit "$code"
