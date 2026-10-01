#!/bin/bash
set -eu
cd /root/tilelang-metax
h=/root/tilelang-metax/race_tests/nsa/hack/v079_codex_power_s1_case4_dense_sc-16g-2
r=/root/tilelang-metax/race_tests/nsa/rep/v079_codex_power_s1_case4_dense_sc-16g-2
test "$(cat "$r/paired_all14.exit")" = 0
test "$(cat "$r/paired_risk.exit")" = 0
test "$(cat "$r/export_all14.exit")" = 0
test "$(cat "$r/oj_static_all14.exit")" = 0
bash "$h/run_mcprof.sh"
/opt/conda/bin/python "$h/analyze_profile.py" > "$r/profile_analysis.log" 2>&1
bash "$h/run_archive_native.sh"
echo 0 > "$r/evidence_stage.exit"
