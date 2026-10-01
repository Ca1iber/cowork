#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v079_codex_power_s1_case4_dense_sc-16g-2
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for source_label in baseline_v28 power_v079 parent_v077;do
 NSA_EXPORT_SOURCE_LABEL=$source_label /opt/conda/bin/python -u race_tests/nsa/hack/v079_codex_power_s1_case4_dense_sc-16g-2/export_all14.py > "$r/export_source_${source_label}.log" 2>&1
 code=$?;echo "$code" > "$r/export_source_${source_label}.exit"
 if [ "$code" != 0 ];then echo "$code" > "$r/export_all14.exit";exit "$code";fi
done
/opt/conda/bin/python race_tests/nsa/hack/v079_codex_power_s1_case4_dense_sc-16g-2/merge_codegen_sources.py > "$r/export_all14.log" 2>&1
code=$?;echo "$code" > "$r/export_all14.exit"
exit "$code"
