#!/bin/bash
set -u
base=/root/tilelang-metax
id=v049_codex_power_s1_cache_entry_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
cd "$base"
env -u NSA_CASES MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=$base/race_tests/nsa/submission/$id/submission.py NSA_RESULTS_PATH=$rep/archive_all14_sc-16g-2.csv /opt/conda/bin/python -u "$base/race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py" > "$rep/archive_all14.log" 2>&1
code=$?;echo "$code" > "$rep/archive_all14.exit"
exit "$code"
