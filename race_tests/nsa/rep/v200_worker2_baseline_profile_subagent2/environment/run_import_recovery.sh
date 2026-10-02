#!/bin/bash
cd /root/tilelang-metax
export PYTHONPATH=/root/tilelang-metax
python /tmp/nsa_worker2_environment/import_probe.py > /tmp/nsa_worker2_environment/import_recovery.log 2>&1
code=$?
printf "%s\n" "$code" > /tmp/nsa_worker2_environment/import_recovery.exit
exit "$code"
