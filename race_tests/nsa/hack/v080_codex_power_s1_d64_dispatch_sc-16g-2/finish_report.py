from pathlib import Path
from decimal import Decimal
import json,csv,statistics
p=Path('/root/tilelang-metax/race_tests/nsa');v='v080_codex_power_s1_d64_dispatch_sc-16g-2';r=p/'rep'/v
formal=json.loads((r/'formal_all14_summary.json').read_text());risk=json.loads((r/'risk_summary.json').read_text());profile=json.loads((r/'mcprof_summary.json').read_text());resources=json.loads((r/'resource_capture.json').read_text())
f=r/'report_sc-16g-2.md';body=f.read_text().split('## 5.')[0]
body+='## 5. Benchmark 对比\n\nsc-16g-2；正式逐case独立进程，原始naive_nsa、seed0、F16、causal、warmup10/repeat50及容差完全保留。每case B-I-C-C-I-B两轮，各版本4样本。下表单位us，负差表示更快。首轮与唯一风险复测所有原始样本都归档，不以device CPP相同豁免正差。\n\n| case | v28 | parent79 | v080 | 相对v28 | 相对79 |\n|---|---:|---:|---:|---:|---:|\n'
for x in formal['cases']:
 m=x['medians_us'];body+='| {} | {:.6f} | {:.6f} | {:.6f} | {:+.3f}% | {:+.3f}% |\n'.format(x['case'],Decimal(m['baseline_v28']),Decimal(m['parent_v079']),Decimal(m['power_v080']),Decimal(x['vs_v28_pct']),Decimal(x['vs_parent_pct']))
body+='\n固定风险复测：选择首轮相对v28或79任一正差的所有case，规则及列表在risk_selection.json，原native每case再4候选/12全组；不再追加挑选有利结果的复测。\n\n| case | v28 | parent79 | v080 | 相对v28 | 相对79 |\n|---|---:|---:|---:|---:|---:|\n'
for x in risk['cases']:
 m=x['medians_us'];body+='| {} | {:.6f} | {:.6f} | {:.6f} | {:+.3f}% | {:+.3f}% |\n'.format(x['case'],Decimal(m['baseline_v28']),Decimal(m['parent_v079']),Decimal(m['power_v080']),Decimal(x['vs_v28_pct']),Decimal(x['vs_parent_pct']))
checks=28+56+4*len(risk['cases'])+14;allchecks=84+168+12*len(risk['cases'])+14
body+='\n精确候选完整参考检查共{}次，覆盖14项；含两个对照共{}次。屏测28候选/84全组，正式56/168，风险{}/{}, 归档字节一致源码14/14。合并CSV与逐case原始CSV为同一组数据，计数只用合并文件，metadata捕获不计参考检查。\n'.format(checks,allchecks,4*len(risk['cases']),12*len(risk['cases']))
body+='\n执行脚本：hack/'+v+'/run_formal_all14.sh、run_risk.sh、run_archive_native.sh；均保留原native::_run_one_case内部逻辑，进程隔离只是外层编排。\n\n## 6. Profile 指标变化\n\n使用mcProfiler counts2、per-kernel、case8（B2/L4096/H1/HQ16/D64/S1/BS16），warm10+20 profiler driver与原生benchmark分开（profiler requires_grad=False，native=True；不声称运行时等价），不把profile运行作为正式时延。\n\n| 指标（两样本平均） | parent79 | v080 |\n|---|---:|---:|\n'
for k in ['waves','read_bytes','write_bytes','l2_hit_pct','shared_nonconflict_pct','conflict_cycles','load_latency_cycles','mte_pct','mma_pct']:
 vals=[]
 for label in ['parent_v079','power_v080']:
  xs=[x[k] for x in profile if x['variant']==label and x[k] is not None];vals.append('{:.4f}'.format(statistics.mean(xs)) if len(xs)==2 else 'unavailable')
 body+='| '+k+' | '+vals[0]+' | '+vals[1]+' |\n'
body+='\n四样本dispatched waves应为8192、输出字节约16777216；scope检查仅必要条件，不能保证排除其他启动。Achieved waves保留为原始计数，不能叫实际occupancy。七新增形状mxcc resource报告在resources/，不从static max warps推算实测占用。所有42份正式device CPP进行OJ严格检查，case1/3/10/11精确v28，其他原路径精确parent79；源码一致只用于排除意外改核，不豁免时延变化。\n\nmcTracer前期timeout124且仅header，本版未再次重试，未获得timeline；可用ISA解码工具仍缺失；sGPU实际计算/带宽roof未标定，因此不伪造Roofline点或物理四分之一屋顶。mx-smi为profile阶段只读状态采样，不能作为逐kernelAP占用或HBM吞吐。\n\n## 7. 实验总结\n\n七个新增S1 D64目标在屏测及正式全量中改善，C6/C12使用既有独立TileLang实现，本版仅扩展代码dispatch及lazy编译。全14正确性通过；外部OJ成绩仍待测，不能用本地速度替代OJ各case无退化要求。保留正式及风险所有正差；本版归档为inconclusive/OJ-pending，不替换主submission.py的原始v28。下一步先对照OJ完整14分数确认风险，再针对未优化D32/D128或S2/S4路径做独立证据支持的实验。\n'
body=body.replace('mcTracer前期timeout124','当前case8全局流量与L2命中率基本相同，shared nonconflict由35.875%到100%、conflict由6.8到0、load latency由102.35到50.635；与23.066%正式本地提速方向一致，支持访存布局与供给改善，不足以将全收益独占归因于bank冲突。七新增目标全部42MT/20ST、stack0、static maxwarps8；mxcc的0 shared是静态shared，实际host传入动态shared2048B，不能写成零总shared。编译min-blocks被MACA忽略的warning保留，不以launch_bounds的第二参数推算占用。\n\nmcTracer前期timeout124')
body=body.replace('## 7. 实验总结','归档初次在case13以137结束，cgroup OOM计数从6到8、历史峰值达到32GiB。initial_archive_exit137保留完整失败现场。仅case13做一次不改源码、不改native的重试，case14为首次执行；成功后使用1–12初始PASS和13–14恢复PASS合并归档14项。监控只读/proc与cgroup，不能把该无对照归档时延作为正式速度结论。archive_native_all14.exit原137保留，archive_recovery.exit独立记录恢复结果。\n\n## 7. 实验总结')
f.write_text(body);assert body.count('## ')==7
print('report written',checks,allchecks)
