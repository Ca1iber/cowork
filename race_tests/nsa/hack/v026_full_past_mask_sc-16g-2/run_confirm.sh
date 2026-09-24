#!/bin/bash
set -eu
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
rep=race_tests/nsa/rep/v026_full_past_mask_sc-16g-2
for variant in v023 v026; do
 if [ "$variant" = v023 ]; then source="$PWD/race_tests/nsa/submission/v023_case6_direct_k_sc-16g-2/submission.py"; else source="$PWD/race_tests/nsa/submission/v026_full_past_mask_sc-16g-2/submission.py"; fi
 NSA_VARIANT_SOURCE="$source" NSA_RESULTS_PATH="$PWD/$rep/confirm_${variant}.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v012_qk_kpack_sc-16g-2/run_target.py > "$rep/confirm_${variant}.log" 2>&1
 echo $? > "$rep/confirm_${variant}.exit"
done
