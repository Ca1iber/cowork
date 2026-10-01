#!/bin/bash
set -u
base=/root/tilelang-metax
id=v033_codex_power_s4_checkpoint_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
cd "$base"
sha256sum race_tests/nsa/submission.py > "$rep/rollback_source_before.txt"
python /tmp/nsa_validate_oj_submission.py "$base/race_tests/nsa/submission.py" > "$rep/rollback_static.log" 2>&1
code=$?;echo "$code" > "$rep/rollback_static.exit"
if [ "$code" != 0 ];then exit "$code";fi
env -u NSA_CASES MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=$base/race_tests/nsa/submission.py NSA_RESULTS_PATH=$rep/rollback_exact_all14_sc-16g-2.csv /opt/conda/bin/python -u "$base/race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py" > "$rep/rollback_exact_all14.log" 2>&1
code=$?;echo "$code" > "$rep/rollback_exact_all14.exit"
sha256sum race_tests/nsa/submission.py > "$rep/rollback_source_after.txt"
exit "$code"
