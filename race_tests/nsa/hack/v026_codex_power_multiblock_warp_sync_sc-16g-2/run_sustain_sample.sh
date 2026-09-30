#!/bin/bash
set -u
base=/root/tilelang-metax
id=v026_codex_power_multiblock_warp_sync_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa
export NSA_VARIANT_SOURCE=$base/race_tests/nsa/experiments/$id/candidate.py NSA_PROFILE_MODE=sustain NSA_READY_FILE=$rep/sustain.ready NSA_SUSTAIN_SECONDS=8
/opt/conda/bin/python -u "$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py" 12 > "$rep/sustain.log" 2>&1 &
workload_pid=$!
echo "$workload_pid" > "$rep/sustain_workload.pid"
while [ ! -f "$rep/sustain.ready" ] && ps -p "$workload_pid" -o pid= >/dev/null;do sleep 0.1;done
if [ -f "$rep/sustain.ready" ];then
 for sample in 1 2 3 4 5 6;do
  date -u '+%Y-%m-%d %H:%M:%S UTC' >> "$rep/hbm_samples.txt"
  mx-smi --show-hbm-bandwidth >> "$rep/hbm_samples.txt" 2>&1
  mx-smi --show-ap-usage >> "$rep/ap_samples.txt" 2>&1
  sleep 0.5
 done
fi
wait "$workload_pid"
result=$?;echo "$result" > "$rep/sustain.exit"
exit "$result"
