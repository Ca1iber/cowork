from pathlib import Path
import json,csv,math
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2')
assert (r/'profile.exit').read_text().strip()=='0'
plan=json.loads((r/'diagnostic_plan.json').read_text())
metrics={'Dispatched waves':'waves','Achieved waves':'achieved_waves_raw','L2C Hit Rate':'l2_hit_pct','Global Memory Read bytes':'read_bytes','Global Memory Write bytes':'write_bytes','AP MTE Duty ratio':'mte_pct','AP MMA Duty ratio':'mma_pct','shared memory access efficiency':'shared_nonconflict_pct','average conflict cycles per instruction':'conflict_cycles','average latency per load instruction':'WG_load_latency_cycles'}
rows=[];checks=[];context=[]
for ci in plan['profile_case_order']:
 scope=plan['profile_scope'][str(ci)]
 for label in plan['profile_variant_order']:
  out=r/f'mcprof_case{ci}_{label}';assert (out/'exit_code.txt').read_text().strip()=='0'
  files=sorted((out/'report_bundle').glob('*native_sparse_attention_kernel.txt.json'))
  assert len(files)==2,(ci,label,[str(x) for x in files])
  for i,f in enumerate(files,1):
   data=json.loads(f.read_text());raw={x['name']:x['value'] for a in data.values() for x in a if x.get('name') in metrics}
   row={'case':ci,'variant':label,'sample':i}
   for name,col in metrics.items():
    try:
     val=float(str(raw[name]).replace('%','').replace('byte','').replace(',',''));row[col]=val if math.isfinite(val) else None
    except (KeyError,ValueError):row[col]=None
   row['unavailable_raw']={name:raw.get(name) for name,col in metrics.items() if row[col] is None};rows.append(row)
   residual=None if row['write_bytes'] is None else row['write_bytes']-scope['output_payload_bytes']
   valid=row['waves']==scope['dispatched_waves'] and residual is not None and 0<=residual<=512
   checks.append({'case':ci,'variant':label,'sample':i,'waves_expected':scope['dispatched_waves'],'waves_observed':row['waves'],'output_payload_bytes':scope['output_payload_bytes'],'unattributed_write_bytes':residual,'scope_consistent':valid,'necessary_not_exclusive':True})
   # Original scope failure is retained; this parser only records all raw observations.
   for group,items in data.items():
    for x in items:
     if x.get('name') in ['average latency per load instruction','shared memory access efficiency','average conflict cycles per instruction']:context.append({'case':ci,'variant':label,'sample':i,'group':group,'metric':x})
assert len(rows)==12
(r/'mcprof_forensic_summary.json').write_text(json.dumps(rows,indent=2)+'\n')
(r/'mcprof_forensic_scope_checks.json').write_text(json.dumps(checks,indent=2)+'\n')
(r/'mcprof_forensic_WG_context.json').write_text(json.dumps({'records':context,'interpretation':'WG-load is Workgroup Memory load issue-to-memopsdone, not DRAM; achieved waves raw is not occupancy; read_bytes counter not guaranteed HBM traffic'},indent=2)+'\n')
with (r/'mcprof_forensic_summary_subagent2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=rows[0].keys());w.writeheader();w.writerows(rows)
print(json.dumps(rows,indent=2))
