#!/bin/bash
set -u
cd /root/tilelang-metax
r=/root/tilelang-metax/race_tests/nsa/rep/v077_codex_power_s8_output_pair_sc-16g-2
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for case_index in {1..14};do
 NSA_EXPORT_CASE_INDEX=$case_index /opt/conda/bin/python -u race_tests/nsa/hack/v077_codex_power_s8_output_pair_sc-16g-2/export_all14.py > "$r/export_case${case_index}.log" 2>&1
 code=$?;echo "$code" > "$r/export_case${case_index}.exit"
 if [ "$code" != 0 ];then echo "$code" > "$r/export_all14.exit";exit "$code";fi
done
/opt/conda/bin/python race_tests/nsa/hack/v077_codex_power_s8_output_pair_sc-16g-2/merge_codegen_cases.py > "$r/export_all14.log" 2>&1
code=$?;echo "$code" > "$r/export_all14.exit"
exit "$code"
