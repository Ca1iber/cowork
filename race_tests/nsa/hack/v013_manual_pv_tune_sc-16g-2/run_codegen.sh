#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/v013_manual_pv_tune_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for variant in v009 v010 direct1 v013; do
    case "$variant" in
        v009) source=race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py ;;
        v010) source=race_tests/nsa/submission/v010_manual_pv_sc-16g-2/submission.py ;;
        direct1) source=/tmp/nsa_pv_v013/submission_direct1.py ;;
        v013) source=race_tests/nsa/submission/v013_manual_pv_tune_sc-16g-2/submission.py ;;
    esac
    if NSA_VARIANT_SOURCE="$source" NSA_VARIANT_LABEL="$variant" /opt/conda/bin/python -u race_tests/nsa/hack/v013_manual_pv_tune_sc-16g-2/codegen.py > "$rep/codegen_$variant.log" 2>&1; then
        result=0
    else
        result=$?
    fi
    printf '%s\n' "$result" > "$rep/codegen_$variant.exit"
done
tar -czf "$rep/generated_code.tar.gz" -C /tmp/nsa_pv_v013 codegen
sha256sum "$rep/generated_code.tar.gz" > "$rep/generated_code.sha256"
