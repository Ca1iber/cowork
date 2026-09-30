#!/bin/bash
set -u
base=/root/tilelang-metax
id=v024_codex_power_host_kernel_cache_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
bash "$base/race_tests/nsa/hack/$id/run_codegen.sh" > "$rep/codegen.log" 2>&1
echo "$?" > "$rep/codegen.exit"
bash "$base/race_tests/nsa/hack/$id/run_small_profile.sh"
mx-smi > "$rep/machine_snapshot.txt"
echo DONE
