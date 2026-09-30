#!/bin/bash
set -u
base=/root/tilelang-metax
id=v023_codex_power_s8_cooperative_k_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_PROFILE_MODE=torchprof
profile=$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py
for label in v023 v028; do
 if [ "$label" = v028 ]; then source=/tmp/nsa_power_v023_pair_v028.py; else source=$base/race_tests/nsa/experiments/$id/candidate.py; fi
 NSA_VARIANT_SOURCE=$source NSA_TRACE_PATH=$rep/torchprof_case2_$label.json /opt/conda/bin/python -u "$profile" 2 > "$rep/torchprof_case2_$label.log" 2>&1
 echo "$?" > "$rep/torchprof_case2_$label.exit"
done
