#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/v012_qk_kpack_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for variant in kp1 kp2 kp4; do
    case "$variant" in
        kp1) source=/tmp/nsa_qk_kpack_v012/submission_kp1.py ;;
        kp2) source=race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py ;;
        kp4) source=race_tests/nsa/submission/v012_qk_kpack_sc-16g-2/submission.py ;;
    esac
    if NSA_VARIANT_SOURCE="$source" NSA_VARIANT_LABEL="$variant" /opt/conda/bin/python -u race_tests/nsa/hack/v012_qk_kpack_sc-16g-2/codegen_target.py > "$rep/codegen_$variant.log" 2>&1; then
        result=0
    else
        result=$?
    fi
    printf '%s\n' "$result" > "$rep/codegen_$variant.exit"
done
tar -czf "$rep/generated_code.tar.gz" -C /tmp/nsa_qk_kpack_v012 codegen
sha256sum "$rep/generated_code.tar.gz" > "$rep/generated_code.sha256"
