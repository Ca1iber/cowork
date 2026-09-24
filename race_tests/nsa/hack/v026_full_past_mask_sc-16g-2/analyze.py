import csv, statistics
from pathlib import Path
rep=Path('/root/tilelang-metax/race_tests/nsa/rep/v026_full_past_mask_sc-16g-2')
def read(path):
    return {int(r['idx']):float(r['latency_ms']) for r in csv.DictReader(path.open())}
files={
    'v026':[rep/'screen_05_v026.csv',rep/'screen_07_v026.csv',rep/'confirm_v026.csv'],
    'v023':[rep/'screen_06_v023.csv',rep/'screen_08_v023.csv',rep/'confirm_v023.csv'],
}
rows=[]
for case in (6,12):
    a=[read(p)[case] for p in files['v023']]
    b=[read(p)[case] for p in files['v026']]
    rows.append(dict(case=case,v023_runs='/'.join(f'{x:.6f}' for x in a),v026_runs='/'.join(f'{x:.6f}' for x in b),v023_median_ms=f'{statistics.median(a):.6f}',v026_median_ms=f'{statistics.median(b):.6f}',latency_change_pct=f'{(statistics.median(b)/statistics.median(a)-1)*100:.3f}'))
with (rep/'target_median_summary.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=rows[0].keys());w.writeheader();w.writerows(rows)
a=read(rep/'official_v023.csv');b=read(rep/'official_v026.csv')
rows=[dict(case=i,v023_ms=f'{a[i]:.6f}',v026_ms=f'{b[i]:.6f}',latency_change_pct=f'{(b[i]/a[i]-1)*100:.3f}') for i in range(1,15)]
with (rep/'official_comparison.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=rows[0].keys());w.writeheader();w.writerows(rows)
print('target', (rep/'target_median_summary.csv').read_text())
print('official_mean',statistics.mean(a.values()),statistics.mean(b.values()))
