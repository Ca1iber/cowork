#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
report=race_tests/nsa/rep/v009_nested_metaclass_sc-16g-2/stability_20260924
mkdir -p "$report"
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa

sha256sum \
    race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py \
    race_tests/nsa/official_case.json \
    race_tests/nsa/test_tilelang_nsa_fwd.py \
    > "$report/input_sha256.txt"
if ! grep -q '^b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c  race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py$' "$report/input_sha256.txt"; then
    printf 'v009 source hash mismatch\n' > "$report/error.txt"
    printf '2\n' > "$report/complete.exit"
    exit 2
fi
if ! grep -q '^65d0f43627ec2196d28900f504365b0bda1f177a9683acba7ba911d06788ed49  race_tests/nsa/test_tilelang_nsa_fwd.py$' "$report/input_sha256.txt"; then
    printf '10/50 benchmark hash mismatch\n' > "$report/error.txt"
    printf '2\n' > "$report/complete.exit"
    exit 2
fi

cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_before.txt"
printf 'run\tstart_utc\tend_utc\texit_code\tcsv\n' > "$report/progress.tsv"
(
    while true; do
        date -u '+UTC %Y-%m-%d %H:%M:%S'
        mx-smi --show-usage --show-clock --show-process
        sleep 5
    done
) > "$report/gpu_samples.log" 2>&1 &
sampler_pid=$!
trap 'kill "$sampler_pid" 2>/dev/null || true' EXIT

for run in 1 2 3 4 5; do
    printf -v tag '%02d' "$run"
    csv="/root/tilelang-metax/$report/run_$tag.csv"
    log="$report/run_$tag.log"
    start_utc=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
    mx-smi --show-usage --show-clock --show-process > "$report/run_$tag.smi_before.txt" 2>&1 || true
    if NSA_RESULTS_PATH="$csv" /opt/conda/bin/python -u race_tests/nsa/hack/v009_nested_metaclass_sc-16g-2/run_archived.py > "$log" 2>&1; then
        result=0
    else
        result=$?
    fi
    end_utc=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
    mx-smi --show-usage --show-clock --show-process > "$report/run_$tag.smi_after.txt" 2>&1 || true
    printf '%s\t%s\t%s\t%s\t%s\n' "$run" "$start_utc" "$end_utc" "$result" "$csv" >> "$report/progress.tsv"
    printf '%s\n' "$result" > "$report/run_$tag.exit"
    if [ "$result" -ne 0 ]; then
        cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_after.txt"
        printf '%s\n' "$result" > "$report/complete.exit"
        exit "$result"
    fi
    sleep 3
done

cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_after.txt"
printf '0\n' > "$report/complete.exit"
