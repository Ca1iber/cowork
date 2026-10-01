#!/bin/bash
set -eu
cd /root/tilelang-metax
id=v080_codex_power_s1_d64_dispatch_sc-16g-2
r=race_tests/nsa/rep/$id
export MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONWARNINGS=ignore PYTHONPATH=/root/tilelang-metax:/root/tilelang-metax/race_tests/nsa
/opt/conda/bin/python - <<'SELECT'
from pathlib import Path
from decimal import Decimal
import json
r=Path('race_tests/nsa/rep/v080_codex_power_s1_d64_dispatch_sc-16g-2');s=json.loads((r/'formal_all14_summary.json').read_text());ids=[x['case'] for x in s['cases'] if Decimal(x['vs_v28_pct'])>0 or Decimal(x['vs_parent_pct'])>0];(r/'risk_selection.json').write_text(json.dumps({'cases':ids,'rule':'any positive formal Decimal delta versus original or parent; no manual dropping; single fixed B-I-C-C-I-B x2'},indent=2)+'\n');(r/'risk_cases.txt').write_text(' '.join(map(str,ids))+'\n')
SELECT
for ci in $(cat "$r/risk_cases.txt");do
 set +e
 NSA_PAIR_CASE_INDEX=$ci NSA_PAIR_PHASE=risk /opt/conda/bin/python -u race_tests/nsa/hack/$id/run_formal_case.py > "$r/risk_case$ci.log" 2>&1
 code=$?;echo "$code" > "$r/risk_case$ci.exit";set -e
 if [ "$code" != 0 ];then exit "$code";fi
done
/opt/conda/bin/python race_tests/nsa/hack/$id/analyze_risk.py > "$r/risk_analysis.log" 2>&1
