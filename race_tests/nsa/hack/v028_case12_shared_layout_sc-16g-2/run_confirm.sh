#!/bin/bash
set -eu
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
rep=race_tests/nsa/rep/v028_case12_shared_layout_sc-16g-2
for variant in v_linear v026 v_linear v026; do
 n=$(find "$rep" -maxdepth 1 -name 'confirm_*.csv' | wc -l)
 tag=$(printf 'confirm_%02d_%s' "$((n+1))" "$variant")
 if [ "$variant" = v026 ]; then source="$PWD/race_tests/nsa/submission/v026_full_past_mask_sc-16g-2/submission.py"; else source=/tmp/nsa_v028/v_linear.py; fi
 NSA_VARIANT_SOURCE="$source" NSA_RESULTS_PATH="$PWD/$rep/$tag.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v012_qk_kpack_sc-16g-2/run_target.py > "$rep/$tag.log" 2>&1
 printf '%s\t%s\t%s\n' "$tag" "$variant" "$(sha256sum "$source" | cut -d ' ' -f1)" >> "$rep/confirm_progress.tsv"
done
