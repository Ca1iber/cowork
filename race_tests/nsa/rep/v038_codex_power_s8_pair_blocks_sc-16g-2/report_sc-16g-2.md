# power v038 pair blocks / sc-16g-2

## 1. 上版本遗留问题

case6各尝试仍输v28；独立v032 case12为92.403us，v28为83.689us。逐block8轮在线归约/缩放/同步可能有可削减成本。

## 2. 问题原因分析

已确认代码包含8轮归约，未隔离耗时占比。将两个block合并会增加score寄存器、shared和分支压力；不能只根据轮数减半预测收益。

## 3. 本版本解决方案

S8/BS16/D64/G16路径使用32-token逻辑tile，每轮合并2个选中block，循环4轮。joint max/sum和adaptive anchor保持数学语义，invalid/future单独mask；无有效block的pair跳过。

## 4. 具体落地策略

从独立registerQK helper改动；未查看原v28算法。Q缓存16half/lane，score8FP32/lane，K/V两个16row-plane gather；正常TileLang GEMM保持PV批量operand加载。生成代码selected<4、V uint2；fallback AST与原v28一致。头v038、三imports、无async/injection，source SHA见manifest。编译98MT/30ST，stack0，staticMax4；实际dynamic shared10240B，private0。

## 5. Benchmark 对比

项目naive_nsa、W10/R50、FP16 causal，official case12 B4/L1024/H1/HQ16/D64/S8/BS16。screen142.367us PASS。独立逻辑parent v032 matched92.403us、original v28 matched83.689us为历史对照（非本轮paired），当前慢54.07%/70.11%。主文件回退后的exact all14运行case12为83.702us，但未与候选做ABBA。显著失败，未扩大全14候选/正式paired/OJ。

## 6. Profile 指标变化

mcTracer最后20次139.008us，98regs/10240shared/private0。与native142.367us一致表明慢在device；资源相对parent70MT/max7升到98MT/max4。staticMax是编译上限，不是实测occupancy；不能断言某一资源唯一导致退化。LLVM/mx-smi保存，ISA不可用。本轮mcProfiler未运行，因native screen已明显失败；准备工具留存但不声称运行，后续需要则执行run_mcprof.sh。无新增Roofline。

## 7. 实验总结

rejected。减少归约轮数被较高资源/代码成本抵消，贡献比例未隔离。主文件保留原v28且14/14 PASS。下个假设：保留16-token QK的score footprint，只暂存两个FP16 probability fragment，延迟合并sum归约和输出rescale；先检查寄存器是否回到约70，不能再盲目扩大FP32 score tile。目标未完成。
