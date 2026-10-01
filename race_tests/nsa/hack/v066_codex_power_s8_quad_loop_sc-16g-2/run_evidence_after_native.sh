#!/bin/bash
set -eu
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v066_codex_power_s8_quad_loop_sc-16g-2
test "$(cat "$r/paired_all14.exit")" = 0
bash race_tests/nsa/hack/v066_codex_power_s8_quad_loop_sc-16g-2/run_export_all14.sh
bash race_tests/nsa/hack/v066_codex_power_s8_quad_loop_sc-16g-2/run_mcprof.sh
