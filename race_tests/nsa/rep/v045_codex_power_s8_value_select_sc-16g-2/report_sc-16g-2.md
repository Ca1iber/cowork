# power v045 value select / sc-16g-2

## 1. 上版本遗留问题

v044去掉T.view后仍有private fetch数组、36B stack，完整case12失败。局部V搬运诊断通过，完整上下文错误原因未证明。

## 2. 问题原因分析

LLVM把条件读取合并成lane依赖的private数组地址。此地址选择阻止寄存器化；不是已证实的寄存器压力spill。v043的16B加载需要额外xor8交换，可能增加issue及寄存器成本。

## 3. 本版本解决方案

先从固定位置读取uint16位值，再用TileLang T.Select选择值。保持2x8 V加载、4个packed xor8交换、共享布局、注意力数学和normalizer。所有64lane参加shuffle，完整mask。

## 4. 具体落地策略

源header与三个imports检查通过，fallback body AST和原v28相同。CPU全部1024坐标、65536种half位型检查通过。生成V uint4 load循环2次，shared uint2 store循环4次。LLVM private alloca消失；74MT/50ST、stack0/max6，shared2048B。相较v042：64→74MT，max8→6；静态bpermute26→58，warpbarrier仍35，不能把静态调用数当作动态延迟。

## 5. Benchmark 对比

官方case12初测104.817us PASS。项目原生naive_nsa、W10/R50设置不变，同进程ABBA两轮8/8正确性PASS。v28 median88.7245us（83.922～92.580），v045 median105.638us（105.093～105.928），慢19.06%；区间不重叠。原始v28 SHA42911561...、候选08e9ffc0...已记录。未跑全14/外部OJ：目标性能失败，不进入推广门槛。

## 6. Profile 指标变化

mcProfiler每个variant有两份attention报告，exit0，但计数器对比不可用。候选MTE108.42/108.48%超100，baseline固定4096-wave launch却报告7488/7492waves；其read约201MB，与历史同源9.57MB明显不同。原始JSON/CSV全部保留，counter_reliability.json标为inconclusive，不能以数值字段齐全宣称有效profile。Achieved waves仅raw，不是occupancy。采样间mx-smi观察到物理卡8%活动和约14GB显存、可见slice0%，其他负载或计数器scope问题是推测，原因未证实。mcTracer timeout90s/exit124，driver进程已消失，没有有效timeline。未改GPU配置、驱动或benchmark。ISA不可用，没有新Roofline。

## 7. 实验总结

rejected_target_performance；counter profile单独标inconclusive。正确性恢复和private消除已验证，但16B加载仍未击败v28。额外lane交换与寄存器上升是待验证代价，不能用异常counter证明瓶颈。主submission保持原v28。下一步可尝试不用lane交换的2-row shared producer及对应成对读取，或回到case6的新数据搬运方向；先获取可解释的fresh baseline采样。不要重复仅扩大加载宽度的结论。
