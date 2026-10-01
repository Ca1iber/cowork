# power v053 normalized-half partial stream / sc-16g-2

## 1. 上版本遗留问题

v052四warp有88MT/max5/shared16.5KiB，目标153.001us远慢于v28 83.6555us。旧phi已去除只节省2MT。自身v018 full score pool已失败102MT，本轮不无依据重试。

## 2. 问题原因分析

partialFP32矩阵16KiB、full merge accumulator16F32都是已确认资源成本。本轮改数据表示减少它们；寄存器/shared下降不必然改善throughput，仍以完整native目标为准。

## 3. 本版本解决方案

各warp把N/Z归一化输出存FP16，m/Z统计保持FP32。Z0时以safeDen1存0，避免globalweight0乘NaN污染。warp0计算alpha*Z全局权重、4F32 scratch逐chunk合并，所有4份当前坐标读取后覆写同layout的warp0槽位。无需原有merge后CTA fence，但4个其他CTA fence保持unconditional。代码对象缓存保留，数据工作仍在每次scored调用内。

## 4. 具体落地策略

CPU证明4096partial slots、所有read-before-overwrite、1024outputwriter/read、128stats ownership和四个CTA barrier不在if/for内。额外FP16 rounding被明确列为数值风险。实际shared8704B（8KiB half arena+512B stats），perwarp2176B；68MT/28ST、stack0/max7，无private alloca。相比parent88MT、16896B、max5资源明显下降；这些compile上限不是occupied warps。selected source/generated contract/header/三imports通过；原入口prefix AST与自身v049 S1 helper依赖保留。

## 5. Benchmark 对比

官方case12初测147.430us PASS。原项目naive_nsa/W10R50/input不变，同进程对称三方两轮12/12完整reference PASS。v28 median90.2245us（87.137～96.113）、v052161.1365us、v053147.510us：对parent快8.46%，对incumbent慢63.49%。保留全部raw时值、不能拿prior83us替代当前baseline。candidate最小147.436仍高于baseline最大96.113，拒绝结论不依赖outlier丢弃。未扩大全14/OG。

## 6. Profile 指标变化

fresh v28 capture两份attention报告wave7328/7688不符合4096launch，read107/135MB偏离已验证同源9.57MB，标inconclusive，原始bundle和值保留。MTE/MMA/bank等不能用于paired归因，Achieved仅raw。无新candidate mcProfiler/mcTracer，目标大幅失败且新baseline scope异常；保存codegen/LLVM/resources与CPU协议证明。ISA不可用、无sGPU Roofline标定，未改GPU状态。

## 7. 实验总结

rejected_target_performance。normalizedFP16partial在官方reference容差内正确，streammerge减shared近一半、reg降20，但四warp表达仍明显慢于原v28。资源缓解与整体8.46%parent改善已测，独占归因未证明，不能称global优化。下一步应回到更接近incumbent的单warp路径，考虑exact record-max时才rescale以避免alpha=1的冗余SFU/ALU，明确区别于历史adaptive-anchor/fragment方案。source完整SHAa9ee8016...；主submission始终42911561...，v049独立核验candidate和pendingOG状态不变。
