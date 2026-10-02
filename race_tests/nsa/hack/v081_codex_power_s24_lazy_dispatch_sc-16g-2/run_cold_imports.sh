#!/bin/bash
set -u
cd /root/tilelang-metax
id=v081_codex_power_s24_lazy_dispatch_sc-16g-2
r=race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for label in parent_v080 power_v081;do
 if [ "$label" = parent_v080 ];then source=/root/tilelang-metax/race_tests/nsa/submission/v080_codex_power_s1_d64_dispatch_sc-16g-2/submission.py;else source=/tmp/nsa_power_v081_s24_lazy.py;fi
 /opt/conda/bin/python race_tests/nsa/hack/$id/cold_import.py "$label" "$source" > "$r/cold_import_${label}.log" 2>&1
 code=$?;echo "$code" > "$r/cold_import_${label}.exit"
 if [ "$code" != 0 ];then exit "$code";fi
done
