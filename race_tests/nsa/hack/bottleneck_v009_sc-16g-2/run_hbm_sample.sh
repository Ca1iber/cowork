#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
rep=race_tests/nsa/rep/bottleneck_v009_sc-16g-2
export MACA_PATH=/opt/maca
export PYTHONWARNINGS=ignore
export PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
for case in 6 12; do
    ready="$rep/hbm_case$case.ready"
    rm -f "$ready"
    NSA_PROFILE_MODE=sustain NSA_SUSTAIN_SECONDS=8 NSA_READY_FILE="/root/tilelang-metax/$ready" /opt/conda/bin/python -u race_tests/nsa/hack/bottleneck_v009_sc-16g-2/profile_case.py "$case" > "$rep/hbm_case$case.workload.log" 2>&1 &
    workload=$!
    while [ ! -f "$ready" ] && kill -0 "$workload" 2>/dev/null; do sleep 0.2; done
    if [ -f "$ready" ]; then
        mx-smi --show-clock -i 0 > "$rep/hbm_case$case.clock.log" 2>&1 || true
        mx-smi --show-ap-usage -i 0 > "$rep/hbm_case$case.ap.log" 2>&1 || true
        timeout 8s mx-smi --show-hbm-bandwidth -i 0 -l 100 > "$rep/hbm_case$case.mxsmi.log" 2>&1 || true
    fi
    wait "$workload"
    echo "$?" > "$rep/hbm_case$case.exit"
done
