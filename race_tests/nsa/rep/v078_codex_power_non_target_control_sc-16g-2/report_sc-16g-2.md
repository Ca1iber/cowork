# v078：非目标项同函数负对照（sc-16g-2）

## 1. 上版本遗留问题

77 C12本地快2.306%、C6继承76，107候选参考全14通过；1/3/4/10仍有上升，代码相同不能豁免。主目录保持v28，不退化/真实OJ门禁未证明。

## 2. 问题原因分析

native CUDAevent覆盖50次Python run_kernel，因此提交间隙可能进入跨度；这是源码推断，不是CPU/GPU拆分实测。需同函数负对照检验顺序/runtime状态贡献。

## 3. 本版本解决方案

无kernel/benchmark改动。v28 A/B同函数对象，77 A/B同归档函数对象。四轮cyclic8call平衡顺序，case1/3/4/10，原seed/输入/完整参考/容差/W10R50不变。

## 4. 具体落地策略

Identity断言is并记录两源/native SHA；wrapper只绑定测试run_kernel，调用原_run_one_case。每label8样本、每source16样本/case，总128参考。Decimal统计保留全数据，无instrumentation/allocator变化。无新候选，submissionREADME引用精确77/header77。
## 5. Benchmark 对比

HEAD194bd402e、codex-power-v28-base，四项诊断不支持全14无退化结论。B/A是同函数不同标签，source合并16样本。

|case|v28 med us|77 med us|77/v28 %|同v28 B/A %|同77 B/A %|
|---|---:|---:|---:|---:|---:|
|1|9.190400|9.177600|-0.139|-4.609|-6.496|
|3|12.398080|12.410880|+0.103|+0.021|-0.452|
|4|12.718080|12.761600|+0.342|-0.221|+0.060|
|10|11.973121|11.978240|+0.043|-0.128|+0.043|


case1同函数alias差4.61%/6.50%，77合并对v28 -0.139%，轮间-1.27/+4.84/+0.028/+2.81%无固定方向；支持protocol/runtime状态贡献，不豁免原7.38%或证明OJ不退化。case4合并仍+0.342%，三轮正一轮负，未解决；case3/10也有小正值。不筛样本，不重复到有利数字。

## 6. Profile 指标变化

本轮无mcProfiler/mcTracer/cProfile/instrumented计时，无kernel修改或新资源/ISA/Roofline。只读mx-smi/Identity可复现，GPU设置未改。77旧profile保留，不冒充本轮计数。

## 7. 实验总结

结论inconclusive_protocol_variability_non_regression_unproven。同函数对象可出现短case明显标签差异，不能独占归因CPU或豁免正差，更不能晋升77。v28/77各64次完整参考PASS、总128，仅四形状，无全14或新提交声明。

主目录v28及64/68/76/77源码不变，四目录/七节中文报告/原始CSV/Identity/SHA和双语诊断提交，已知任务结束。下一步针对case4实测改进，保留6/12路径；实际OJ仍缺，77问题已异步提出，不重复追问。
