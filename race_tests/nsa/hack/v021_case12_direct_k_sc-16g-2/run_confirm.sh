#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/v021_case12_direct_k_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
printf 'run\tvariant\texit_code\n' > "$rep/confirm_progress.tsv"
failed=0
run=4
for variant in v021 v009; do
    run=$((run+1))
    printf -v tag 'official_%02d_%s' "$run" "$variant"
    if [ "$variant" = v021 ]; then source=race_tests/nsa/submission/v021_case12_direct_k_sc-16g-2/submission.py; else source=race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py; fi
    if NSA_VARIANT_SOURCE="$source" NSA_RESULTS_PATH="/root/tilelang-metax/$rep/$tag.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v011_qk_layout_sc-16g-2/run_variant.py > "$rep/$tag.log" 2>&1; then result=0; else result=$?; failed=$((failed+1)); fi
    printf '%s\t%s\t%s\n' "$run" "$variant" "$result" >> "$rep/confirm_progress.tsv"
    sleep 3
done
echo "$failed" > "$rep/confirm_complete.exit"
