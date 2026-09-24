import csv,hashlib
from pathlib import Path
root=Path("/root/tilelang-metax/race_tests/nsa")
rep=root/"rep/v015_targeted_pv_sc-16g-2"
base=root/"submission/v009_nested_metaclass_sc-16g-2/submission.py"
parent=root/"submission/v014_selective_pv_sc-16g-2/submission.py"
cand=root/"submission/v015_targeted_pv_sc-16g-2/submission.py"
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
with (rep/"median_summary.csv").open() as f: rows=list(csv.DictReader(f))
lines=[
"# v015 将手写 PV 限定在 BS32 或 S8",
"",
"## 上版本遗留问题",
"",
"v014 在手写 QK 形状全部启用手写 PV，case 6/12 连续两轮优于 v009，但 case 11 无稳定收益。v013 的全量手写 PV 还使多个 S1/BS16 case 退化。需要只保留反复测得收益的参数路径。",
"",
"## 问题原因分析",
"",
"case 6 对应 BS32、D128，case 12 对应 S8、BS16、D64。两者在 v013/v014 的手写 PV K16+线性 V shared 路径均优于 v009。其余形状差异小或不稳定。v015 以参数条件 BS32 或 S>=8 路由，其他形状的 PV 使用 v009 T.gemm；S2/S4 虽保留手写 QK，但 PV 的 fragment/shared/output 布局注解随路由关闭，交由 T.gemm 推断。",
"",
"## 本版本解决方案",
"",
"只调整 use_manual_pv 和其联动的 PV 布局注解：block_size==32 或 S>=8 使用 v013 手写 PV，其他使用 v009 T.gemm PV。手写 PV 采用 k_pack=1（K16）、与 QK score 兼容的 A fragment、linear V shared；QK、softmax、64 threads、tile 和提交接口不变。",
"",
"## 具体落地策略",
"",
f"- 机器 sc-16g-2，起点 Git 4d826e4f4；v009 SHA-256 {sha(base)}；v014 SHA-256 {sha(parent)}；v015 SHA-256 {sha(cand)}。",
"- 源码在 submission/v015_targeted_pv_sc-16g-2/submission.py；本轮假设及 patch、脚本、原始 CSV/日志/生成代码分处 experiments/hack/rep 同名目录。根目录 submission.py 不变。",
"- 官方测试入口 race_tests/nsa/test_tilelang_nsa_fwd.py，固定 official_case.json；warmup 10、repeat 50、原 PyTorch reference atol/rtol=1e-2。三轮 v015 与三轮 v009 交替，每轮均 14/14 PASS；额外 G32 的 D64/D128 与 D32 S4 也 PASS。",
"- 源码及全部 14 份生成设备代码通过 OJ 静态检查。在线 OJ 尚未测 v015。",
"",
"## Benchmark 对比",
"",
"原始三轮 14 case 平均：v015 为 0.039435、0.038786、0.039566 ms；v009 为 0.039069、0.039423、0.039085 ms。v015 第一轮 case 5 为 0.039900 ms、第三轮 case 2 为 0.019707 ms，v009 第二轮 case 10 为 0.016753 ms，均显著高于该 case 其他轮次。以下主比较对每个 case 取三轮中位数，然后对 14 个中位数取算术平均；未删原始数据。",
"",
"| case | v009 中位数 ms | v015 中位数 ms | 耗时变化 |",
"|---:|---:|---:|---:|",
]
for r in rows:
    lines.append(f"| {r['case']} | {float(r['v009_median_ms']):.6f} | {float(r['v015_median_ms']):.6f} | {r['delta_pct']}% |")
lines += [
"",
"14 case 中位数均值：v009 0.039091 ms、v015 0.038826 ms，v015 低 0.68%；case 6 为 0.168847→0.166712 ms（低 1.26%），case 12 为 0.103286→0.100936 ms（低 2.28%），两者三轮方向一致。9 个 case 中位数下降、5 个上升；其余 12 个 case 的生成设备代码与 v009 完全相同，测量差异不能归因于计算代码变化。",
"",
"## Profile 指标变化",
"",
f"generated_code.tar.gz SHA-256 {sha(rep/'generated_code.tar.gz')}。codegen_comparison.csv 确认 case 6/12 的设备代码逐字等于 v013 手写 PV 路径，其余 12 case 逐字等于 v009。case 6 相比 v010 去掉了 score shared 重排引入的 2 个 block 同步；case 12 使用 linear V shared 布局。未采集 mcProfiler、mcTracer、寄存器或 bank 指标，不能给出硬件瓶颈归因。",
"",
"## 实验总结",
"",
"手写 PV 的 K16 片段和线性 V 布局在 case 6/12 重复带来局部收益。参数分流保留这两条手写路径，并让其余 12 个官方 case 生成与 v009 相同的设备代码。v015 是目前本地最合理的手写 PV 候选；14 case 中位数均值约低 0.68%，在线 OJ 尚未验证，因此 v009 仍是唯一 OJ 已接受版本。",
"",
]
(rep/"report.md").write_text("\n".join(lines))
print(rep/"report.md")
