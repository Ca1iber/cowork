from pathlib import Path
from decimal import Decimal
import json,statistics
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v100_worker1_s8_pair_iteration_sc-16g-2');s=json.loads((r/'target_screen_summary.json').read_text())['cases'][0];m=s['medians_us'];resources=json.loads((r/'resource_summary.json').read_text());prof=json.loads((r/'mcprof_summary.json').read_text());f=r/'report_sc-16g-2.md';body=f.read_text().split('## 5.')[0]
body+='## 5. Benchmark 对比\n\n仅C12 B4/L1024/H1/HQ16/D64/S8/BS16/F16/causalTrue，同sc-16g-2；原native参考与W10R50不变。hack/run_target_screen.sh与run_case.py。\n\n| v28 us | parent84 us | v100 us | 对84变化 | 对v28变化 |\n|---:|---:|---:|---:|---:|\n'
body+='| {} | {} | {} | {:+.6f}% | {:+.6f}% |\n'.format(m['baseline_v28'],m['parent_v084'],m['power_v100'],Decimal(s['vs_parent_pct']),Decimal(s['vs_v28_pct']))
body+='\n候选样本us：'+str(s['samples_us']['power_v100'])+'；父版：'+str(s['samples_us']['parent_v084'])+'。全部候选高于全部父版，拒绝且不重复native、不启动formal。4候选完整参考/12含对照，仅case12；合并CSV计一次，副本不重复计数；wrapper初始失败/profile/metadata/static均0额外参考。\n'
body+='\n## 6. Profile 指标变化\n\n当前paired mcProfiler各2样本，native后driverW10+20/gradFalse，不代替nativeTrue基准。4096waves/8MiB加事前0至512B残量，仅必要scope条件。WG-load属于workgroup，不是global/DRAM。\n\n| 均值指标 | parent84 | v100 |\n|---|---:|---:|\n'
for k in ['waves','read_bytes','write_bytes','l2_hit_pct','shared_nonconflict_pct','conflict_cycles','WG_load_latency_cycles','mte_pct','mma_pct']:
 vals=[]
 for label in ['parent_v084','power_v100']:
  xs=[x[k] for x in prof if x['variant']==label and x[k] is not None];vals.append('{:.4f}'.format(statistics.mean(xs)) if len(xs)==2 else 'unavailable')
 body+='| {} | {} | {} |\n'.format(k,*vals)
body+='\n| source | MT | ST | dynamicsharedB | stackB | staticmaxwarps/PEU |\n|---|---:|---:|---:|---:|---:|\n'
for x in resources:body+='| {} | {} | {} | {} | {} | {} |\n'.format(x['variant'],x['MT'],x['ST'],x['dynamic_shared_bytes_host'],x['stack_bytes'],x['static_max_warps_per_PEU'])
body+='\n资源压力MT80到98/ST22到32/staticmaxwarps6到4，shared2048B/stack0不变。静态资源不是实测占用率，不单独证明退化唯一原因。\n\n## 7. 实验总结\n\nrejected_case12_selected_screen_regression_vs_v084：生成代码机制成立，四次完整正确性通过，但中位对父版慢1.793216%，全部候选高于全部父版。保存失败证据，main不变，无全14或OJ提升宣称。下一阶段fresh parent case10 profile后向leader提交新假设，不无证据继续pair叠加。\n'
f.write_text(body);assert body.count('## ')==7;print('report ready',len(body))
