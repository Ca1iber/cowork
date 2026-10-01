#!/bin/bash
set -u
base=/root/tilelang-metax
id=v049_codex_power_s1_cache_entry_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=$base/race_tests/nsa/submission/$id/submission.py
mkdir -p "$rep/mctrace"
cd "$rep/mctrace"
timeout 120s /opt/maca-3.7.1/bin/mcTracer --mctx --odname mctrace_power_v049 --name case6_power_v049 /opt/conda/bin/python -u "$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py" 6 > "$rep/mctracer.log" 2>&1
code=$?;echo "$code" > "$rep/mctracer.exit"
exit "$code"
