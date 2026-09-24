#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/v013_manual_pv_tune_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
printf 'run\tvariant\texit_code\n' > "$rep/target_progress.tsv"
failed=0
run=0
for variant in v009 v010 direct1_linear direct1_half direct1_quarter direct1 v009; do
    run=$((run+1))
    printf -v tag 'target_%02d_%s' "$run" "$variant"
    case "$variant" in
        v009) source=race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py ;;
        v010) source=race_tests/nsa/submission/v010_manual_pv_sc-16g-2/submission.py ;;
        *) source=/tmp/nsa_pv_v013/submission_$variant.py ;;
    esac
    if NSA_VARIANT_SOURCE="$source" NSA_RESULTS_PATH="/root/tilelang-metax/$rep/$tag.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v012_qk_kpack_sc-16g-2/run_target.py > "$rep/$tag.log" 2>&1; then
        result=0
    else
        result=$?
        failed=$((failed+1))
    fi
    printf '%s\t%s\t%s\n' "$run" "$variant" "$result" >> "$rep/target_progress.tsv"
    sleep 2
done
printf '%s\n' "$failed" > "$rep/target_complete.exit"
