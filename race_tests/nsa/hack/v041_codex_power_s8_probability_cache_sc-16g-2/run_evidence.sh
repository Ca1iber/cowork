#!/bin/bash
set -u
cd /root/tilelang-metax
id=v041_codex_power_s8_probability_cache_sc-16g-2
r=$PWD/race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$PWD:$PWD/race_tests/nsa
/opt/conda/bin/python -u race_tests/nsa/hack/$id/run_pair_case12.py > "$r/paired.log" 2>&1
echo $? > "$r/paired.exit"
bash race_tests/nsa/hack/$id/run_llvm.sh
bash race_tests/nsa/hack/$id/run_profile_bundle.sh
