# v122 C12固定归约槽修复与原始屏测（sc-16g-2）

## 1. 上版本遗留问题

v121真实shared planner把Max/Den复用float1536槽，缺读后覆写跨warp保护；旧geometrygate1/2pairs/OOM13/0后缀已闭环。本版从CB13及121rev02同算法出发，不继承失败C6。

## 2. 问题原因分析

源码独立allocation不能保证backend不别名。单64F32数组明确Max0..31/Den32..63，阻止旧两buffer复用；仍没有两warp收益保证。额外wave、CTA4、shared10496以及FP32分组合并成本都保留。

## 3. 本版本解决方案

header122/source88，完整CB13 18ASTprefix及exactJIT decorator不变；只改Max/Den allocation和Den+32地址。逆变换恢复closed121rev02整文件字节。sourcevalidator0、4无条件CTA与64槽源证明0。

## 4. 具体落地策略

唯一5stage compile全部原wait0；P/C C12导出2pairs4files、0NSA/ref。实际Max float1536..1567、Den1568..1599、Num1600..2623，Half0..3071，所有完整byte集合不交且bounds。firstIR32静态MMA，两64wave fullvalid动态64/query，4blockbarriers/noalloca/AS5。IRNumstore文本位置虽早，但CFG从lastPV分支进入，未作文本顺序生命期结论。随后唯一B28-CB13-C122-C122-CB13-B28两轮原C12/native naive/seed0/F16GradTrue/1e-2/W10R50；原5+23+4/28/OOM13/unknown1G/600/.5/1s guards保持，12native和所有外层实际wait0。

## 5. Benchmark 对比

|版本|中位µs|范围µs|C122相对变化|
|---|---:|---:|---:|
|B28|83.402|82.775–83.922|+23.291408%|
|bestCB13|69.1785|68.833–69.632|+48.640835%|
|C122|102.8275|102.272–103.071|拒绝|

两轮vsCB13分别+47.970245%/+48.970417%，allC>allP且范围无交叠。4candidate fullrefs/12inclusive observed=clean均naive PASS；仅C12，不称all14/no-reg或OJ。12CSV原字节/SHA及全部高点保留，不混旧样本、不追加。

## 6. Profile 指标变化

实际resource68MT42ST/max7/stack0/staticshared0/dyn10496，MT与父C12已知68相同，staticmax不是实测occupancy。实际shared槽修复成立，但不能据资源/IR解释全部退化。shared Num rowmajor stride64是待profile验证的冲突假设，尚无新MC/trace，不把WGload当DRAM或单cause。1053compile+native样本（native952）峰26391609344B/OOM13稳定，仅观测峰非上界。

## 7. 实验总结

rejected_latency_vs_current_best_CB13：真实槽修复和4次selectedC12正确性通过，与48.64%端到端退化同时保留。source88/旧121gate1/main429不动，无复测/全14/推广。所有selfjobs terminal；下一独立123仅准备CB13与C122原driver C12两CLI counter对照，假设由实际profile验证，不预先改布局。
