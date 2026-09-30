#!/bin/bash
set -eu
base=/root/tilelang-metax
id=v000_codex_power_baseline_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
profile=$base/race_tests/nsa/hack/$id/profile_variant_v28.py
cd "$rep"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore
export PYTHONPATH=$base:$base/race_tests/nsa
export NSA_VARIANT_SOURCE=$base/race_tests/nsa/submission.py
export NSA_PROFILE_MODE=mctx
for case in 6 12; do
 timeout 120s /opt/maca-3.7.1/bin/mcTracer --mctx --odname mctrace_case$case --name baseline_case$case /opt/conda/bin/python -u "$profile" "$case" > "$rep/mctrace_case$case.log" 2>&1
 echo $? > "$rep/mctrace_case$case.exit"
 echo "case$case traced"
done
