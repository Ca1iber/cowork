#!/bin/bash
set -eu
cd /root/tilelang-metax
h=/root/tilelang-metax/race_tests/nsa/hack/v070_codex_power_s1_stream_pv_operand_sc-16g-2
r=/root/tilelang-metax/race_tests/nsa/rep/v070_codex_power_s1_stream_pv_operand_sc-16g-2
test "$(cat "$r/paired_case6.exit")" = 0
bash "$h/run_mcprof.sh"
/opt/conda/bin/python "$h/analyze_profile.py" > "$r/profile_analysis.log" 2>&1
echo 0 > "$r/profile_evidence.exit"
