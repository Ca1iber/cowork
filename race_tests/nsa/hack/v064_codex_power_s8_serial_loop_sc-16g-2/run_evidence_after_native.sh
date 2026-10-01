#!/bin/bash
set -eu
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v064_codex_power_s8_serial_loop_sc-16g-2
test "$(cat "$r/paired_all14.exit")" = 0
bash race_tests/nsa/hack/v064_codex_power_s8_serial_loop_sc-16g-2/run_export_all14.sh
bash race_tests/nsa/hack/v064_codex_power_s8_serial_loop_sc-16g-2/run_mcprof.sh
