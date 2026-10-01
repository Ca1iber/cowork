#!/bin/bash
set -u
base=/root/tilelang-metax
rep=$base/race_tests/nsa/rep/v050_codex_power_s8_online_local_sc-16g-2
/opt/maca/mxgpu_llvm/bin/mxcc -x maca -device-obj -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I$base/src -use-fast-math -D__FAST_HALF_CVT__ -resource-usage -o "$rep/baseline_case12.mcbin" "$base/race_tests/nsa/rep/v049_codex_power_s1_cache_entry_sc-16g-2/codegen_all14/baseline_v28/case12_stage1.device.cpp" > "$rep/baseline_case12.resource.log" 2>&1
code=$?;echo "$code" > "$rep/baseline_case12.resource.exit"
exit "$code"
