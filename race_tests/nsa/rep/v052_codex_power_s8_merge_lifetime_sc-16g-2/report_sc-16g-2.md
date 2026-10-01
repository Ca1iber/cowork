# power v052 merge lifetime / sc-16g-2

## 1. 上版本遗留问题

v051四warp正确但152.668us对v28 83.8325us。shared16.5KiB达标、90MT/max5。LLVM merge join保留旧partial N/den值，怀疑延长局部状态lifetime。

## 2. 问题原因分析

这只是SSA线索，不是已证明的90-reg主要原因。本轮独立验证：如果分离状态后phi消失却资源/latency未明显改善，就不能继续以此解释并行失败。

## 3. 本版本解决方案

新增merged_numerator/max/den/rescale局部数组，仅warp0合并及output使用。保持partial状态、四warp selected partition、math、layouts和所有同步不变。归一化变量名并删除四个新增alloc后，整个helper AST与v051精确相同。

## 4. 具体落地策略

source_equivalence_proof证明仅局部存储/use sites变化，引用v051 ownership和五个unconditional CTA barrier证明。actual shared16896B、88MT/28ST、stack0/max5，无private alloca。merge phi现在都是新变量并以undef作为inactive incoming；不再有old partial N/den incoming。旧phi确实移除，仅节省2MT，上限仍5。源header/三imports/generated静态检查通过，原入口prefix不变，C6 helper仍依赖已验证v049。继承的head*128 checker warning来自该C6 helper；其地址唯一性证明保留，checker未关闭。

## 5. Benchmark 对比

官方case12初测152.561us PASS。项目naive_nsa、W10R50和inputs不变，同进程三方对称两轮12/12完整正确性PASS。v28 median83.6555us、v051152.668us、v052153.001us，对incumbent慢82.89%，没有parent改善。范围v28 83.523～83.799、v052152.991～153.052，不重叠。未扩大到全14/OG；主源和v049独立候选不变。

## 6. Profile 指标变化

保存device/host、资源、LLVM、29个state phi和merge_phi_removed_proof。比17个旧phi更多是scalar化后的计数变化，不等于更多occupied registers。v051 fresh incumbent MCP两份匹配4096wave的资料按原path/commit引用；本轮没有新的mcProfiler/mcTracer，因为目标及资源条件明显失败，不扩展可选测试。ISA、sGPU Roofline标定不可用，未修改GPU状态或benchmark。

## 7. 实验总结

rejected_target_performance。lifetime假设被隔离验证：旧incoming值消失，但90→88MT、max5不变且速度无改善，不支持其为主因。更多warp、shared partial merge和寄存器预算仍需其他机制解释。下一方向应避免重用同一失败的局部假设，可考察单warp tiled-QK保留raw score、仅一次global max/sum的实现，明确区别于历史wide-fragment/shared-gather失败。完整源码SHA c12dc529...；main维持原v28 42911561...，v049 OG反馈仍pending。
