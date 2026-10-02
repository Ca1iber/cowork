#!/bin/bash
cd /root/tilelang-metax
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
python race_tests/nsa/hack/v202_worker2_c8_two_query_cta_subagent2/compile_metadata.py
code=$?
printf "%s\n" "$code" > race_tests/nsa/rep/v202_worker2_c8_two_query_cta_subagent2/metadata.exit
exit "$code"
