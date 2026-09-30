#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v007_codex_power_s1_two_waves_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
profile=$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py
cd "$base"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=$base:$base/race_tests/nsa
for label in v000 v007; do
 if [ "$label" = v000 ]; then source=$base/race_tests/nsa/submission.py; else source=$base/race_tests/nsa/submission/$id/submission.py; fi
 ready=$rep/hbm_$label.ready
 rm -f "$ready"
 NSA_VARIANT_SOURCE=$source NSA_PROFILE_MODE=sustain NSA_SUSTAIN_SECONDS=10 NSA_READY_FILE=$ready /opt/conda/bin/python -u "$profile" 6 > "$rep/hbm_$label.workload.log" 2>&1 &
 workload=$!
 while [ ! -f "$ready" ] && kill -0 "$workload" 2>/dev/null; do sleep 0.2; done
 if [ -f "$ready" ]; then
  mx-smi --show-clock -i 0 > "$rep/hbm_$label.clock.log" 2>&1 || true
  mx-smi --show-ap-usage -i 0 > "$rep/hbm_$label.ap.log" 2>&1 || true
  timeout 8s mx-smi --show-hbm-bandwidth -i 0 -l 100 > "$rep/hbm_$label.mxsmi.log" 2>&1 || true
 fi
 wait "$workload"
 echo 0 > "$rep/hbm_$label.exit"
 echo "$label done"
done
