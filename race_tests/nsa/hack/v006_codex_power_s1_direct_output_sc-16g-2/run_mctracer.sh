#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v006_codex_power_s1_direct_output_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
profile=$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py
cd "$rep"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=$base:$base/race_tests/nsa
export NSA_PROFILE_MODE=mctx
for label in v000 v006; do
 if [ "$label" = v000 ]; then source=$base/race_tests/nsa/submission.py; else source=$base/race_tests/nsa/submission/$id/submission.py; fi
 export NSA_VARIANT_SOURCE=$source
 timeout 120s /opt/maca-3.7.1/bin/mcTracer --mctx --odname mctrace_$label --name case6_$label /opt/conda/bin/python -u "$profile" 6 > "$rep/mctrace_$label.log" 2>&1
 echo $? > "$rep/mctrace_$label.exit"
 echo "$label traced"
done
