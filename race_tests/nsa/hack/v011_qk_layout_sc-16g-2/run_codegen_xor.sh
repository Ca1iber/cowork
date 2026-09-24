#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
report=race_tests/nsa/rep/v011_qk_layout_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
failed=0
for variant in xor4 xor8 xor16; do
    if /opt/conda/bin/python -u race_tests/nsa/hack/v011_qk_layout_sc-16g-2/codegen_layouts.py "$variant" > "$report/codegen_$variant.log" 2>&1; then
        result=0
    else
        result=$?
        failed=$((failed + 1))
    fi
    printf '%s\n' "$result" > "$report/codegen_$variant.exit"
done
printf '%s\n' "$failed" > "$report/codegen_xor.exit"
