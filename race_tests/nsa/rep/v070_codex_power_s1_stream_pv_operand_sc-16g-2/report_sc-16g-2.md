# codex-power v070：C6 逐chunk消费PV operand

## 1. 上版本遗留问题

v068 C6约95us、100MT/22ST、max4、shared8192B。v069倒数改写被后端规范化成相同机器码，拒绝。本版另测PV临时量生命周期：原helper每plane先加载16half，再执行四次MMA。

## 2. 问题原因分析

100MT是静态资源事实，不证明峰值来自PV。假设逐chunk立即消费4half能缩短存活区间、降低分配；编译器可能重新调度，必须核对机器码和native时间。未以DSL数组大小代替真实寄存器或occupancy。

## 3. 本版本解决方案

C6 operand16half改4half，每chunk加载两个4B共享数据后立即MMA。所有QK/P/mask/分母/output布局/global访问/同步保留，PV每输出仍keytile0再1。C12沿用精确自研v068，其余v28黑盒，缓存只含code object。

## 4. 具体落地策略

自研_make_power_s1_stream_pv_operand，原始v28前缀/入口AST不变。恢复AST精确等于v060；4096个lane分量地址和16次PV调用顺序核对相同，4half索引0..3，共享V消费阶段无写入。生成CPP实现流式消费，uint1共享加载宽度保留。无异步拷贝/注入/手写一般builtin。

## 5. Benchmark 对比

sc-16g-2，开始HEAD3c3a9366f，codex-power-v28-base。C6 B8,L1024,H1,HQ16,D128,S1,BS32,causal，FP16。原始v000::_run_one_case完整naive_nsa，seed/输入/容差1e-2不变，W10/R50。screen96.650us PASS；三版B-I-C-C-I-B x2，12/12 PASS，共13次完整参考。

|版本|中位数us|范围us|
|---|---:|---:|
|baseline_v28|156.5595|156.472~156.826|
|parent_v068|95.2680|95.181~95.340|
|power_v070|97.1165|97.055~97.142|

v070相对父版+1.940%，四个候选样本都慢于四个父版；相对v28-37.968%是继承的旧优化，不算本轮收益。原始计时完整保留，不再重跑。目标已明确退化，不扩展full14/风险复核/OJ，不声明全项正确或不退化。独立profile用于诊断负面结果和刷新C6基线。

## 6. Profile 指标变化

独立C6 mcProfiler，v070/v068/原始v28各counts2。六次均8192waves、33554752B输出写入，符合8192CTA/33554432B结果足迹；必要条件不保证无外部计数混入。Achieved waves原始值不是occupancy。下表为同轮两次均值，原始包完整保留：

|指标|v28|v068|v070|
|---|---:|---:|---:|
|Global read B|37831712.000|37648544.000|37654432.000|
|Global write B|33554752.000|33554752.000|33554752.000|
|L2 hit %|76.530|64.960|64.960|
|MTE duty %|34.905|52.760|52.045|
|MMA duty %|6.055|10.295|10.155|
|shared nonconflict %|89.190|75.385|75.380|
|conflict cycles|0.360|0.970|0.970|
|load latency cycles|38.220|50.035|49.970|

C6静态32MMA/fdiv32不变，100MT/22ST、max4、stack0/private0、shared8192B均不变。机器.text从8448B变8704B，SHA不同；不能从代码长度推断具体ISA指令数量。operand缩小并未降低实际资源，shared指标基本相同，MTE/MMA略低与native退化同向；失去加载/计算重叠只是推测，不声明独占原因或峰值寄存器发生在某阶段。

本轮有141个只读mx-smi摘要样本，因自动审核超时后重试才启动，未覆盖profile最初阶段；只解释实际记录窗口，不推导每kernel带宽/AP分配。未改GPU设置。mcTracer不重复已有124/header-only失败，ISA解码工具不可用，切片实测屋顶未标定，不绘制误归一化Roofline。

补充profile身份审计：现有driver不设置requires_grad，native设置True。分别只导出两种metadata，v28 C6的device CPP及host wrapper相同，且同于正式native归档，标记未改变当前程序；不保证运行周期或计数独占相同。初始诊断脚本漏替换sources标签，导出两模块False，独立保留并明确范围；最终比较另存，未混入native时间或正确性计数。新鲜v28 shared约89.19%高于自研75.38%，但native更慢，单一bank效率不能指认瓶颈。

## 7. 实验总结

结论rejected_target_regression_unchanged_MT：C6相对父版慢1.940%，MT不降，保留全部样本并拒绝该机制。13次完整C6参考通过，但未做full14/OJ，不声明全项正确或不退化。profile解释当前负面方向，并提供新鲜C6基线；没有重跑筛选有利数字。

精确候选SHA6fd2539426746bc0e4791593471e8af8f3ed80883ec08b8e062a3e51d48e5a01，头行codex-power v070，严格静态检查通过，仅作拒绝实验归档。主目录精确v28和既有v064/v068候选未改，全部worker/profile/sampler核实结束，限定本ID四目录双语exp提交。

下一步核对K生产阶段八次完全展开拷贝的代码和活跃数据；尝试正常TileLang运行时循环约束生产者窗口，明确代价是循环控制/更少预取。当前只有100MT资源未降的证据，尚未证明峰值来自该阶段，需新假设卡与机器码/完整native门禁，避免单凭源码变量数量宣布收益。
