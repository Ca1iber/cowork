from pathlib import Path
import json,statistics,hashlib,datetime
root=Path('/root/tilelang-metax');v='v200_worker2_baseline_profile_subagent2';r=root/'race_tests/nsa/rep'/v
assert (r/'baseline_all14.exit').read_text().strip()=='0'
assert (r/'profile_analysis.exit').read_text().strip()=='1'
assert (r/'post_baseline.exit').read_text().strip()=='1'
assert (r/'trace_orchestrator.exit').read_text().strip()=='1'
assert (r/'independent_resources.exit').read_text().strip()=='0'
bench=json.loads((r/'baseline_all14_summary.json').read_text())
prof=json.loads((r/'mcprof_forensic_summary.json').read_text())
scope=json.loads((r/'mcprof_forensic_scope_checks.json').read_text())
res=json.loads((r/'resource_summary.json').read_text())
report=r/'report_subagent2.md';prefix=report.read_text().split('## 5. Benchmark 对比')[0]
s='## 5. Benchmark 对比\n\n本版本仅建立控制基线，没有 kernel 修改、candidate0。56个原 native 完整 reference 全部 PASS：原版28 + v08428。每 case/source只有2次测量，B-P-P-B固定顺序；环境 smoke另1个parent reference不并入56。单位us，范围完整保留。\n\n| Case | 原v28中位数/范围 | v084中位数/范围 | v084相对原版 |\n|---|---:|---:|---:|\n'
for x in bench:
 b=x['baseline_range_us'];p=x['parent_range_us']
 s+=f"| {x['case']} | {x['baseline_us']:.6f} / {b[0]:.6f}–{b[1]:.6f} | {x['parent_us']:.6f} / {p[0]:.6f}–{p[1]:.6f} | {x['parent_vs_baseline_pct']:+.3f}% |\n"
s+='\n负差表示更快。这些是同机器已存在代码的诊断，不能称新优化或新 OJ 分数。短case2/13范围重叠，case1原版范围8.94464–10.58304us保留，不以噪声名义删除。native CUDA events包住50次Python run_kernel调用，host enqueue间隙可能贡献计时范围；没有定量CPU/GPU拆分，也不能称纯shader时间。\n\n## 6. Profile 指标变化\n\n固定6个CLI全部外层exit0，捕获12个raw JSON记录，**不是12个有效样本**。C8原版两个记录均缺counter值（原始字符串cannot get values from data）；同job早期Killed line234在约03:22:02、target初始化约03:22:07之前，cgroupOOM0→1。被kill具体子组件UNKNOWN，dmesg访问被拒绝，不推断无害或destructor原因。C9parent sample1写字节残差576超过预声明0..512B；保留该预测反证，不扩大阈值。\n\n原analysis1/post1保持不变，trace排队任务因门禁失败跳过，未执行mcTracer GPU任务。独立forensic parser仅导出既有raw：12records、10numeric、9满足原scope、2不可用、1数值scope失败；不会恢复原gate。没有重采native/profile。\n\n| Case/source | 样本数/原scope通过 | Shared非冲突% | WG冲突cycles | WG-load cycles | MTE% | MMA% |\n|---|---:|---:|---:|---:|---:|---:|\n'
for ci in [5,8,9]:
 for label in ['baseline_v28','parent_v084']:
  rows=[x for x in prof if x['case']==ci and x['variant']==label]
  cs=[x for x in scope if x['case']==ci and x['variant']==label]
  def vals(k):return '/'.join('NA' if x[k] is None else f'{x[k]:.3f}' for x in rows)
  s+=f"| {ci}/{label} | {len(rows)}/{sum(x['scope_consistent'] for x in cs)} | {vals('shared_nonconflict_pct')} | {vals('conflict_cycles')} | {vals('WG_load_latency_cycles')} | {vals('mte_pct')} | {vals('mma_pct')} |\n"
s+='\nWG-load属于Workgroup Memory issue-to-memopsdone，不是DRAM/global load latency。非冲突100%表示该访问分类；不说明删除shared一定更快。MTE/MMA duty比例不等HBM throughput，GlobalReadbytes不是未经证明的HBM实流量，Achievedwaves不等occupancy。波形/输出payload footprint是必要一致性，不是独占物理卡的证明。native inputs requires_gradTrue；现成profile driver requires_gradFalse、warm10+20range calls，与官方W10R50不同，0reference。\n\n以下6份资源捕获独立使用既有actualCPP执行一次，0attention/0reference，exit0；没有重跑失败post。\n\n| Case/source | MT | ST | 动态shared B | Static maxwarp/PEU | Stack B |\n|---|---:|---:|---:|---:|---:|\n'
for x in res:s+=f"| {x['case']}/{x['variant']} | {x['MT']} | {x['ST']} | {x['dynamic_shared_bytes_host']} | {x['static_max_warps_per_PEU']} | {x['stack_bytes']} |\n"
s+='\n编译器static_shared报告0与host动态shared分开；static maxwarp不是实测occupancy，stack0不等所有private spill证明。fresh C5 parent actualCPP显示：Q/K global16B→shared8B；V global16B→shared4B→operand8B；output shared8B写/8B读→global16B。该输出阶段存在，但其耗时占比未量化。\n\n## 7. 实验总结\n\n结论：**诊断部分证据完成，profile不完整且存在scope反证/OOM事件**；没有新kernel/candidate/提交稿。原native56通过与profile失败独立表述，环境1ref单列。main submission原v28 SHA429和archived parent SHA4c保持，原shared runner/reference/shapes不变。\n\nC5有效两source×2raw与actualCPP/resources支持提出一项可证伪机制供peer及leader评审：只针对C5尝试删除output shared staging，保持numerator/den和F32→F16完全同parent，改为MFMA lane坐标直接8B globalstore。这是未经验证的假设：可删2个同步和每query2KiB WG写+2KiB WG读，但每lane由2×16B连续store变4×8B stridedstore，可能增加store issue/sector成本。下一版仅在leader批准后编辑，不改变其他case。详细索引证明/反向预测见experiments/next_mechanism_proposal.md。\n\nmcTracer实际/opt/maca/bin存在但notinPATH；初始PATH清单不能说toolabsent，help0/version已记录。ISAdecoder与本机校准HBM/compute roof缺失，trace因失败gate未跑；没有伪造roof/occupancy/launch-gap量化。见UNAVAILABLE.md。\n'
report.write_text(prefix+s)
print('REPORT_FINALIZED')
