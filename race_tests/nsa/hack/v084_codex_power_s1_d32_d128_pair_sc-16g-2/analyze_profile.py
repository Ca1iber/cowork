from pathlib import Path
import json,csv,math
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v084_codex_power_s1_d32_d128_pair_sc-16g-2');metrics={'Dispatched waves':'waves','Achieved waves':'achieved_waves_raw','L2C Hit Rate':'l2_hit_pct','Global Memory Read bytes':'read_bytes','Global Memory Write bytes':'write_bytes','AP MTE Duty ratio':'mte_pct','AP MMA Duty ratio':'mma_pct','shared memory access efficiency':'shared_nonconflict_pct','average conflict cycles per instruction':'conflict_cycles','average latency per load instruction':'WG_load_latency_cycles'};rows=[];checks=[];context=[]
for ci,waves,payload in [(1,64,65536),(3,256,1048576)]:
 for label in ['power_v084','parent_v081']:
  d=r/('mcprof_case'+str(ci)+'_'+label);assert (d/'exit_code.txt').read_text().strip()=='0';files=sorted((d/'report_bundle').glob('*native_sparse_attention_kernel.txt.json'));assert len(files)==2
  for i,f in enumerate(files,1):
   data=json.loads(f.read_text());raw={x['name']:x['value'] for a in data.values() for x in a if x.get('name') in metrics};row={'case':ci,'variant':label,'sample':i}
   for name,col in metrics.items():
    try:
     val=float(str(raw[name]).replace('%','').replace('byte','').replace(',',''));row[col]=val if math.isfinite(val) else None
    except (KeyError,ValueError):row[col]=None
   row['unavailable_raw']={name:raw.get(name) for name,col in metrics.items() if row[col] is None};rows.append(row);valid=row['waves']==waves and row['write_bytes'] is not None and 0<=row['write_bytes']-payload<=512;checks.append({'case':ci,'variant':label,'sample':i,'expected_waves':waves,'observed_waves':row['waves'],'output_payload':payload,'unattributed_counter_residual':None if row['write_bytes'] is None else row['write_bytes']-payload,'consistent_with_single_attention_launch_scope':valid,'necessary_not_exclusive':True});assert valid,checks[-1]
   for group,items in data.items():
    for x in items:
     if x.get('name') in ['average latency per load instruction','shared memory access efficiency','average conflict cycles per instruction']:context.append({'case':ci,'variant':label,'sample':i,'group':group,'metric':x})
(r/'mcprof_summary.json').write_text(json.dumps(rows,indent=2)+'\n');(r/'mcprof_scope_checks.json').write_text(json.dumps(checks,indent=2)+'\n');(r/'WG_raw_metric_context.json').write_text(json.dumps({'records':context,'zeroaccess_interpretation':'reported100eff0WGload not interpreted usableeff or globalzero','WG-load definition':'Workgroup Memory issue-to-memopsdone'},indent=2)+'\n')
with (r/'mcprof_summary_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=rows[0].keys());w.writeheader();w.writerows(rows)
print(rows);print(checks)
