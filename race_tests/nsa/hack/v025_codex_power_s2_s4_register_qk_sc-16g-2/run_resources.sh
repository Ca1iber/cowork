#!/bin/bash
set -u
base=/root/tilelang-metax
id=v025_codex_power_s2_s4_register_qk_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
for label in v024 v025; do
 if [ "$label" = v024 ]; then src=$base/race_tests/nsa/rep/v024_codex_power_host_kernel_cache_sc-16g-2/codegen/case11.device.cpp; else src=$rep/codegen/case11.device.cpp; fi
 /opt/maca/mxgpu_llvm/bin/mxcc -x maca -device-obj -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I$base/src -use-fast-math -D__FAST_HALF_CVT__ -resource-usage -o "$rep/case11_$label.mcbin" "$src" > "$rep/case11_$label.resource.log" 2>&1
 echo "$?" > "$rep/case11_$label.resource.exit"
done
