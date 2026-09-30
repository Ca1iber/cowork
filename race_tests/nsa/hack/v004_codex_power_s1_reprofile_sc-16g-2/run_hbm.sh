#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v004_codex_power_s1_reprofile_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
profile=$base/race_tests/nsa/hack/$id/profile_variant_v28.py
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=$base:$base/race_tests/nsa
ready=$rep/hbm_case6.ready
rm -f "$ready"
NSA_VARIANT_SOURCE=$base/race_tests/nsa/submission.py NSA_PROFILE_MODE=sustain NSA_SUSTAIN_SECONDS=10 NSA_READY_FILE=$ready /opt/conda/bin/python -u "$profile" 6 > "$rep/hbm_case6.workload.log" 2>&1 &
workload=$!
while [ ! -f "$ready" ] && kill -0 "$workload" 2>/dev/null; do sleep 0.2; done
if [ -f "$ready" ]; then
 mx-smi --show-clock -i 0 > "$rep/hbm_case6.clock.log" 2>&1 || true
 mx-smi --show-ap-usage -i 0 > "$rep/hbm_case6.ap.log" 2>&1 || true
 timeout 8s mx-smi --show-hbm-bandwidth -i 0 -l 100 > "$rep/hbm_case6.mxsmi.log" 2>&1 || true
fi
wait "$workload"
echo 0 > "$rep/hbm_case6.exit"
