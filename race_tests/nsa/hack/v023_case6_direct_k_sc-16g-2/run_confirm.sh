#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/v023_case6_direct_k_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
printf 'run\tvariant\texit_code\n' > "$rep/confirm_progress.tsv"
failed=0
run=0
for variant in v022 prefetch2 prefetch4 prefetch2 prefetch4 v022; do
    run=$((run+1))
    printf -v tag 'confirm_%02d_%s' "$run" "$variant"
    if [ "$variant" = v022 ]; then source=race_tests/nsa/submission/v022_case6_case12_combined_sc-16g-2/submission.py; else source=/tmp/nsa_v023/submission_$variant.py; fi
    if NSA_VARIANT_SOURCE="$source" NSA_VARIANT_LABEL="$variant" NSA_RESULTS_PATH="/root/tilelang-metax/$rep/$tag.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v023_case6_direct_k_sc-16g-2/run_case6.py > "$rep/$tag.log" 2>&1; then result=0; else result=$?; failed=$((failed+1)); fi
    printf '%s\t%s\t%s\n' "$run" "$variant" "$result" >> "$rep/confirm_progress.tsv"
    sleep 2
done
echo "$failed" > "$rep/confirm_complete.exit"
