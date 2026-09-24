#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/v025_case6_token_group_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
printf 'run\tvariant\texit_code\n' > "$rep/progress.tsv"
failed=0
run=0
for variant in v023 token4 token8 v023; do
    run=$((run+1))
    printf -v tag 'case6_%02d_%s' "$run" "$variant"
    if [ "$variant" = v023 ]; then source=race_tests/nsa/submission/v023_case6_direct_k_sc-16g-2/submission.py; else source=/tmp/nsa_v025/submission_$variant.py; fi
    if NSA_VARIANT_SOURCE="$source" NSA_VARIANT_LABEL="$variant" NSA_RESULTS_PATH="/root/tilelang-metax/$rep/$tag.csv" timeout 180s /opt/conda/bin/python -u race_tests/nsa/hack/v025_case6_token_group_sc-16g-2/run_case6.py > "$rep/$tag.log" 2>&1; then result=0; else result=$?; failed=$((failed+1)); fi
    printf '%s\t%s\t%s\n' "$run" "$variant" "$result" >> "$rep/progress.tsv"
    sleep 2
done
echo "$failed" > "$rep/complete.exit"
