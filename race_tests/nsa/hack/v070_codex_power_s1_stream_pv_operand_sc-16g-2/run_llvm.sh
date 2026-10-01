#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v070_codex_power_s1_stream_pv_operand_sc-16g-2
/opt/maca/mxgpu_llvm/bin/mxcc -x maca -c -emit-llvm -maca-device-only -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I/root/tilelang-metax/src -use-fast-math -D__FAST_HALF_CVT__ -o "$r/case6.mcir" "$r/codegen/case6.device.cpp" > "$r/llvm_compile.log" 2>&1
echo $? > "$r/llvm_compile.exit"
/opt/maca/mxgpu_llvm/bin/llvm-dis "$r/case6.mcir" -o "$r/case6.ll" > "$r/llvm_dis.log" 2>&1
echo $? > "$r/llvm_dis.exit"
