#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
report=race_tests/nsa/rep/v006_shape_dispatch_sc-16g-2

NSA_RESULTS_PATH="/root/tilelang-metax/$report/candidate_first.csv" \
    /opt/conda/bin/python -u race_tests/nsa/hack/v006_shape_dispatch_sc-16g-2/run_archived.py \
    > "$report/candidate_first.log" 2>&1
candidate_first_status=$?
printf '%s\n' "$candidate_first_status" > "$report/candidate_first.exit"
if [ "$candidate_first_status" -ne 0 ]; then exit "$candidate_first_status"; fi

NSA_RESULTS_PATH="/root/tilelang-metax/$report/baseline_paired.csv" \
    /opt/conda/bin/python -u race_tests/nsa/test_tilelang_nsa_fwd.py \
    > "$report/baseline_paired.log" 2>&1
baseline_status=$?
printf '%s\n' "$baseline_status" > "$report/baseline_paired.exit"
if [ "$baseline_status" -ne 0 ]; then exit "$baseline_status"; fi

NSA_RESULTS_PATH="/root/tilelang-metax/$report/candidate_second.csv" \
    /opt/conda/bin/python -u race_tests/nsa/hack/v006_shape_dispatch_sc-16g-2/run_archived.py \
    > "$report/candidate_second.log" 2>&1
candidate_second_status=$?
printf '%s\n' "$candidate_second_status" > "$report/candidate_second.exit"
exit "$candidate_second_status"
