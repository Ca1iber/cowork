#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/v012_qk_kpack_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
printf 'run\tkpack\texit_code\n' > "$rep/target_progress.tsv"
failed=0
run=0
for kp in 2 1 4 2; do
    run=$((run+1))
    printf -v tag 'target_%02d_kp%d' "$run" "$kp"
    if NSA_VARIANT_SOURCE="/tmp/nsa_qk_kpack_v012/submission_kp$kp.py" NSA_RESULTS_PATH="/root/tilelang-metax/$rep/$tag.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v012_qk_kpack_sc-16g-2/run_target.py > "$rep/$tag.log" 2>&1; then
        result=0
    else
        result=$?
        failed=$((failed+1))
    fi
    printf '%s\t%s\t%s\n' "$run" "$kp" "$result" >> "$rep/target_progress.tsv"
    sleep 2
done
printf '%s\n' "$failed" > "$rep/target_complete.exit"
