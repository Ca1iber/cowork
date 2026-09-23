#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
report=race_tests/nsa/rep/v008_nested_mma_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_before.txt"
(
    while true; do
        printf '%s ' "$(date -u '+%Y-%m-%dT%H:%M:%SZ')"
        cat /sys/fs/cgroup/memory/memory.usage_in_bytes
        sleep 1
    done
) > "$report/memory_samples.log" 2>&1 &
sampler_pid=$!
trap 'kill "$sampler_pid" 2>/dev/null || true' EXIT
NSA_RESULTS_PATH=/root/tilelang-metax/$report/official14.csv \
    /opt/conda/bin/python -u race_tests/nsa/hack/v008_nested_mma_sc-16g-2/run_archived.py \
    > "$report/official14.log" 2>&1
result=$?
printf '%s\n' "$result" > "$report/official14.exit"
cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_after.txt"
exit "$result"
