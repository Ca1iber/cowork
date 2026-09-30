#!/bin/bash
set -eu
base=/root/tilelang-metax
rep=$base/race_tests/nsa/rep/v000_codex_power_baseline_sc-16g-2
for case in 06 12; do
 /opt/maca/mxgpu_llvm/bin/mxcc -x maca -device-obj -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I/root/tilelang-metax/src -use-fast-math -D__FAST_HALF_CVT__ -resource-usage -o "$rep/case${case}.mcbin" "$rep/codegen/case${case}.device.cpp" > "$rep/case${case}.resource.log" 2>&1
 echo "case${case} compiled"
done
