#!/bin/bash
set -u

cd /root/tilelang-metax || exit 1
report=race_tests/nsa/rep/compare_w10_r50_baseline_v005_v006_sc-16g-2_20260923
mkdir -p "$report"
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa

sha256sum \
    race_tests/nsa/submission.py \
    race_tests/nsa/submission/v005_manual_qk_mfma_sc-16g-2/submission.py \
    race_tests/nsa/submission/v006_shape_dispatch_sc-16g-2/submission.py \
    race_tests/nsa/official_case.json \
    race_tests/nsa/test_tilelang_nsa_fwd.py \
    > "$report/input_sha256.txt"

if ! grep -q '^462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1  race_tests/nsa/submission.py$' "$report/input_sha256.txt"; then
    printf 'Baseline hash mismatch\n' > "$report/error.txt"
    printf '2\n' > "$report/complete.exit"
    exit 2
fi
if ! grep -q '^32af6c4ba94279470a97e4d6cfb0093f28690c9409265f32ee54023b4f5195f5  race_tests/nsa/submission/v005_manual_qk_mfma_sc-16g-2/submission.py$' "$report/input_sha256.txt"; then
    printf 'v005 hash mismatch\n' > "$report/error.txt"
    printf '2\n' > "$report/complete.exit"
    exit 2
fi
if ! grep -q '^cf19f92faf1f4474c4b0053f4c251495d277ca3019c404b8597087df288794a6  race_tests/nsa/submission/v006_shape_dispatch_sc-16g-2/submission.py$' "$report/input_sha256.txt"; then
    printf 'v006 hash mismatch\n' > "$report/error.txt"
    printf '2\n' > "$report/complete.exit"
    exit 2
fi
if ! grep -q '^65d0f43627ec2196d28900f504365b0bda1f177a9683acba7ba911d06788ed49  race_tests/nsa/test_tilelang_nsa_fwd.py$' "$report/input_sha256.txt"; then
    printf 'Timer setting or test runner hash mismatch\n' > "$report/error.txt"
    printf '2\n' > "$report/complete.exit"
    exit 2
fi

printf 'ordinal\tvariant\tstart_utc\tend_utc\texit_code\tcsv\n' > "$report/progress.tsv"
(
    while true; do
        date -u '+UTC %Y-%m-%d %H:%M:%S'
        mx-smi --show-usage --show-clock --show-process
        sleep 5
    done
) > "$report/gpu_samples.log" 2>&1 &
sampler_pid=$!
trap 'kill "$sampler_pid" 2>/dev/null || true' EXIT

# Three balanced rounds: each variant appears once at every run position.
variants=(baseline v005 v006 v005 v006 baseline v006 baseline v005)
for index in "${!variants[@]}"; do
    ordinal=$((index + 1))
    variant=${variants[index]}
    printf -v tag '%02d_%s' "$ordinal" "$variant"
    csv="/root/tilelang-metax/$report/$tag.csv"
    log="$report/$tag.log"
    start_utc=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
    mx-smi --show-usage --show-clock --show-process > "$report/$tag.smi_before.txt" 2>&1 || true

    case "$variant" in
        baseline) entry=race_tests/nsa/test_tilelang_nsa_fwd.py ;;
        v005) entry=race_tests/nsa/hack/v005_manual_qk_mfma_sc-16g-2/run_archived.py ;;
        v006) entry=race_tests/nsa/hack/v006_shape_dispatch_sc-16g-2/run_archived.py ;;
    esac

    if NSA_RESULTS_PATH="$csv" /opt/conda/bin/python -u "$entry" > "$log" 2>&1; then
        result=0
    else
        result=$?
    fi
    end_utc=$(date -u '+%Y-%m-%dT%H:%M:%SZ')
    mx-smi --show-usage --show-clock --show-process > "$report/$tag.smi_after.txt" 2>&1 || true
    printf '%s\t%s\t%s\t%s\t%s\t%s\n' "$ordinal" "$variant" "$start_utc" "$end_utc" "$result" "$csv" >> "$report/progress.tsv"
    printf '%s\n' "$result" > "$report/$tag.exit"
    if [ "$result" -ne 0 ]; then
        printf '%s\n' "$result" > "$report/complete.exit"
        exit "$result"
    fi
    sleep 3
done

printf '0\n' > "$report/complete.exit"
