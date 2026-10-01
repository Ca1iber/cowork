#!/bin/bash
set -u
cd /root/tilelang-metax
id=v080_codex_power_s1_d64_dispatch_sc-16g-2
r=/root/tilelang-metax/race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa NSA_VARIANT_SOURCE=/root/tilelang-metax/race_tests/nsa/submission/$id/submission.py
for ci in 13 14;do
 NSA_CASES=$ci NSA_RESULTS_PATH="$r/archive_retry_case${ci}_sc-16g-2.csv" /opt/conda/bin/python -u race_tests/nsa/hack/v000_codex_power_baseline_sc-16g-2/run_variant.py > "$r/archive_retry_case$ci.log" 2>&1 &
 native_pid=$!
 /opt/conda/bin/python race_tests/nsa/hack/$id/monitor_recovery_memory.py "$native_pid" "$ci" &
 monitor_pid=$!
 wait "$native_pid";code=$?;echo "$code" > "$r/archive_retry_case$ci.exit";wait "$monitor_pid"
 if [ "$code" != 0 ];then echo "$code" > "$r/archive_recovery.exit";exit "$code";fi
done
/opt/conda/bin/python - <<'MERGE'
from pathlib import Path
import csv
r=Path('race_tests/nsa/rep/v080_codex_power_s1_d64_dispatch_sc-16g-2');rows=[]
for ci in range(1,15):
 prefix='archive_case' if ci<=12 else 'archive_retry_case';f=r/(prefix+str(ci)+'_sc-16g-2.csv');x=list(csv.DictReader(f.open()));assert len(x)==1 and x[0]['status']=='PASS' and int(x[0]['case'])==ci;rows+=x
with (r/'archive_native_all14_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=rows[0].keys());w.writeheader();w.writerows(rows)
MERGE
code=$?;echo "$code" > "$r/archive_recovery.exit";exit "$code"
