# power v047 S1 V planes / sc-16g-2

## 1. 上版本遗留问题

case6原v28历史约156.7us；自己的D128实验曾生成每lane64次scalar half V读取。v046在D64去掉交换仍慢于v28，不能推广。近期mcProfiler跨slice/counter scope异常与trace timeout使硬件瓶颈归因受限。

## 2. 问题原因分析

原先怀疑scalar读取与reduction workspace开销。本轮构建独立S1原语流水线，检验成对读取和更短buffer生命周期。但生成代码没有按预想复用Q/K/V存储，总shared比预期大；此事实不等于已证明独占耗时原因。

## 3. 本版本解决方案

一CTA64线程，Q缓存32half/lane，QK分两组16token。lane最大值与xor32/16归约、稳定exp2偏置8，FP16权重及相同权重的FP32分母。V按两个64-feature plane成对存取，每plane批量预载四个native MMA operand。numerator在V生产后初始化，未读取先前团队优化kernel作为算法依据。

## 4. 具体落地策略

CPU4096个V位置、4096 PV operand位置、512 score ownership与pair4B对齐通过。生成global V uint4共8次/lane，shared operand uint1共32次/lane。编译72MT/26ST，stack0/max7，LLVM无private alloca。host launch确证shared20480B：K8192B@0、V8192B@8192、Q4096B@16384；输出复用K@0。早先对16KB总量与4KB归属的口头判断已由逐段地址核对纠正，以这些原始代码为准。预测8192B失败。header/三imports、generated/source static及fallback AST通过。dispatch仅BS32/D128/S1/G16、causal且长度整除BS。

## 5. Benchmark 对比

官方case6初测333.363us PASS。项目原生naive_nsa/W10R50保持不变，同进程ABBA两轮8/8完整正确性PASS。v28 median167.0375us（165.586～172.012）、v047 median328.3505us（326.994～331.100），慢96.57%。区间不重叠；不扩大全14/OJ门槛测试，主源未替换。

## 6. Profile 指标变化

fresh baseline source SHA42911561...，mcProfiler attention报告两份但waves11512/11624不符合固定8192 launch，read235.1/280.6MB明显偏离历史同源37.85MB。原始bundle与解析值归档，标为inconclusive；不使用其MTE、MMA或bank指标作判断，Achieved waves为raw而非occupancy。初始物理卡8%/14036MB、可见slice0%；counter scope/其他活动为推测。未采candidate mcProfiler及mcTracer：目标已明显失败，baseline scope仍异常，最近90/120秒trace尝试均失败；此版无有效timeline或bank实测。保留codegen、LLVM、资源与hostlaunch，staticmax7是编译上限。ISA不可用，无新Roofline；未修改GPU状态。

## 7. 实验总结

rejected_target_performance_and_shared_footprint_prediction。成对operand读取真实生成，完整目标正确，但Q/K/V自动复用假设失败，总shared20KiB，对v28退化约97%。下一版先保留数学和V布局，只改显式单块8192B存储及必要warp fence，隔离buffer复用的贡献；用SDK/本版生成代码的Q/K物理映射保证数据一致，不借此假定性能可达。主submission保持原始v28 SHA42911561...。候选完整SHA f8d5da5a...；先归档提交再开始下版。
