import csv, json, statistics
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa/rep/profile_v023_case6_case12_sc-16g-2')
def get(d, name):
    for section in d.values():
        for entry in section:
            if entry.get('name') == name:
                return entry['value']
    raise KeyError(name)
def num(v):
    return float(str(v).replace('%','').replace('byte','').replace(',',''))
rows=[]
for variant in ('v009','v023'):
    for case in (6,12):
        prefix=f'{variant}_case{case}'
        measure=(root/f'measure_{prefix}.log').read_text().split('avg_ms=')[-1].split()[0]
        data=json.loads((root/f'trace_{prefix}.json').read_text())
        events=sorted((e for e in data['traceEvents'] if e.get('cat')=='kernel' and 'dur' in e),key=lambda x:x['ts'])
        gaps=[max(0,events[i+1]['ts']-events[i]['ts']-events[i]['dur']) for i in range(len(events)-1)]
        p=json.loads((root/f'mcprof_{prefix}/report_bundle/report.txt.json').read_text())
        stall=get(p,'ISU stall cycles layout')['data']
        rows.append(dict(variant=variant,case=case,measure_ms=measure,kernel_median_us=statistics.median(e['dur'] for e in events),gap_median_us=statistics.median(gaps),l2_hit_pct=num(get(p,'L2C Hit Rate')),global_read_mb_per_call=num(get(p,'Global Memory Read bytes'))/20/1e6,global_write_mb_per_call=num(get(p,'Global Memory Write bytes'))/20/1e6,shared_nonconflict_pct=num(get(p,'shared memory access efficiency')),wg_load_latency_cycles=num(get(p,'average latency per load instruction')),mte_duty_pct=num(get(p,'AP MTE Duty ratio')),mma_duty_pct=num(get(p,'AP MMA Duty ratio')),wsm_stall=stall['wsm_stall'],vls_pipeline_stall=stall['vls_pipeline_stall']))
with (root/'summary.csv').open('w',newline='') as f:
    w=csv.DictWriter(f, fieldnames=rows[0].keys()); w.writeheader(); w.writerows(rows)
for row in rows: print(row)
