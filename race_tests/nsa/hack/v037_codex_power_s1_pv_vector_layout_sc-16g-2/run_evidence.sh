#!/bin/bash
set -u
cd /root/tilelang-metax
id=v037_codex_power_s1_pv_vector_layout_sc-16g-2
r=$PWD/race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=$PWD:$PWD/race_tests/nsa
bash race_tests/nsa/hack/$id/run_llvm.sh
bash race_tests/nsa/hack/$id/run_profile_bundle.sh
