#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/v021_case12_direct_k_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
if /opt/conda/bin/python -u race_tests/nsa/hack/v021_case12_direct_k_sc-16g-2/codegen_exact.py > "$rep/codegen_exact.log" 2>&1; then result=0; else result=$?; fi
echo "$result" > "$rep/codegen_exact.exit"
if [ "$result" != 0 ]; then exit "$result"; fi
/opt/conda/bin/python race_tests/nsa/hack/v021_case12_direct_k_sc-16g-2/compare_codegen.py > "$rep/codegen_compare.log" 2>&1
/opt/conda/bin/python /tmp/nsa_validate_oj_submission.py race_tests/nsa/submission/v021_case12_direct_k_sc-16g-2/submission.py $(for f in /tmp/nsa_v021/codegen_exact/*.device.cpp; do printf ' --generated-code %s' "$f"; done) > "$rep/oj_static.log" 2>&1
tar -czf "$rep/generated_code.tar.gz" -C /tmp/nsa_v021 codegen_exact
sha256sum "$rep/generated_code.tar.gz" > "$rep/generated_code.sha256"
diff -u /tmp/nsa_v021/codegen/v009/case12.device.cpp /tmp/nsa_v021/codegen_exact/case_12.device.cpp > "$rep/case12_codegen.diff" || true
if /opt/conda/bin/python -u race_tests/nsa/hack/v021_case12_direct_k_sc-16g-2/run_extra.py > "$rep/extra.log" 2>&1; then result=0; else result=$?; fi
echo "$result" > "$rep/extra.exit"
