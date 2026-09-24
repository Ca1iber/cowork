#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
report=race_tests/nsa/rep/v011_qk_layout_sc-16g-2/xor8_confirm
mkdir -p "$report"
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
sha256sum race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py /tmp/nsa_qk_layout_v011/submission_xor8.py race_tests/nsa/official_case.json race_tests/nsa/test_tilelang_nsa_fwd.py > "$report/input_sha256.txt"
printf 'run\tvariant\tstart_utc\tend_utc\texit_code\tcsv\n' > "$report/progress.tsv"
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
failed=0
run=0
for variant in xor8 baseline xor8 baseline; do
    run=$((run + 1))
    printf -v tag 'run_%02d_%s' "$run" "$variant"
    if [ "$variant" = baseline ]; then
        source=race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py
    else
        source=/tmp/nsa_qk_layout_v011/submission_xor8.py
    fi
    csv="/root/tilelang-metax/$report/$tag.csv"
    log="$report/$tag.log"
    start_utc=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
    if NSA_VARIANT_SOURCE="$source" NSA_RESULTS_PATH="$csv" /opt/conda/bin/python -u race_tests/nsa/hack/v011_qk_layout_sc-16g-2/run_variant.py > "$log" 2>&1; then
        result=0
    else
        result=$?
        failed=$((failed + 1))
    fi
    end_utc=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
    printf '%s\t%s\t%s\t%s\t%s\t%s\n' "$run" "$variant" "$start_utc" "$end_utc" "$result" "$csv" >> "$report/progress.tsv"
    printf '%s\n' "$result" > "$report/$tag.exit"
    sleep 3
done
cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_after.txt"
printf '%s\n' "$failed" > "$report/complete.exit"
