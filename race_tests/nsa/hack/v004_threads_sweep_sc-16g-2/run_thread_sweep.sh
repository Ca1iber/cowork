#!/usr/bin/env bash
set -euo pipefail
repo=/root/tilelang-metax
nsa=$repo/race_tests/nsa
id=v004_threads_sweep_sc-16g-2
base=$nsa/submission/v003_official_baseline_sc-16g-2/submission.py
root_submission=$nsa/submission.py
rep=$nsa/rep/$id
restore() { cp "$base" "$root_submission"; }
trap restore EXIT
run_one() {
  local threads=$1 label=$2 variant
  variant=/tmp/nsa_v004_threads_${threads}.py
  if [[ ! -f $variant ]]; then
    sed "s/^    threads = 64$/    threads = $threads/" "$base" > "$variant"
  fi
  cp "$variant" "$root_submission"
  set +e
  MACA_PATH=/opt/maca PYTHONPATH="$repo:$nsa" NSA_RESULTS_PATH="$rep/benchmark/$label.csv" PYTHONWARNINGS=ignore \
    /opt/conda/bin/python "$nsa/test_tilelang_nsa_fwd.py" > "$rep/logs/$label.log" 2>&1
  local rc=$?
  set -e
  echo "$rc" > "$rep/logs/$label.exit_code"
  echo "$label exit=$rc"
}
run_one 64 baseline_r1
run_one 128 threads128_r1
run_one 192 threads192_r1
run_one 256 threads256_r1
run_one 256 threads256_r2
run_one 192 threads192_r2
run_one 128 threads128_r2
run_one 64 baseline_r2
echo complete > "$rep/complete.status"
