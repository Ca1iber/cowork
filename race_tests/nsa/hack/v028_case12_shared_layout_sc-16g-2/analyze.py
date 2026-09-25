import csv,json,re,statistics
from pathlib import Path
rep=Path('/root/tilelang-metax/race_tests/nsa/rep/v028_case12_shared_layout_sc-16g-2')
def read(p):return {int(r['idx']):float(r['latency_ms']) for r in csv.DictReader(p.open())}
files={'v_linear':[rep/'screen_04_v_linear.csv',rep/'confirm_01_v_linear.csv',rep/'confirm_03_v_linear.csv'],'v026':[rep/'screen_01_v026.csv',rep/'screen_03_v026.csv',rep/'screen_05_v026.csv',rep/'confirm_02_v026.csv',rep/'confirm_04_v026.csv']}
rows=[]
for case in (6,12):
 a=[read(p)[case] for p in files['v026']];b=[read(p)[case] for p in files['v_linear']]
 rows.append(dict(case=case,v026_runs='/'.join(f'{x:.6f}' for x in a),v028_runs='/'.join(f'{x:.6f}' for x in b),v026_median_ms=f'{statistics.median(a):.6f}',v028_median_ms=f'{statistics.median(b):.6f}',latency_change_pct=f'{(statistics.median(b)/statistics.median(a)-1)*100:.3f}'))
with (rep/'target_median_summary.csv').open('w',newline='') as f:w=csv.DictWriter(f,fieldnames=rows[0].keys());w.writeheader();w.writerows(rows)
a=read(rep/'official_v026.csv');b=read(rep/'official_v_linear.csv')
rows=[dict(case=i,v026_ms=f'{a[i]:.6f}',v028_ms=f'{b[i]:.6f}',latency_change_pct=f'{(b[i]/a[i]-1)*100:.3f}') for i in range(1,15)]
with (rep/'official_comparison.csv').open('w',newline='') as f:w=csv.DictWriter(f,fieldnames=rows[0].keys());w.writeheader();w.writerows(rows)
def get(d,name):
 for section in d.values():
  for entry in section:
   if entry.get('name')==name:return entry['value']
 raise KeyError(name)
def num(v):return float(str(v).replace('%','').replace('byte','').replace(',',''))
rows=[]
for variant in ('v026','v028'):
 d=json.loads((rep/f'mcprof_{variant}/report_bundle/report.txt.json').read_text())
 rows.append(dict(variant=variant,l2_hit_pct=num(get(d,'L2C Hit Rate')),read_mb_per_call=num(get(d,'Global Memory Read bytes'))/20/1e6,write_mb_per_call=num(get(d,'Global Memory Write bytes'))/20/1e6,shared_nonconflict_pct=num(get(d,'shared memory access efficiency')),conflict_extra_cycles=num(get(d,'average conflict cycles per instruction')),wg_load_latency_cycles=num(get(d,'average latency per load instruction')),mte_duty_pct=num(get(d,'AP MTE Duty ratio')),mma_duty_pct=num(get(d,'AP MMA Duty ratio'))))
with (rep/'profiler_summary.csv').open('w',newline='') as f:w=csv.DictWriter(f,fieldnames=rows[0].keys());w.writeheader();w.writerows(rows)
text=(rep/'hbm_v028_case12.mxsmi.log').read_text(errors='replace')
values=[int(x) for x in re.findall(r'throughput\s+:\s+(\d+) MBytes/s',text)]
active=[v for v in values if v>50000]
with (rep/'hbm_summary.txt').open('w') as f:f.write(f'case12 active_samples={len(active)}/{len(values)} median_MBps={statistics.median(active)} min_MBps={min(active)} max_MBps={max(active)}\n')
print((rep/'target_median_summary.csv').read_text())
print((rep/'profiler_summary.csv').read_text())
print((rep/'hbm_summary.txt').read_text())
print('official_mean',statistics.mean(a.values()),statistics.mean(b.values()))
