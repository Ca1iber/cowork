#!/bin/bash
set -u
base=/root/tilelang-metax
id=v046_codex_power_s8_v_rowpair_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=/tmp/nsa_power_v046_v_rowpair.py
mkdir -p "$rep/mctrace"
cd "$rep/mctrace"
timeout 120s /opt/maca-3.7.1/bin/mcTracer --mctx --odname mctrace_power_v046 --name case12_power_v046 /opt/conda/bin/python -u "$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py" 12 > "$rep/mctracer.log" 2>&1
code=$?;echo "$code" > "$rep/mctracer.exit"
exit "$code"
