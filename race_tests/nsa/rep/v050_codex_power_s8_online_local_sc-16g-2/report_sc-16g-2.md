# power v050 S8 online local / sc-16g-2

## 1. 上版本遗留问题

原v28 case12约83us、shared2560B；自身bulk概率缓存方案未击败它。v049 case6本地改善3–4%，外部OJ gate待反馈。保持v049的case6 GPU helper不变，本轮只尝试case12。

## 2. 问题原因分析

bulk缓存增加寄存器。怀疑逐block在线local数组可以避免32half概率cache及fragment/reduction workspace。资源方向需与实际v28比较，不能只和慢的自身实验比较。

## 3. 本版本解决方案

query16half缓存、score4F32/probability4F16、numerator16F32和scalar在线max/den。每个16token block计算单调global max、alpha<=1，FP32缩放旧分子/分母；当前P带256偏置并按FP16消费值求分母。单1024half arena复用Q/K/V/output，D64四行V布局预载4个operand。原入口AST不变，注册C6和C12 compiled-code对象；没有tensor内容缓存或外置数据工作。

## 4. 具体落地策略

Q/K/V/output全部1024映射及writer唯一性CPU证明通过。GPU loop仍按selected block顺序处理，warp64/fullmask shuffles。source及selected generated静态PASS。实际2048B shared、62MT/28ST、stack0/max8，无private alloca，global Q/K/output uint4和V uint2生成。原v28 case12 black-box source仅编译资源：60MT/28ST、stack0/max8；寄存器并未低于incumbent。case6 helper完整AST与v049相同；本轮目标失败未跑C6 native或全14，不能声称整体推广验证。

## 5. Benchmark 对比

官方case12初测87.700us PASS。项目原生naive_nsa、W10/R50不变，三方对称两轮12/12完整正确性PASS。v28 median83.374us、v04983.059us、v05086.976us，对v28慢4.32%。候选86.917～87.654us，baseline83.072～83.692us，区间不重叠。目标门槛失败，未扩大全14/外部OJ。

## 6. Profile 指标变化

本轮保存lowering/device/host、LLVM、目标及incumbent资源报告。仅1024half arena确实2048B，没有GPU-private alloca；shared减少不等于latency减少。没有新的mcProfiler/mcTracer：目标已经明显退化，不扩充可选测试；此前可靠case12 baseline与异常scope资料按原路径引用，不拿case6指标替代case12。ISA不可用、没有sGPU Roofline标定。codegen日志中的head*128 parallel warning来自导入保留的C6 helper；其v049/v048输出地址证明有独立记录，本轮S8 local output没有该parallel loop。静态max8不是occupied warps。

## 7. 实验总结

rejected_target_performance。online local表达正确并缩小shared，却没有降低到incumbent以下的寄存器数量，目标仍慢4.3%。逐selected的QK/max/exp/PV链仍串行。下个方向可审查历史split失败证据，设计用local数组/共享partial合并的多warp selected并行；必须说明新配置与历史失败的差别，不能只扩大warp数。v049独立OJ核验候选保持不变、分数仍待用户；主submission保持原v28 SHA42911561...。本版本完整源码SHAc61aedd1...归档后再开始下版。
