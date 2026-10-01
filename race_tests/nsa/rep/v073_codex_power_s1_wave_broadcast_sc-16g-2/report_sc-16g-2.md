# codex-power v073：两查询CTA的wave编号广播

**计数更正：整组实验（含对照）17次参考检查；精确候选为5次，覆盖官方case [6]。下文整组总数不得解读为候选单独执行次数；原始CSV、正确性结果及延迟结论不变。**


## 1. 上版本遗留问题

v072两个64线程query wave打包128线程CTA，完整C6通过但112MT/26ST、16KB shared、比v068慢6.526%。怀疑wave=threadIdx/64的地址表达式被当作varying；这是待验证原因，未解码ISA。

## 2. 问题原因分析

当前Maca get_warp_idx_sync仅除法。正常T.shfl_sync可从每64lane的lane0广播。广播可能改善地址分配，也会加一条collective；MT减少不自动证明吞吐或occupancy改善。

## 3. 本版本解决方案

只将wave赋值改成shfl_sync(tid/64,0,width64,full64mask)，放在有效块分支前。每64lane原本同值0/1，地址和整数语义不变；全部attention、两wave共享隔离、布局同72。C12自研68，其他12项v28黑盒。

## 4. 具体落地策略

恢复该赋值后的helper AST精确等于72。128线程子组整数身份核对，引用72完整fragment/坐标/隔离证明及hash。CPP确认正常广播、numerator32，无CTA同步；grid512x8/threads128/shared16KB、每wave32MMA不变。无手写builtin/外源/async/contentcache。

## 5. Benchmark 对比

sc-16g-2，开始HEAD0601c643a，codex-power-v28-base；C6官方形状和完整v000::_run_one_case/naive_nsa/seed/容差不变，W10R50。screen102.492us PASS，四版B-I-P-C-C-P-I-B x2共16/16 PASS，整组实验17次完整C6参考，其中精确候选5次。

|版本|中位数us|范围us|
|---|---:|---:|
|baseline_v28|156.5950|156.431~157.128|
|parent_v068|95.8285|95.498~96.328|
|trial_v072|101.0255|100.884~101.100|
|power_v073|103.5750|103.281~104.084|


相对当前68慢8.084%、相对直接父版72慢2.524%，四次均慢于两种自研对照。对v28-33.858%是继承收益，非新增优化。保留全部原始数据，不重复重跑，不扩展full14/风险/OJ，不作全项正确或不退化声明。

## 6. Profile 指标变化

112MT->86、26ST->28、staticmax4->5；stack0/private0/shared16KB不变，LLVM有新增正常bpermute，staticMMA32/fdiv32。确实改变资源分配，但不能从中证明scalar分类、独占原因或真实occupancy。text均9216B，与72hash不同。

明确负面target不重复instrumented，引用70新鲜C6数据不冒充73。只读快照，GPU设置不变。此前trace124/header-only失败、ISA不可用、切片屋顶未标定，均无虚构数值/Roofline。

## 7. 实验总结

结论rejected_target_regression_despite_lower_MT。广播使分配减少26MT，目标反而更慢，拒绝该两查询配置。源SHA49d07624534fdf4f9aefb1a19a966a132a667049489f4a8ae80d27268df6229f，头行v073，17次完整C6参考及严格静态通过，仅归档复现。主目录精确v28和候选64/68保持原样。任务核实结束，限定四目录双语提交。

新证据允许一个不同上下文测试：在原来更快的单查询64线程CTA上广播同wave的block_start，保留8KB/shared和完整原布局/预取；是否改善寄存器和时间未知，必须新卡片及正式native验证，不把本轮MT下降当作该方向收益。
