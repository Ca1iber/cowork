#!/bin/bash
set -u
base=/root/tilelang-metax
id=v031_codex_power_output_relay_swizzle_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
cd "$base"
python /tmp/nsa_validate_oj_submission.py "$base/race_tests/nsa/experiments/$id/candidate.py" --generated-code "$rep/codegen/case10.device.cpp" --generated-code "$rep/codegen/case11.device.cpp" --generated-code "$rep/codegen/case12.device.cpp" > "$rep/oj_static_generated.log" 2>&1
static_code=$?;echo "$static_code" > "$rep/oj_static_generated.exit"
if [ "$static_code" != 0 ];then exit "$static_code";fi
/opt/maca/mxgpu_llvm/bin/mxcc -x maca -device-obj -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I$base/src -use-fast-math -D__FAST_HALF_CVT__ -resource-usage -o "$rep/case12.mcbin" "$rep/codegen/case12.device.cpp" > "$rep/case12.resource.log" 2>&1
resource_code=$?;echo "$resource_code" > "$rep/case12.resource.exit"
if [ "$resource_code" != 0 ];then exit "$resource_code";fi
bash "$base/race_tests/nsa/hack/$id/run_screen.sh" > "$rep/screen.log" 2>&1
screen_code=$?;echo "$screen_code" > "$rep/screen.exit"
exit "$screen_code"
