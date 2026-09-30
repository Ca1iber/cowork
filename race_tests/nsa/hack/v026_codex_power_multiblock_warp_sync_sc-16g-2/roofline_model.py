import csv,json,statistics
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa')
id='v026_codex_power_multiblock_warp_sync_sc-16g-2';r=root/'rep'/id
c=json.loads((root/'official_case.json').read_text())[11]
B,L,H,G,D,S,BS=c['B'],c['SEQ_LEN'],c['H'],c['HQ']//c['H'],c['D'],c['S'],c['block_size']
valid_blocks=B*H*sum(min(S,max(1,t//BS)) for t in range(L))
flops=4*valid_blocks*G*BS*D
qout_each=B*L*H*G*D*2
requested_bytes=2*qout_each+4*valid_blocks*BS*D+B*L*H*S*4
unique_bytes=2*qout_each+2*B*L*H*D*2+B*L*H*S*4
lat={x['case']:x for x in json.loads((r/'paired_summary.json').read_text())['cases']}[12]
p=json.loads((r/'mcprof_summary.json').read_text())
rows=[]
for label in ('v026','v028'):
 samples=[x for x in p if x['variant']==label]
 traffic=statistics.median(x['read_bytes']+x['write_bytes'] for x in samples)
 time_us=lat['medians_us'][label]
 rows.append(dict(label=label,matmul_flops=flops,latency_us=time_us,tflops=flops/time_us/1e6,requested_bytes=requested_bytes,unique_array_bytes=unique_bytes,profiler_physical_bytes=traffic,ai_requested=flops/requested_bytes,ai_physical_counter=flops/traffic))
(r/'roofline_model.json').write_text(json.dumps({'rows':rows,'model':'QK+PV GEMM FLOPs only; excludes softmax scalar ops. Requested bytes include repeated K/V CTA reads served by caches. Unique arrays are a coverage upper estimate, not verified compulsory traffic. Physical counters exclude cached reads. Times are native event medians, not mcProfiler native roofline points. Compute roof UNKNOWN; no saturation/floor claim.1400GB/s roof is historical sc16 engineering sensitivity, not a platform guarantee.'},indent=2)+'\n')
with (r/'roofline_model_sc-16g-2.csv').open('w',newline='') as f:
 w=csv.DictWriter(f,fieldnames=rows[0]);w.writeheader();w.writerows(rows)
print(rows)
