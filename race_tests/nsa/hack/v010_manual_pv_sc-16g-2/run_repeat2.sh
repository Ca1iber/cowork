#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
report=race_tests/nsa/rep/v010_manual_pv_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for run in 2 3; do
    csv="/root/tilelang-metax/$report/official14_run_$run.csv"
    log="$report/official14_run_$run.log"
    if NSA_RESULTS_PATH="$csv" /opt/conda/bin/python -u race_tests/nsa/hack/v010_manual_pv_sc-16g-2/run_archived.py > "$log" 2>&1; then
        result=0
    else
        result=$?
    fi
    printf '%s\n' "$result" > "$report/official14_run_$run.exit"
    if [ "$result" -ne 0 ]; then exit "$result"; fi
    sleep 3
done
printf '0\n' > "$report/repeat2.complete"
