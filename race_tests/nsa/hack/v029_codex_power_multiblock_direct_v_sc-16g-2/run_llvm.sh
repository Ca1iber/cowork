#!/bin/bash
set -u
base=/root/tilelang-metax
id=v029_codex_power_multiblock_direct_v_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
/opt/maca/mxgpu_llvm/bin/mxcc -x maca -c -emit-llvm -maca-device-only -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I$base/src -use-fast-math -D__FAST_HALF_CVT__ -o "$rep/case12.mcir" "$rep/codegen/case12.device.cpp" > "$rep/llvm_compile.log" 2>&1
echo "$?" > "$rep/llvm_compile.exit"
/opt/maca/mxgpu_llvm/bin/llvm-dis "$rep/case12.mcir" -o "$rep/case12.ll" > "$rep/llvm_dis.log" 2>&1
echo "$?" > "$rep/llvm_dis.exit"
