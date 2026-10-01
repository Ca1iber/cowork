#!/bin/bash
set -u
base=/root/tilelang-metax
id=v066_codex_power_s8_quad_loop_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
profile=$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py
git -C "$base" show 39ff49e7b:race_tests/nsa/submission.py > /tmp/nsa_baseline_v28_for_power66.py
cd /opt/mcProfiler-ubuntu18.04
for label in power_v066 parent_v064;do
 if [ "$label" = baseline_v28 ];then source=/tmp/nsa_baseline_v28_for_power66.py;elif [ "$label" = parent_v060 ];then source=$base/race_tests/nsa/submission/v060_codex_power_s1_output_pair_swap_sc-16g-2/submission.py;elif [ "$label" = parent_v064 ];then source=$base/race_tests/nsa/submission/v064_codex_power_s8_serial_loop_sc-16g-2/submission.py;else source=/tmp/nsa_power_v066_proven_bounds.py;fi
 out=$rep/mcprof_$label
 mkdir -p "$out/raw"
 target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=$source MCTX_TARGET_PROFILE_PATH=$out/raw /opt/conda/bin/python -u $profile 12"
 timeout 480s mcProfiler perf_exec --cmdline "$target" --casename "nsa_power_v066_${label}_case12" --metrics "L2C Hit Rate" "Global Memory Read bytes" "Global Memory Write bytes" "AP MTE Duty ratio" "AP MMA Duty ratio" "shared memory access efficiency" "average conflict cycles per instruction" "average latency per load instruction" "Achieved waves" "Dispatched waves" --counts 2 --custom --per-kernel --cwd "$base" > "$out/mcprofiler.log" 2>&1
 code=$?;echo "$code" > "$out/exit_code.txt"
 report_dir=$(sed -n 's/^\[info\] output path is: //p' "$out/mcprofiler.log" | tail -1)
 if [ "$code" = 0 ] && [ -n "$report_dir" ] && [ -f "$report_dir/report.txt.json" ];then cp -a "$report_dir" "$out/report_bundle";fi
 echo "$label $code $report_dir"
done
