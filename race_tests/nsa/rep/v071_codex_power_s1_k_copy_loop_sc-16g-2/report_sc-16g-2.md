# codex-power v071：C6 K-copy运行时循环

**计数更正：整组实验（含对照）13次参考检查；精确候选为5次，覆盖官方case [6]。下文整组总数不得解读为候选单独执行次数；原始CSV、正确性结果及延迟结论不变。**


## 1. 上版本遗留问题

当前C6沿用自研v060，约95us，100MT/22ST，max4，shared8192B。v069机器码相同无收益，v070缩小PV数组未降低MT且慢1.94%。观察到K拷贝八次完全展开，本轮检验该阶段的资源/预取取舍。

## 2. 问题原因分析

未证明峰值来自K producer。假设保留运行时循环可减少同时存活的加载/地址临时量；代价是循环控制和较少预取重叠。不得把更高静态warp上限直接当作更高实测occupancy或更快。

## 3. 本版本解决方案

仅K-copy loop加正常TileLang explicitFalse/factor1标注，保持part0..7、完整body、global16B加载/shared8B写入、后续同步。QK/P/PV/输出计算和布局完全沿用自研v060；C12自研v068，另12项v28黑盒，不含69/70拒绝的改动。

## 4. 具体落地策略

恢复loop注解后helper AST精确等于父版。4096个K元素完整覆盖，八组共享目标各512half且互不重叠，fetch索引0..7完全赋值。正常CPP显示pragma unroll1；优化LLVM保留真实回边和unroll.disable，静态MMA32/fdiv32不变。无异步拷贝、源注入或手写一般builtin。

## 5. Benchmark 对比

sc-16g-2，HEADcf6cd28d0，codex-power-v28-base；官方C6 B8,L1024,H1,HQ16,D128,S1,BS32，FP16/causal。原始v000::_run_one_case、完整naive_nsa、seed/输入/容差不变，W10R50。screen120.038us PASS，三版B-I-C-C-I-B x2共12/12 PASS；整组实验13次完整C6参考，其中精确候选5次。

|版本|中位数us|范围us|
|---|---:|---:|
|baseline_v28|156.4825|156.339~156.554|
|parent_v068|95.2290|95.063~95.370|
|power_v071|121.0160|120.776~121.180|


相对父版+27.079%，四次候选全部慢于父版；相对v28-22.665%是继承旧机制，不算本轮收益。完整保留样本，不再重跑。明确目标退化，不扩展full14/风险/OJ，不作全项正确或不退化声明。

## 6. Profile 指标变化

资源MT100->94、ST22->24、static max4->5，stack0/private0、shared8192B不变，机器text大小同8448B但SHA改变。MT预测下降发生了，native反而慢27.08%，说明该资源取舍在当前条件下失败；循环/地址控制和失去预取重叠是候选原因，尚未独占归因。不能由静态max推断实测occupancy。

未为明确负面目标重复instrumented profile；参考上版v070同轮C6三版本原始mcProfiler和kernel身份审计，不冒充本轮计数。只读mx-smi快照保留，GPU设置未改。mcTracer此前124/header-only失败无有效timeline，ISA解码不可用，sGPU可达屋顶未标定，没有伪造指标或Roofline。

## 7. 实验总结

结论rejected_target_regression_despite_lower_MT。K运行时循环降低6MT、增加2ST，但整体明显退化，拒绝。精确源SHA2ec13cefd6b71b202e82e3e4c28bfac823a2a03779980dc9de84da18a2aa8afe，头行codex-power v071，严格静态检查及13次完整C6参考通过，只作实验复现。

主目录精确v28 SHA42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd和候选64/68不变。当前worker确认结束，只暂存本ID四目录，七节中文报告/原始证据/SHA目录和双语exp提交后再开始下一版。

顺带核对当前SDK MMA头文件，仅找到明确的16x16x16f16原语；16x16x32条目是int8，未建立更宽FP16形状支持证据，不依据其他架构规格调参。下一步可测试每CTA容纳两个独立64线程查询波：减少CTA数量、保持总wave/全部attention工作，但16KB共享内存及分片归属必须重新证明。该方向尚未实施或验证。
