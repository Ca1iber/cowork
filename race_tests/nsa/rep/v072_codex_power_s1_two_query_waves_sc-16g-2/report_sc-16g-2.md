# codex-power v072：两个独立查询wave打包CTA

**计数更正：整组实验（含对照）13次参考检查；精确候选为5次，覆盖官方case [6]。下文整组总数不得解读为候选单独执行次数；原始CSV、正确性结果及延迟结论不变。**


## 1. 上版本遗留问题

v071降低MT但C6慢27.08%；当前自研v060/68 C6约95us、100MT/22ST、每CTA64线程单查询，8192CTA。更宽FP16 MMA缺乏当前SDK支持证据。本轮改查询分组，检验CTA调度粒度。

## 2. 问题原因分析

尚未证明CTA启动是瓶颈。两wave同CTA可能减少调度开销，也会增加地址表达式/共享内存成本。不能由CTA数量减少直接推导提速，也不能把静态warp上限当作occupancy。

## 3. 本版本解决方案

每CTA128线程、两个独立查询，token=2*pair+wave。共享[2,4096]互不相交；numerator改三轴Fragment、每线程仍32float。所有attention工作相同，不共享输入、不跨wave读取或同步。C12精确自研68，其余12项v28黑盒。

## 4. 具体落地策略

恢复所有分组改写后AST精确等于自研60。token0..1023双射；4096个fragment(thread,index)对覆盖128x32；Q/output两查询4096坐标、K/V8192坐标完整唯一。共享总8192half=16KB；CPP确认128线程、grid512x8、无CTA同步、局部numerator32。总waves8192不变，MMA每wave32。严格OJ静态检查通过，无异步拷贝/注入/手写一般builtin。

## 5. Benchmark 对比

sc-16g-2，HEADa92417214，codex-power-v28-base。C6 B8,L1024,H1,HQ16,D128,S1,BS32，FP16/causal。原始v000::_run_one_case和完整naive_nsa、seed/输入/容差不变，W10R50。screen100.884us PASS；B-I-C-C-I-B x2为12/12 PASS，整组实验13次完整C6参考，其中精确候选5次。

|版本|中位数us|范围us|
|---|---:|---:|
|baseline_v28|156.6055|156.544~157.210|
|parent_v068|95.0195|94.367~95.232|
|power_v072|101.2200|101.187~101.847|


候选对父版+6.526%，四次均慢；对v28-35.366%是继承收益，不算新增优化。保留全部原始样本，不重复重跑，不扩展full14/风险/OJ，不声明全项正确或不退化。

## 6. Profile 指标变化

MT100->112、ST22->26、staticmax4不变、stack0/private0；shared8192->16384B，text8448->9216B且SHA不同。目标预期的接近原资源未满足。更多地址指令/资源压力只是可能原因；无实际ISA解码或独占归因。

未为明确目标退化重复instrumented profile，引用v070新鲜三版本C6原始计数及kernel身份审计，不冒充72计数。只读mx-smi快照，GPU设置不变；此前tracer124/header-only、ISA不可用、切片屋顶未标定，无虚构Roofline。

## 7. 实验总结

结论rejected_target_regression_higher_MT：CTA减半未带来收益，反而慢6.526%，拒绝。精确源SHA40bb24ef1bc16d022ec910f27b2ce876dd5a7a2b686313c3fff961171c0c9b6f，头行codex-power v072，13次完整C6参考和严格静态通过，仅作实验复现。

主目录精确v28及既有64/68归档不变；worker结束，限定本ID四目录双语提交，原始证据/SHA目录保留。当前结果不能满足用户全项不退化要求。

后续依据：Maca get_warp_idx_sync只做除法；正常T.shfl_sync可显式广播每wave相同的编号。若广播使编译器认识warp-uniform值，可能减少地址MT，但API名称不能证明uniformity或性能。需新卡片、资源/机器码和完整native验证；尚未实施该方向。
