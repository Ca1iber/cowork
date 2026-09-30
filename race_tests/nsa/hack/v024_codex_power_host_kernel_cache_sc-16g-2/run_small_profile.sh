#!/bin/bash
set -u
base=/root/tilelang-metax
id=v024_codex_power_host_kernel_cache_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_PROFILE_MODE=torchprof
profile=$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py
for label in v023 v024; do
 if [ "$label" = v023 ]; then source=$base/race_tests/nsa/experiments/v023_codex_power_s8_cooperative_k_sc-16g-2/candidate.py; else source=$base/race_tests/nsa/experiments/$id/candidate.py; fi
 NSA_VARIANT_SOURCE=$source NSA_TRACE_PATH=$rep/torchprof_case2_$label.json /opt/conda/bin/python -u "$profile" 2 > "$rep/torchprof_case2_$label.log" 2>&1
 echo "$?" > "$rep/torchprof_case2_$label.exit"
done
