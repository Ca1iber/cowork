#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v014_codex_power_s8_wave_split_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
profile=$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py
cd "$rep"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_PROFILE_MODE=mctx
for label in ${NSA_TRACE_VARIANTS:-v013}; do
 if [ "$label" = v013 ]; then source=$base/race_tests/nsa/submission/v013_codex_power_best_promotion_sc-16g-2/submission.py; else source=$base/race_tests/nsa/experiments/$id/candidate.py; fi
 export NSA_VARIANT_SOURCE=$source
 timeout 120s /opt/maca-3.7.1/bin/mcTracer --mctx --odname mctrace_$label --name case12_$label /opt/conda/bin/python -u "$profile" 12 > "$rep/mctrace_$label.log" 2>&1
 echo $? > "$rep/mctrace_$label.exit"
 echo "$label traced"
done
