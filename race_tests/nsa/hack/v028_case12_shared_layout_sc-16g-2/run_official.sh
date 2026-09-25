#!/bin/bash
set -eu
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
rep=race_tests/nsa/rep/v028_case12_shared_layout_sc-16g-2
for variant in v_linear v026; do
 if [ "$variant" = v026 ]; then source="$PWD/race_tests/nsa/submission/v026_full_past_mask_sc-16g-2/submission.py"; else source="$PWD/race_tests/nsa/submission/v028_case12_shared_layout_sc-16g-2/submission.py"; fi
 NSA_VARIANT_SOURCE="$source" NSA_RESULTS_PATH="$PWD/$rep/official_${variant}.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v011_qk_layout_sc-16g-2/run_variant.py > "$rep/official_${variant}.log" 2>&1
 echo $? > "$rep/official_${variant}.exit"
done
