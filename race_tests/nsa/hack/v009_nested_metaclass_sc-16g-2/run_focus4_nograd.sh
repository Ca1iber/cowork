#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
report=race_tests/nsa/rep/v009_nested_metaclass_sc-16g-2/focus_7_9_12_14_nograd_20260924
mkdir -p "$report"
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
sha256sum race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py race_tests/nsa/official_case.json race_tests/nsa/test_tilelang_nsa_fwd.py > "$report/input_sha256.txt"
printf 'case,repeat,latency_ms,status\n' > "$report/results.csv"
cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_before.txt"
for case_index in 7 14 9 12; do
    log="$report/case_$case_index.log"
    mx-smi --show-usage --show-clock --show-process > "$report/case_$case_index.smi_before.txt" 2>&1 || true
    if /opt/conda/bin/python -u race_tests/nsa/hack/v009_nested_metaclass_sc-16g-2/run_focus_case_nograd.py "$case_index" > "$log" 2>&1; then
        result=0
    else
        result=$?
    fi
    mx-smi --show-usage --show-clock --show-process > "$report/case_$case_index.smi_after.txt" 2>&1 || true
    grep '^FOCUS_RESULT,' "$log" | sed 's/^FOCUS_RESULT,//' >> "$report/results.csv" || true
    measured=$(grep -c '^FOCUS_RESULT,' "$log" || true)
    if [ "$result" -ne 0 ] || [ "$measured" -ne 5 ]; then
        printf 'case %s exit=%s measured=%s\n' "$case_index" "$result" "$measured" > "$report/error.txt"
        cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_after.txt"
        printf '%s\n' "$result" > "$report/complete.exit"
        exit 1
    fi
done
cat /sys/fs/cgroup/memory/memory.oom_control > "$report/oom_after.txt"
printf '0\n' > "$report/complete.exit"
