#!/bin/bash
set -u
base=/root/tilelang-metax
id=v026_codex_power_multiblock_warp_sync_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
cd "$base"
mx-smi > "$rep/machine_snapshot.txt"
bash "$base/race_tests/nsa/hack/$id/run_mcprof.sh"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa
export NSA_VARIANT_SOURCE=$base/race_tests/nsa/experiments/$id/candidate.py
profile=$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py
mkdir -p "$rep/mctrace"
cd "$rep/mctrace"
timeout 90s /opt/maca-3.7.1/bin/mcTracer --mctx --odname mctrace_v026 --name case12_v026 /opt/conda/bin/python -u "$profile" 12 > "$rep/mctracer.log" 2>&1
echo "$?" > "$rep/mctracer.exit"
cd "$base"
NSA_PROFILE_MODE=torchprof NSA_TRACE_PATH=$rep/torchprof_case12.json /opt/conda/bin/python -u "$profile" 12 > "$rep/torchprof.log" 2>&1
echo "$?" > "$rep/torchprof.exit"
echo DONE
