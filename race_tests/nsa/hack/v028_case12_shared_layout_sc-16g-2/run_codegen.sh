#!/bin/bash
set -eu
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
rep=race_tests/nsa/rep/v028_case12_shared_layout_sc-16g-2
source="$PWD/race_tests/nsa/submission/v028_case12_shared_layout_sc-16g-2/submission.py"
NSA_VARIANT_SOURCE="$source" NSA_CODEGEN_PATH=/tmp/nsa_v028/codegen_exact /opt/conda/bin/python -u race_tests/nsa/hack/v026_full_past_mask_sc-16g-2/codegen_exact.py > "$rep/codegen_exact.log" 2>&1
/opt/conda/bin/python /tmp/nsa_validate_oj_submission.py "$source" $(for f in /tmp/nsa_v028/codegen_exact/*.device.cpp; do printf ' --generated-code %s' "$f"; done) > "$rep/oj_generated_static.log" 2>&1
tar -czf "$rep/generated_code.tar.gz" -C /tmp/nsa_v028 codegen_exact
sha256sum "$rep/generated_code.tar.gz" > "$rep/generated_code.sha256"
