#!/bin/bash
set -eu
cd /root/tilelang-metax
export MACA_PATH=/opt/maca PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
id=v026_full_past_mask_sc-16g-2
rep=race_tests/nsa/rep/$id
for variant in v026 v023 v026 v023; do
  if [ "$variant" = v026 ]; then source=/tmp/nsa_v026/submission.py; else source="$PWD/race_tests/nsa/submission/v023_case6_direct_k_sc-16g-2/submission.py"; fi
  run=$(find "$rep" -maxdepth 1 -name 'screen_*.csv' | wc -l)
  tag=$(printf 'screen_%02d_%s' "$((run+1))" "$variant")
  NSA_VARIANT_SOURCE="$source" NSA_RESULTS_PATH="$PWD/$rep/$tag.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v012_qk_kpack_sc-16g-2/run_target.py > "$rep/$tag.log" 2>&1
  printf '%s\t%s\t%s\n' "$tag" "$variant" "$(sha256sum "$source" | cut -d ' ' -f1)" >> "$rep/screen_progress.tsv"
done
