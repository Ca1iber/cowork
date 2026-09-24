#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/v012_qk_kpack_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
sha256sum race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py /tmp/nsa_qk_kpack_v012/submission_kp4.py race_tests/nsa/official_case.json race_tests/nsa/test_tilelang_nsa_fwd.py > "$rep/input_sha256.txt"
printf 'run\tvariant\texit_code\n' > "$rep/official_progress.tsv"
failed=0
run=0
for variant in kp4 baseline kp4 baseline; do
    run=$((run+1))
    printf -v tag 'official_%02d_%s' "$run" "$variant"
    if [ "$variant" = baseline ]; then
        source=race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py
    else
        source=/tmp/nsa_qk_kpack_v012/submission_kp4.py
    fi
    if NSA_VARIANT_SOURCE="$source" NSA_RESULTS_PATH="/root/tilelang-metax/$rep/$tag.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v011_qk_layout_sc-16g-2/run_variant.py > "$rep/$tag.log" 2>&1; then
        result=0
    else
        result=$?
        failed=$((failed+1))
    fi
    printf '%s\t%s\t%s\n' "$run" "$variant" "$result" >> "$rep/official_progress.tsv"
    sleep 3
done
printf '%s\n' "$failed" > "$rep/official_complete.exit"
