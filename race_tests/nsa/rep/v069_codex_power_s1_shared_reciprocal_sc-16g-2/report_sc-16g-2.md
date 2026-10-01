# codex-power v069：case6 共享倒数归一化

## 1. 上版本遗留问题

v068 的 C12 本地快约2%，但非目标项不退化仍未证明，主目录保持原始v28。C6沿用自研v060，约95us，资源100MT/22ST、max4、shared8192B。当前检查发现归一化IR有32个相同分母fdiv。

## 2. 问题原因分析

IR的32个fdiv是事实，不等于机器指令中有32次独立除法。假设显式倒数能让后端共享计算。所有12项非目标host wrapper和device CPP与v28相同，但计时上升仍需调查，代码相同不能豁免门禁。

## 3. 本版本解决方案

只改C6输出归一化：一次float32倒数，32个分量乘法。QK、P、PV、mask、地址、布局、同步全部保留。改变浮点舍入顺序，完整原始参考门禁不变。与自研v021的概率提前归一化不同，本版不改变P或PV。

## 4. 具体落地策略

helper _make_power_s1_shared_reciprocal 基于自研v060。C12精确自研v068，其余原始v28黑盒。原始前缀和run_kernel AST不变，只缓存code object。AST恢复证明仅一处归一化机制改变；Fraction/FP32模拟只是诊断，不代替native正确性。

## 5. Benchmark 对比

sc-16g-2，分支codex-power-v28-base，开始HEAD26d653386。C6官方形状B8,L1024,H1,HQ16,D128,S1,BS32，FP16，causal。共享v000::_run_one_case完整naive_nsa参考，seed/输入/容差1e-2不变，W10/R50。screen95.124us PASS；三版本 B-I-C-C-I-B x2 为12/12 PASS，连screen共13次完整参考。

|版本|中位数us|范围us|
|---|---:|---:|
|baseline_v28|157.1945|157.102~157.297|
|parent_v068|95.5495|95.462~95.713|
|power_v069|95.4290|95.263~95.447|

v069相对父版-0.126%，相对v28-39.292%；后者继承此前优化，不能计作本版收益。候选四点低于父版四点，但最小间隔只有0.015us；结合相同机器码不能建立新增GPU收益。保留全部样本，不继续重跑筛选数字。因机制已经被规范化，不扩展full14/OJ/profiler门禁。只声明C6已测13次通过，不声明全项正确或不退化。

## 6. Profile 指标变化

CPP和LLVM确认fdiv32->1，静态MMA32不变，100MT/22ST、max4、stack0/private0、dynamicshared8192B均不变。max4不是真实occupancy。相同mxcc O3/lineinfo/use-fast-math编译后的两份.text均8448B，SHA256d2972f80a1d713b8d598e1298cf6422bb78193f26c13334390325bb086d81538，逐字节相同。ELF段比较不等于ISA解码，但说明这组正常编译参数下没有新增指令变化；不能当作计时/OJ豁免。

本轮未启动mcProfiler/mcTracer：机制无机器指令变化且目标只有0.126%差值，追加instrumented比较无法证明该机制收益。没有伪造硬件计数或占用率。mx-smi只读快照确认物理C500/16G Compute25%切片，未修改设置；实际可达屋顶未标定，不作峰值归一化Roofline。native编译源码/标志摘录和哈希保存，原始资源、IR、.mcbin及比较脚本保留。

## 7. 实验总结

结论rejected_compiler_canonicalization_no_target_gain。IR的预期变化发生了，机器码未变、寄存器/共享内存不变，native仅0.126%差值，因此不把该机制当作新增优化。13次完整C6正确性通过；full14、风险复核、外部OJ、instrumented profile均未做并注明原因，没有全项完成声明。

精确源SHA938513935fb0cf878aa1e0f74e9b55a34a8ea00338cec115f785d2e50de04ff6，头行codex-power v069，归档仅为实验复现。主目录v28 SHA42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd、已有v064/v068候选均不变。限定本ID四目录双语exp提交后再开始下一版，已知worker核实结束。

下一步转向已观察的PV operand活跃范围：目前每plane先加载四个chunk共16half再做四次MMA，尝试逐chunk加载并立即消费，保持矩阵乘累加顺序和所有数据访问。必须核验机器码、MT资源和完整native时间，不能再凭IR操作数减少宣布收益。
