# power v041 probability cache / sc-16g-2

## 1. 上版本遗留问题

v040 barrier IR35→31却仍93.384us，v28约83.7us。继续微调fence不受证据支持。

## 2. 问题原因分析

在线QK/PV使Q缓存与output同时存活，状态缩放和8次sum有成本。分离两阶段可能复用shared并减轻寄存器；额外FP16舍入、缓存、alpha exp也有成本。

## 3. 本版本解决方案

先算每block QK/max/shifted exp2，缓存128个概率为FP16；再按global max缩放，PV；最后FP32归约同一组final FP16权重作分母。每call完整重算，output初始化后置，无数据复用缓存。

## 4. 具体落地策略

每thread4key/group，概率local32half，block max local8FP32，global max/rescale local1。多次fragment inverse/replicated scalar write编译失败及诊断保存。最终以local数组避开复杂fragment表示，PV使用普通TileLang MFMA；先加载4组V operands再4MMA，未采用串行load/MMA。max仍框架reduce；最后32half转FP32 local sum，写入score fragment slot0后warp sum。early source mixed dtype reduce方案未运行，最终显式FP32 cast。原理是块概率<=256、alpha<=1、den匹配实际PV半精度权重。最终68MT/50ST，stack0/max7/shared2304/private0，三imports/头v041/static通过，fallback AST不变。

## 5. Benchmark 对比

native official case12 B4/L1024/H1/HQ16/D64/S8/BS16，FP16 causal，naive_nsa/W10R50，90.752us PASS。v040 screen93.384us，减少2.632us/2.82%为跨轮诊断；v28 rollback83.702us，仍慢8.42%。未paired/full14候选/OJ，不能称胜出。

## 6. Profile 指标变化

mcTracer20次86.144us，68regs/2304B/private0。shared数据仅2048B，另256B框架reduce workspace。fresh v28两样本MTE62.99/62.71、MMA11.11/11.06、shared48.42%、conflict2.82，incumbent数据存档；未采own mcProfiler因screen失败，不声称pipe改善。LLVM存档、ISA不可用，无新Roofline。自动审批工具两次超时均安全重试并核验进程，未重启已运行测试。

## 7. 实验总结

rejected，主文件保持原v28。计算顺序/资源确有改善，仍未超incumbent。下一假设：max缓存按4个key-lane组分布，8FP32/thread减为2；用允许的shfl primitives替代单warp框架reduce，去掉未使用256B workspace；alpha仅owner组计算后broadcast，减少重复exp。SDK reduce.h::AllReduce64不访问workspace，builtin.py提供MACA uint64 mask/width64 primitives；必须显式全64lane mask。资源与性能仍需验证，不能假定occupancy/roof。
