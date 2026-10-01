import csv,json
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v060_codex_power_s1_output_pair_swap_sc-16g-2')
metrics={'Dispatched waves':'waves','Achieved waves':'achieved_waves_raw','L2C Hit Rate':'l2_hit_pct','Global Memory Read bytes':'read_bytes','Global Memory Write bytes':'write_bytes','AP MTE Duty ratio':'mte_pct','AP MMA Duty ratio':'mma_pct','shared memory access efficiency':'shared_nonconflict_pct','average conflict cycles per instruction':'conflict_cycles','average latency per load instruction':'load_latency_cycles'}
p=[]
for label in ('power_v060','parent_v059'):
 d=r/f'mcprof_{label}';assert (d/'exit_code.txt').read_text().strip()=='0'
 files=sorted((d/'report_bundle').glob('*native_sparse_attention_kernel.txt.json'));assert len(files)==2
 for i,f in enumerate(files,1):
  data=json.loads(f.read_text());raw={x['name']:x['value'] for a in data.values() for x in a if x.get('name') in metrics}
  row={'variant':label,'sample':i}

  for name,col in metrics.items():
   try: row[col]=float(str(raw[name]).replace('%','').replace('byte','').replace(',',''))
   except (KeyError,ValueError): row[col]=None
  row['unavailable_raw']={name:raw.get(name) for name,col in metrics.items() if row[col] is None};p.append(row)
with (r/'mcprof_summary_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=p[0].keys());w.writeheader();w.writerows(p)
(r/'mcprof_summary.json').write_text(json.dumps(p,indent=2)+'\n');print(p)

checks=[]
for row in p:
 valid=row['waves']==8192 and row['write_bytes'] is not None and abs(row['write_bytes']-33554432)<33554432*0.001
 checks.append({'variant':row['variant'],'sample':row['sample'],'expected_waves':8192,'observed_waves':row['waves'],'observed_write_bytes':row['write_bytes'],'consistent_with_single_attention_launch_scope':valid,'counter_interpretation':'launch footprint consistency is necessary, not an exclusive scope guarantee; achieved waves raw is not occupancy'})
(r/'mcprof_scope_checks.json').write_text(json.dumps(checks,indent=2)+'\n');print(checks)
