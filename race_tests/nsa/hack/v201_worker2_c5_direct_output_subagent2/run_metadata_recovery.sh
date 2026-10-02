#!/bin/bash
cd /root/tilelang-metax
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
python race_tests/nsa/hack/v201_worker2_c5_direct_output_subagent2/compile_metadata.py
code=$?
printf "%s\n" "$code" > race_tests/nsa/rep/v201_worker2_c5_direct_output_subagent2/metadata_recovery.exit
exit "$code"
