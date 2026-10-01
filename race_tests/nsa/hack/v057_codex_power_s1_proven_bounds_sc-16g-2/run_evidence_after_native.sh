#!/bin/bash
set -eu
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v057_codex_power_s1_proven_bounds_sc-16g-2
test "$(cat "$r/paired_all14.exit")" = 0
bash race_tests/nsa/hack/v057_codex_power_s1_proven_bounds_sc-16g-2/run_export_all14.sh
bash race_tests/nsa/hack/v057_codex_power_s1_proven_bounds_sc-16g-2/run_mcprof.sh
