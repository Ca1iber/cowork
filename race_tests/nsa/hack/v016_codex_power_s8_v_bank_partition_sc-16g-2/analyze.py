import csv
import json
import statistics
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v016_codex_power_s8_v_bank_partition_sc-16g-2')
rows=list(csv.DictReader((r/'paired_case12_sc-16g-2.csv').open()))
assert len(rows)==12 and all(x['status']=='PASS' for x in rows)
medians={v:statistics.median(float(x['latency_ms'])*1000 for x in rows if x['variant']==v) for v in ('v013','v016','v028')}
(r/'paired_summary.json').write_text(json.dumps({'reference':'12/12 PASS','medians_us':medians,'v016_vs_v013_pct':(medians['v016']/medians['v013']-1)*100,'v016_vs_v028_pct':(medians['v016']/medians['v028']-1)*100},indent=2)+'\n')
metrics={'Dispatched waves':'waves','L2C Hit Rate':'l2_hit_pct','Global Memory Read bytes':'read_bytes','Global Memory Write bytes':'write_bytes','AP MTE Duty ratio':'mte_pct','AP MMA Duty ratio':'mma_pct','shared memory access efficiency':'shared_nonconflict_pct','average conflict cycles per instruction':'conflict_cycles','average latency per load instruction':'load_latency_cycles'}
p=[]
for label in ('v016','v028'):
 d=r/f'mcprof_{label}';assert (d/'exit_code.txt').read_text().strip()=='0'
 files=sorted((d/'report_bundle').glob('*native_sparse_attention_kernel.txt.json'));assert len(files)==2
 for i,f in enumerate(files,1):
  data=json.loads(f.read_text());raw={x['name']:x['value'] for a in data.values() for x in a if x.get('name') in metrics}
  row={'variant':label,'sample':i}
  row.update({col:float(str(raw[name]).replace('%','').replace('byte','').replace(',','')) for name,col in metrics.items()});p.append(row)
with (r/'mcprof_summary_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=p[0].keys());w.writeheader();w.writerows(p)
print(medians)
