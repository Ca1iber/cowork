#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/v020_case12_grouped_blocks_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
printf 'run\tvariant\texit_code\n' > "$rep/thread_progress.tsv"
failed=0
run=0
for variant in v009 group2_t128 group4_t128 group8_t128 group4_t256 group8_t256 v009; do
    run=$((run+1))
    printf -v tag 'thread_%02d_%s' "$run" "$variant"
    if [ "$variant" = v009 ]; then source=race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py; else source=/tmp/nsa_v020/submission_$variant.py; fi
    if NSA_VARIANT_SOURCE="$source" NSA_VARIANT_LABEL="$variant" NSA_RESULTS_PATH="/root/tilelang-metax/$rep/$tag.csv" timeout 240s /opt/conda/bin/python -u race_tests/nsa/hack/v020_case12_grouped_blocks_sc-16g-2/run_case12.py > "$rep/$tag.log" 2>&1; then result=0; else result=$?; failed=$((failed+1)); fi
    printf '%s\t%s\t%s\n' "$run" "$variant" "$result" >> "$rep/thread_progress.tsv"
    sleep 2
done
echo "$failed" > "$rep/thread_complete.exit"
