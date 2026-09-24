#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
report=race_tests/nsa/rep/v011_qk_layout_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for variant in baseline tf ft ff; do
    if /opt/conda/bin/python -u race_tests/nsa/hack/v011_qk_layout_sc-16g-2/codegen_layouts.py "$variant" > "$report/codegen_$variant.log" 2>&1; then
        result=0
    else
        result=$?
    fi
    printf '%s\n' "$result" > "$report/codegen_$variant.exit"
    if [ "$result" -ne 0 ]; then
        printf '%s\n' "$result" > "$report/codegen_isolated.exit"
        exit "$result"
    fi
done
printf '0\n' > "$report/codegen_isolated.exit"
