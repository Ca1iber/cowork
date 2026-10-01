#!/bin/bash
set -u
base=/root/tilelang-metax
id=v044_codex_power_s8_value_pack_sc-16g-2
rep=$base/race_tests/nsa/rep/$id
cd "$base"
bash "$base/race_tests/nsa/hack/$id/run_llvm.sh"
mx-smi > "$rep/machine_snapshot.txt"
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$base:$base/race_tests/nsa NSA_VARIANT_SOURCE=/tmp/nsa_power_v044_value_pack.py
mkdir -p "$rep/mctrace"
cd "$rep/mctrace"
timeout 90s /opt/maca-3.7.1/bin/mcTracer --mctx --odname mctrace_power_v044 --name case12_power_v044 /opt/conda/bin/python -u "$base/race_tests/nsa/hack/v004_codex_power_s1_reprofile_sc-16g-2/profile_variant_v28.py" 12 > "$rep/mctracer.log" 2>&1
echo $? > "$rep/mctracer.exit"
