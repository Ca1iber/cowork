# power v046 V row-pair / sc-16g-2

## 1. 上版本遗留问题

v045正确但同轮105.638us，v28 88.7245us。16B V加载新增32静态shuffle，74MT/max6。上一轮计数器异常与trace超时未解决。

## 2. 问题原因分析

新增shuffle和寄存器压力是源码/LLVM验证的代价，尚不能证明独立耗时贡献。去掉交换需改变V shared生产与consumer读取，窄读写次数会上升，可能抵消收益。物理卡初始空闲，fresh baseline采样时再次出现卡活动；wave7096/7352偏离4096，不能推断memory bottleneck。gate失败及继续采用LLVM/native证据的原因在hypothesis追加说明。

## 3. 本版本解决方案

V2x8 global tile按2-row shared布局直接存8个4B列，不做lane交换。每个4half MMA operand分两个2half读，attention数学、normalizer和PV顺序不变。

## 4. 具体落地策略

CPU全部1024cell bijection、1024 MMA operand位置与4B pair对齐检查通过。32bank/4B/16lane-phase模型预测冲突1，仅是假设。实际生成两次uint4 V加载、8次uint1 sharedstore和8次uint1 operandread。private alloca/stack0；66MT/50ST/max7、shared2048B。bpermute58→26、warpbarrier35不变，静态调用数不代表实测耗时。header/三imports和fallback AST检查通过；优化dispatch限causal且seq_len为BS整数倍。

## 5. Benchmark 对比

官方case12 naive_nsa/W10R50初测102.446us PASS。同进程B-P-C-C-P-B两轮12/12完整正确性PASS。中位数v28 88.7475us、v045 105.4415us、v046 101.2505us：对v045快3.97%，对v28慢14.09%。v046 run10=186.803us原样保留，原因未知；其余三次101.084/101.284/101.217us仍比baseline最大89.580us慢，拒绝结果不依赖丢弃异常值。未跑全14/外部OJ，因为case12性能门槛失败。

## 6. Profile 指标变化

重新采样原v28得到两份attention报告，但固定wave/traffic身份不符合历史同源launch：报告waves7096/7352，read203.6/233.6MB，write10.4MB。原始bundle、严格gate失败日志与解析字段全部保留，fresh_baseline_summary标为inconclusive。初始物理卡0%/826MB，之后8%/14465MB，slice0%；其他负载或counter scope为推测，未证明原因。未采新的candidate mcProfiler：目标性能失败且baseline counters不可信。mcTracer120秒仍timeout124，相关driver已结束，无有效timeline。actual bank conflict和occupied warps没有有效实测，max7只是编译上限。ISA不可用、没有新Roofline；未改GPU设置。

## 7. 实验总结

rejected_target_performance。去掉交换与MT74→66已生成并通过正确性，局部改进仍不能击败原始v28，且窄shared读写的真实代价无法由异常profile量化。主submission保持SHA42911561...。下一轮转向case6的D128/BS32，基于已有scalar V读取证据，尝试64-feature-plane的行对布局及批量operand读取；不能直接套用D128 v037已失败的全128-column bank假设。此版完整源码SHA ea381905...；所有证据与报告归档后再开始新版本。
