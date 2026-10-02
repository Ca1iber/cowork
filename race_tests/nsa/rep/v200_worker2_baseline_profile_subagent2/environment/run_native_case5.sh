#!/bin/bash
cd /root/tilelang-metax
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
export NSA_VARIANT_SOURCE=/root/tilelang-metax/race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py
export NSA_RESULTS_PATH=/tmp/nsa_worker2_environment/native_case5.csv
export NSA_CASES=5
python race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py > /tmp/nsa_worker2_environment/native_case5.log 2>&1
code=$?
printf "%s\n" "$code" > /tmp/nsa_worker2_environment/native_case5.exit
exit "$code"
