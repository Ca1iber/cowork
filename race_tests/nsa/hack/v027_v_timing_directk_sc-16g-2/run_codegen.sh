#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
export MACA_PATH=/opt/maca PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
rep=race_tests/nsa/rep/v027_v_timing_directk_sc-16g-2
for mode in pre_qk pre_softmax; do
 source="/tmp/nsa_v027/$mode.py"
 out="/tmp/nsa_v027/codegen_$mode"
 if NSA_VARIANT_SOURCE="$source" NSA_CODEGEN_PATH="$out" /opt/conda/bin/python -u race_tests/nsa/hack/v027_v_timing_directk_sc-16g-2/codegen_target.py > "$rep/codegen_$mode.log" 2>&1; then result=0; else result=$?; fi
 echo "$result" > "$rep/codegen_$mode.exit"
 if [ "$result" = 0 ]; then
  /opt/conda/bin/python /tmp/nsa_validate_oj_submission.py "$source" --generated-code "$out/case_06.device.cpp" --generated-code "$out/case_12.device.cpp" > "$rep/oj_generated_$mode.log" 2>&1
 fi
done
tar -czf "$rep/generated_code.tar.gz" -C /tmp/nsa_v027 codegen_pre_qk codegen_pre_softmax
sha256sum "$rep/generated_code.tar.gz" > "$rep/generated_code.sha256"
