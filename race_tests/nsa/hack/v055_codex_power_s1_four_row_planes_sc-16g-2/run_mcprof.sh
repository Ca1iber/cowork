#!/bin/bash
set -u
base=/root/tilelang-metax
id=v055_codex_power_s1_four_row_planes_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
profile=$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py
git -C "$base" show 39ff49e7b:race_tests/nsa/submission.py > /tmp/nsa_baseline_v28_for_power55.py
cd /opt/mcProfiler-ubuntu18.04
for label in power_v055 parent_v049 baseline_v28;do
 if [ "$label" = baseline_v28 ];then source=/tmp/nsa_baseline_v28_for_power55.py;elif [ "$label" = parent_v049 ];then source=$base/race_tests/nsa/submission/v049_codex_power_s1_cache_entry_sc-16g-2/submission.py;else source=/tmp/nsa_power_v055_four_row_planes.py;fi
 out=$rep/mcprof_$label
 mkdir -p "$out/raw"
 target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=$source MCTX_TARGET_PROFILE_PATH=$out/raw /opt/conda/bin/python -u $profile 6"
 timeout 480s mcProfiler perf_exec --cmdline "$target" --casename "nsa_power_v055_${label}_case6" --metrics "L2C Hit Rate" "Global Memory Read bytes" "Global Memory Write bytes" "AP MTE Duty ratio" "AP MMA Duty ratio" "shared memory access efficiency" "average conflict cycles per instruction" "average latency per load instruction" "Achieved waves" "Dispatched waves" --counts 2 --custom --per-kernel --cwd "$base" > "$out/mcprofiler.log" 2>&1
 code=$?;echo "$code" > "$out/exit_code.txt"
 report_dir=$(sed -n 's/^\[info\] output path is: //p' "$out/mcprofiler.log" | tail -1)
 if [ "$code" = 0 ] && [ -n "$report_dir" ] && [ -f "$report_dir/report.txt.json" ];then cp -a "$report_dir" "$out/report_bundle";fi
 echo "$label $code $report_dir"
done
