#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v079_codex_power_s1_case4_dense_sc-16g-2
/opt/maca/mxgpu_llvm/bin/mxcc -x maca -device-obj -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I/root/tilelang-metax/src -use-fast-math -D__FAST_HALF_CVT__ -resource-usage -o "$r/original_case4.mcbin" /root/tilelang-metax/race_tests/nsa/rep/v077_codex_power_s8_output_pair_sc-16g-2/codegen_all14/baseline_v28/case4_stage1.device.cpp > "$r/original_case4.resource.log" 2>&1
code=$?;echo "$code" > "$r/original_case4.resource.exit"
exit "$code"
