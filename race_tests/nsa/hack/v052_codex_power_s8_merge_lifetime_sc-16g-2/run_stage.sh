#!/bin/bash
set -u
base=/root/tilelang-metax
id=v052_codex_power_s8_merge_lifetime_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
cd "$base"
python race_tests/nsa/hack/validate_oj_submission.py /tmp/nsa_power_v052_merge_lifetime.py --generated-code "$rep/codegen/case12.device.cpp" > "$rep/oj_static.log" 2>&1
result=$?;echo "$result" > "$rep/oj_static.exit"
if [ "$result" != 0 ];then exit "$result";fi
/opt/maca/mxgpu_llvm/bin/mxcc -x maca -device-obj -O3 -lineinfo --offload-arch=xcore1000 -std=c++17 -I$base/src -use-fast-math -D__FAST_HALF_CVT__ -resource-usage -o "$rep/case12.mcbin" "$rep/codegen/case12.device.cpp" > "$rep/case12.resource.log" 2>&1
result=$?;echo "$result" > "$rep/case12.resource.exit"
if [ "$result" != 0 ];then exit "$result";fi
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=/tmp/nsa_power_v052_merge_lifetime.py NSA_RESULTS_PATH=$rep/screen_case12_sc-16g-2.csv NSA_CASES=12
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py" > "$rep/screen.log" 2>&1
result=$?;echo "$result" > "$rep/screen.exit"
exit "$result"
