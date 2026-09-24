#!/bin/bash
set -eu
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
id=profile_v023_case6_case12_sc-16g-2
rep=race_tests/nsa/rep/$id
source="$PWD/race_tests/nsa/submission/v023_case6_direct_k_sc-16g-2/submission.py"
for case in 6 12; do
  ready="$PWD/$rep/hbm_v023_case${case}.ready"
  rm -f "$ready"
  NSA_VARIANT_SOURCE="$source" NSA_PROFILE_MODE=sustain NSA_SUSTAIN_SECONDS=8 NSA_READY_FILE="$ready" /opt/conda/bin/python -u race_tests/nsa/hack/v023_case6_direct_k_sc-16g-2/profile_variant.py "$case" > "$rep/hbm_v023_case${case}.workload.log" 2>&1 &
  workload=$!
  while [ ! -f "$ready" ] && kill -0 "$workload" 2>/dev/null; do sleep 0.2; done
  if [ -f "$ready" ]; then
    mx-smi --show-clock -i 0 > "$rep/hbm_v023_case${case}.clock.log" 2>&1 || true
    mx-smi --show-ap-usage -i 0 > "$rep/hbm_v023_case${case}.ap.log" 2>&1 || true
    timeout 8s mx-smi --show-hbm-bandwidth -i 0 -l 100 > "$rep/hbm_v023_case${case}.mxsmi.log" 2>&1 || true
  fi
  wait "$workload"
  echo $? > "$rep/hbm_v023_case${case}.exit"
done
