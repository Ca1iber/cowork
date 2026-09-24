import csv
import hashlib
from pathlib import Path

root=Path("/root/tilelang-metax/race_tests/nsa")
rep=root/"rep/v013_manual_pv_tune_sc-16g-2"
base=root/"submission/v009_nested_metaclass_sc-16g-2/submission.py"
proto=root/"submission/v010_manual_pv_sc-16g-2/submission.py"
cand=root/"submission/v013_manual_pv_tune_sc-16g-2/submission.py"
def digest(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def read(p):
    with p.open() as f: return list(csv.DictReader(f))
rows=read(rep/"official_summary.csv")
target=read(rep/"target_summary.csv")
lines=[
"# v013 手写 PV 的片段与 V shared 布局调参",
"",
"## 上版本遗留问题",
"",
"v010 已把 PV 写成手动 MFMA，但 BS16 生成代码与 v009 的 T.gemm lowering 基本相同；BS32 为匹配 PV A 与 QK score 布局增加 shared 往返和两次 block 同步，因此无稳定收益。v012 调 QK 的 k_pack 也无整体收益。本轮聚焦 PV。",
"",
"## 问题原因分析",
"",
"已验证：BS32 下 v010 的 PV A fragment 用 k_pack=2，每线程 K 片段分布与 QK 输出的 score fragment 不同，直接 T.copy(scores,scores_half) 会数值错误（case 6 95.2% 元素不匹配，日志 target_direct2.log）。将 PV k_pack 降为 1、按 K16 两轮累积后，A operand 的每线程片段与 QK score 输出一致，直接转换通过数值校验。该变化减少一次 shared 重排。V shared 的物理布局也影响生成地址和本地耗时；寄存器及 bank 冲突指标未采集，不能对内部瓶颈作强归因。",
"",
"## 本版本解决方案",
"",
"沿用 v009 的 QK 分流、64 threads、softmax 和接口。PV 使用手写 T.tvm_mfma，按 K16 的 k_pack=1 加载 V local、累积输出；PV A fragment 直接采用 QK score store 的线程/本地索引布局，移除 BS32 的 scores_half_shared。对 V shared 布局扫描默认 swizzle、linear、half-bank、quarter-bank，选择两目标 case 同时更快的 linear。",
"",
"## 具体落地策略",
"",
f"- 机器 sc-16g-2，起点 Git 97b738b8b；v009 SHA-256 {digest(base)}；v010 SHA-256 {digest(proto)}；v013 SHA-256 {digest(cand)}。",
"- 精确提交源码位于 submission/v013_manual_pv_tune_sc-16g-2/submission.py；候选 patch 在 experiments/v013_manual_pv_tune_sc-16g-2/；可复现实验脚本在 hack/v013_manual_pv_tune_sc-16g-2/；逐 case CSV、日志、生成代码在 rep/v013_manual_pv_tune_sc-16g-2/。根目录 submission.py 未修改。",
"- 官方输入为 race_tests/nsa/official_case.json，测试入口 race_tests/nsa/test_tilelang_nsa_fwd.py，warmup 10、repeat 50，PyTorch reference 用 atol/rtol=1e-2 校验。脚本 run_official.sh 交替运行 v013/v009 两轮，结果均 14/14 PASS；额外 G=32 的 D64/D128 和 D32 S4 也 PASS。",
"- OJ 静态源码和 v013 全 14 份生成设备代码检查通过；在线 OJ 尚未测 v013。",
"",
"## Benchmark 对比",
"",
"case 6/12 单形状扫描均使用原测试入口 _run_one_case 并逐次通过正确性：",
"",
"| 运行 | case 6 ms | case 12 ms |",
"|---|---:|---:|",
]
for r in target:
    lines.append(f"| {r['run']} | {float(r['case6_ms']):.6f} | {float(r['case12_ms']):.6f} |")
lines += [
"",
"交替完整测量平均：v013 两轮 0.039006、0.039098 ms；v009 两轮 0.039317、0.039306 ms。配对的 14 case 算术均值为 v013 0.039052 ms、v009 0.039311 ms，v013 低约 0.66%。14 个 case 中 8 个耗时下降、6 个上升。",
"",
"| case | v009 配对均值 ms | v013 配对均值 ms | 耗时变化 |",
"|---:|---:|---:|---:|",
]
for r in rows:
    lines.append(f"| {r['case']} | {float(r['v009_mean_ms']):.6f} | {float(r['v013_mean_ms']):.6f} | {r['delta_pct']}% |")
lines += [
"",
"case 6/12 分别低约 1.14%/2.61%，但 case 5/7/8/9/14 分别慢约 2.39%/1.77%/1.58%/1.51%/3.89%；整体本地均值收益不能直接代表每个 shape 都改善。case 1/2 两轮方向不一致，视为测量波动。",
"",
"## Profile 指标变化",
"",
f"设备代码包 generated_code.tar.gz SHA-256 {digest(rep/'generated_code.tar.gz')}。case 6 的 __syncthreads() 静态出现次数：v009 7、v010 9、PV 直读默认布局 7、v013 7；case 12 各版均为 5。v013 case 6/12 设备代码哈希与直读默认布局不同，说明 linear V 布局确实改变了生成代码。QK 路径未变，PV 仍走 T.tvm_mfma。未采集 mcProfiler、mcTracer、Roofline 或寄存器报告；该轮无法验证 bank 冲突或占用率变化。",
"",
"## 实验总结",
"",
"PV k_pack=2 直接复用 QK score 布局数值错误，不能用；k_pack=1 直读正确并消除 v010 的 BS32 额外 shared 重排。V linear 布局在 case 6/12 首轮均优于默认 swizzle，half/quarter 更慢。v013 整套本地均值小幅改善，但 5/7/8/9/14 退化，OJ 尚未验证，因此只归档为候选，不替换 OJ Accepted 的 v009。下一轮可把手写 PV 限定在已有手写 QK 的形状，保留其他形状的 v009 PV 路径并配对验证。",
"",
]
(rep/"report.md").write_text("\n".join(lines))
(rep/"source_sha256.txt").write_text("\n".join(f"{digest(p)}  {p}" for p in (
    base,proto,cand,
    Path("/tmp/nsa_pv_v013/submission_direct1.py"),
    Path("/tmp/nsa_pv_v013/submission_direct2.py"),
    Path("/tmp/nsa_pv_v013/submission_direct1_half.py"),
    Path("/tmp/nsa_pv_v013/submission_direct1_quarter.py"),
))+"\n")
print(rep/"report.md")
