#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
report=race_tests/nsa/rep/v009_nested_metaclass_sc-16g-2/focus_7_9_12_14_20260924
mkdir -p "$report"
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
sha256sum race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py race_tests/nsa/official_case.json race_tests/nsa/test_tilelang_nsa_fwd.py > "$report/input_sha256.txt"
if ! grep -q '^b4e7a59a5c6cf2f3379c19dad32a43b7c1a94ea145b0b5b09b1b7ae42154234c  race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py$' "$report/input_sha256.txt"; then
    printf 'source hash mismatch\n' > "$report/error.txt"
    printf '2\n' > "$report/complete.exit"
    exit 2
fi
if ! grep -q '^65d0f43627ec2196d28900f504365b0bda1f177a9683acba7ba911d06788ed49  race_tests/nsa/test_tilelang_nsa_fwd.py$' "$report/input_sha256.txt"; then
    printf 'benchmark hash mismatch\n' > "$report/error.txt"
    printf '2\n' > "$report/complete.exit"
    exit 2
fi
printf 'round,case,latency_ms,status,start_utc,end_utc\n' > "$report/results.csv"
cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_before.txt"
(
    while true; do
        date -u '+UTC %Y-%m-%d %H:%M:%S'
        mx-smi --show-usage --show-clock --show-process
        sleep 5
    done
) > "$report/gpu_samples.log" 2>&1 &
sampler_pid=$!
trap 'kill "$sampler_pid" 2>/dev/null || true' EXIT
for round in 1 2 3 4 5; do
    case "$round" in
        1|5) order='7 14 9 12' ;;
        2) order='14 9 12 7' ;;
        3) order='9 12 7 14' ;;
        4) order='12 7 14 9' ;;
    esac
    for case_index in $order; do
        printf -v tag 'round_%02d_case_%02d' "$round" "$case_index"
        log="$report/$tag.log"
        start_utc=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
        if /opt/conda/bin/python -u race_tests/nsa/hack/v009_nested_metaclass_sc-16g-2/run_focus_case.py "$case_index" > "$log" 2>&1; then
            result=0
        else
            result=$?
        fi
        end_utc=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
        latency=$(sed -n 's/^FOCUS_RESULT .*latency_ms=\([0-9.]*\) .*/\1/p' "$log" | tail -n 1)
        if [ "$result" -eq 0 ] && [ -n "$latency" ]; then
            printf '%s,%s,%s,PASS,%s,%s\n' "$round" "$case_index" "$latency" "$start_utc" "$end_utc" >> "$report/results.csv"
        else
            printf '%s,%s,,FAIL,%s,%s\n' "$round" "$case_index" "$start_utc" "$end_utc" >> "$report/results.csv"
            cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_after.txt"
            printf '%s\n' "$result" > "$report/complete.exit"
            exit "$result"
        fi
        sleep 2
    done
done
cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_after.txt"
printf '0\n' > "$report/complete.exit"
