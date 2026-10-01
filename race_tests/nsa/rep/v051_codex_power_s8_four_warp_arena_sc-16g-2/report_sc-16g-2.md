# power v051 four-warp arena / sc-16g-2

## 1. 上版本遗留问题

v050单warp在线local路径正确但case12慢4.32%；原v28约83us，仍串行selected链。历史自身v014两warp split为173.245us、62MT/32ST、shared13312B。仅查阅其报告及launch metadata，不复制旧split kernel算法。

## 2. 问题原因分析

两warp failed不能只通过增加warp数重试。本轮更短每warp2-block链、相位复用arena、local数组与packed四行V读取，计划减少每warp shared从6656B到4224B。总CTA shared实际上增加13→16.5KiB，更多waves与merge/reg压力仍可能抵消并行收益。

## 3. 本版本解决方案

256thread CTA四warp，各取2selected；全球Q只加载一次，四warp缓存。每warp2KiB K/V zone和局部N/m/Z。PV结束后CTA fence，把同一16KiB arena改用FP32 partial矩阵；512B stats存m/Z。warp0按global max合并4份，再CTA fence后复用arena为FP16 output。所有attention数据工作仍在每次scored调用内；cached objects只为compiled code。

## 4. 具体落地策略

CPU Q1024、4个disjoint K/V zone、selected0..7恰一次、partial4096 writer/merge read、stats128 writer、output1024 writer证明通过。AST五个CTA barrier均不在if/for内；不在warp-divergent分支中同步整个CTA。共享F32[4096]/F16[8192] view位数相等，仅复用实际shared存储。生成host confirms16896B，perwarp4224B（比历史减36.54%）；实际90MT/28ST、stack0/max5、无private alloca，远高于v05062MT/max8和v2860MT/max8。原入口AST与C6 helper依赖保留，source/generated selected静态PASS。

## 5. Benchmark 对比

官方case12初测152.617us PASS。原项目naive_nsa、W10R50保持不变，同进程三方对称两轮12/12完整reference PASS。v28 median83.8325us、v05087.693us、v051152.668us，对incumbent慢82.11%。candidate152.417～152.909us、baseline83.697～84.086us，区间不重叠。未扩大到全14/OG，case6也未重复native，因为目标失败、版本不推广；v049独立核验候选保持不变。

## 6. Profile 指标变化

新采原始v28的两份attention report匹配4096-wave launch、字段完整：L2 hit91.66%，read9.5739/9.5735MB、write8.3889MB，MTE62.78/62.90%、MMA11.07/11.10%、shared nonconflict48.43%、conflict2.82、load62.36/62.23cycles。fresh gate PASS；Achieved4058/4057仅raw非occupancy。candidate没有额外mcProfiler/mcTracer：target大幅失败，先核对明确的编译资源/liveness风险。ISA不可用、无sGPU Roofline标定，未改GPU配置。

LLVM17个状态phi中，merge join保留4个float32x4 old partial numerator与denominator incoming值（state_phi_lines.txt）。显示了已不再需要的旧partial值继续参与SSA merge；这为下一版分开partial/merged局部数组提供依据。尚未证明全部90MT或82%退化只由这些phi造成；staticmax5也不等于实测occupancy。

## 7. 实验总结

rejected_target_performance。确实把selected工作变成四warp并行并正确合并，共享perwarp缩小36.5%，但寄存器90MT/max5未达到资源预期，end-to-end仍失败；尚未量化各部分贡献。不能把warp数量增加或历史173us到本轮152us直接当优化胜利。下版可保留并行/布局/同步/math，只把merge accumulator/max/den与partial状态分开，检验SSA旧状态能否消失以及register是否下降。必须同轮再比v28。

本版完整SHA4ebbc05f...；原始入口prefix AST和v049 S1 helper依赖未改变，主submission仍42911561...。v049 OG反馈pending，不影响继续独立case12工作；此版没有真实OG分数或全局no-regression声明。
