# power v044 value pack / sc-16g-2

## 1. 上版本遗留问题

v043 case12正确但125.076us，80MT/50ST、stack36B，LLVM保留private数组；原始v28历史同轮83.5765us。

## 2. 问题原因分析

怀疑T.view混合指针阻止寄存器化。本轮去掉view后仍有private alloca，说明仅去掉alias不够。LLVM把取值条件合并成lane依赖的数组地址，保留56个dynamic GEP；不是已经证实的寄存器压力spill。

## 3. 本版本解决方案

保持2x8 V producer、xor8交换和注意力数学，仅用T.reinterpret和uint32 shift/OR按值打包解包。

## 4. 具体落地策略

源码三imports、header、fallback AST检查通过。CPU全部1024坐标与65536种16位pattern通过。生成V uint4 load，循环2次；资源78MT/50ST、stack36B/max6。完整官方case12比较失败：2730816/4194304个元素不匹配，最大绝对误差3.869140625。原始失败日志保留。

## 5. Benchmark 对比

项目原生naive_nsa/W10R50调用在正确性assert处失败，未进入有效timing。没有candidate latency，不与v28作性能比较；未跑paired、全14或外部OJ。

## 6. Profile 指标变化

未跑mcTracer/mcProfiler：正确性门槛失败。LLVM与resource日志齐全；ISA不可用、没有新Roofline。单独V搬运诊断：默认开关坐标输入0 mismatch；与candidate相同开关、seed0随机FP16输入也是0 mismatch。这些只是局部正确性，不能推翻完整NSA失败；完整上下文原因尚未定位。

## 7. 实验总结

failed_correctness。去view不足以解决private存储，完整kernel错误仍待定位。共享submission保持原v28 SHA42911561...。下一步用T.Select表达纯值选择，检验是否避免动态private地址，仍先代码生成与完整native正确性，不依据局部诊断宣称通过。
