#!/bin/bash
set -u
base=/root/tilelang-metax
id=v033_codex_power_s4_checkpoint_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
src=$rep/codegen/case11_kernel1.device.cpp
/opt/maca/mxgpu_llvm/bin/mxcc -x maca -device-obj -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I$base/src -use-fast-math -D__FAST_HALF_CVT__ -resource-usage -o "$rep/case11.mcbin" "$src" > "$rep/case11.resource.log" 2>&1
echo "$?" > "$rep/case11.resource.exit"
/opt/maca/mxgpu_llvm/bin/mxcc -x maca -c -emit-llvm -maca-device-only -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I$base/src -use-fast-math -D__FAST_HALF_CVT__ -o "$rep/case11.mcir" "$src" > "$rep/llvm_compile.log" 2>&1
echo "$?" > "$rep/llvm_compile.exit"
/opt/maca/mxgpu_llvm/bin/llvm-dis "$rep/case11.mcir" -o "$rep/case11.ll" > "$rep/llvm_dis.log" 2>&1
echo "$?" > "$rep/llvm_dis.exit"
