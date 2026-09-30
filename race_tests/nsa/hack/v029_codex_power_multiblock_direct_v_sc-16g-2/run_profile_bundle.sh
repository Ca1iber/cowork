#!/bin/bash
set -u
base=/root/tilelang-metax
id=v029_codex_power_multiblock_direct_v_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
cd "$base"
mx-smi > "$rep/machine_snapshot.txt"
bash "$base/race_tests/nsa/hack/$id/run_mcprof.sh"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=$base/race_tests/nsa/experiments/$id/candidate.py
mkdir -p "$rep/mctrace"
cd "$rep/mctrace"
timeout 90s /opt/maca-3.7.1/bin/mcTracer --mctx --odname mctrace_power_v029 --name case12_power_v029 /opt/conda/bin/python -u "$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py" 12 > "$rep/mctracer.log" 2>&1
echo "$?" > "$rep/mctracer.exit"
echo DONE
