#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
export MACA_PATH=/opt/maca PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
rep=race_tests/nsa/rep/v027_v_timing_directk_sc-16g-2
printf 'run\tvariant\tsource_sha256\texit_code\n' > "$rep/screen_progress.tsv"
run=0
for variant in v026 pre_qk v026 pre_softmax v026; do
  run=$((run+1))
  if [ "$variant" = v026 ]; then source="$PWD/race_tests/nsa/submission/v026_full_past_mask_sc-16g-2/submission.py"; else source="/tmp/nsa_v027/$variant.py"; fi
  tag=$(printf 'screen_%02d_%s' "$run" "$variant")
  if NSA_VARIANT_SOURCE="$source" NSA_RESULTS_PATH="$PWD/$rep/$tag.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v012_qk_kpack_sc-16g-2/run_target.py > "$rep/$tag.log" 2>&1; then result=0; else result=$?; fi
  printf '%s\t%s\t%s\t%s\n' "$run" "$variant" "$(sha256sum "$source" | cut -d ' ' -f1)" "$result" >> "$rep/screen_progress.tsv"
done
