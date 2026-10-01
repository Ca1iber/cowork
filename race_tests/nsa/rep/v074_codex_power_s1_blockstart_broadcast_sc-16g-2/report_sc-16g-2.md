# codex-power v074：单查询CTA的block_start广播

## 1. 上版本遗留问题

v073两查询wave广播使112MT降86，但比单查询68慢8.084%。原单查询自研60/68仍约95us、100MT/22ST、8KBshared。本版单独检验块地址广播，不带入拒绝的查询打包或循环改动。

## 2. 问题原因分析

每query的Indices地址对64lane相同，block_start整数已uniform。显式broadcast可能改变地址分配，也可能冗余并增加指令；不能把73资源下降移植为本版收益，具体编译/时间决定。

## 3. 本版本解决方案

仅block_start原Indices*32赋值外包正常T.shfl_sync(value,0,width64,full64mask)，在有效分支前执行。原64线程、8KB、QK/P/PV/布局/完整预取/输出不变。C12精确自研68，另12项原始v28黑盒，缓存只含codeobject。

## 4. 具体落地策略

恢复赋值后helper AST精确等于自研60。所有lane同一只读Indices，入口全64参与，源lane0与原值相同；引用原有界/归属证明及hash。CPP确认一条正常broadcast与8192Bshared/64threads/local32；无异步拷贝/外源/手写一般builtin。

## 5. Benchmark 对比

sc-16g-2，HEAD2804c78f8，codex-power-v28-base；官方C6形状，原始v000::_run_one_case和完整naive_nsa、seed/输入/容差不变，W10R50。screen97.132us PASS，三版B-I-C-C-I-B x2为12/12 PASS，最终源13次完整C6参考。

|版本|中位数us|范围us|
|---|---:|---:|
|baseline_v28|156.8665|156.360~157.266|
|parent_v068|95.5060|95.171~95.626|
|power_v074|97.6000|97.567~97.638|


对父版+2.193%，四次均慢；对v28-37.781%是继承收益，不能归给本轮。全部样本保留，不重复重跑、不扩展full14/风险/OJ，不声明全项正确或不退化。

## 6. Profile 指标变化

MT100不变、ST22->24、staticmax4不变、stack0/private0/shared8192B不变；MMA32/fdiv32，text8448->8704B、hash不同。广播未降低目标资源，新增指令/寄存器成本可能影响时间；未解码ISA或独占归因，staticmax不是occupancy。

明确负面目标未追加instrumented，引用70新鲜C6三版本/身份审计，不冒充74。只读快照、GPU设置不变；此前trace124/header-only、ISA不可用、sGPU屋顶未标定，无虚构计数/Roofline。

## 7. 实验总结

结论rejected_target_regression_no_MT_benefit。源SHA6579fb85cded6e02ae7039631a9c33ef289b665cea8080e2cf16e5a098b1efe8，头行v074，13次完整C6参考/严格静态通过，仅实验复现。主目录精确v28和候选64/68不变；worker结束，限定四目录/七节报告/原始证据/SHA清单双语提交。

该上下文广播失败，后续转向V加载/转置/operand的指令宽度。当前producer每16x64tile两次16B global读取及八次4B shared写入，consumer每MFMA两次4B shared读取；可检验4row布局/8B共享向量，保留prefetch和计算顺序，代价是global8B读取/更多packing。新方向尚未实施，bank模型必须由真实计数和native验证。
