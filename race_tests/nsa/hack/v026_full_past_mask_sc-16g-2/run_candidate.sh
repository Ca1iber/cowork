#!/bin/bash
set -eu
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
rep=race_tests/nsa/rep/v026_full_past_mask_sc-16g-2
NSA_VARIANT_SOURCE=/tmp/nsa_v026/submission.py /opt/conda/bin/python -u race_tests/nsa/hack/v026_full_past_mask_sc-16g-2/run_edge.py > "$rep/edge.log" 2>&1
/opt/conda/bin/python /tmp/nsa_validate_oj_submission.py /tmp/nsa_v026/submission.py > "$rep/oj_source_static.log" 2>&1
bash race_tests/nsa/hack/v026_full_past_mask_sc-16g-2/run_screen.sh > "$rep/screen_driver.log" 2>&1
