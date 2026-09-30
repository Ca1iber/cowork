# power v037 PV vector layout / sc-16g-2

## 1. 上版本遗留问题

v036 case6配对179.8195us vs原v28 157.0405us，PV每lane64标量half shared loads。shared conflict0.86、效率80.33%。

## 2. 问题原因分析

向量加载能减少指令数，但二维bank模型只是框架假设。producer transpose和consumer load/MMA次序也是成本，尚未独立测定占比。

## 3. 本版本解决方案

保持QK物理swizzle，flat shared生命周期复用；V4x4 microtranspose，按16-row plane布局，实现列连续4half。手动TileLang native MFMA，每feature chunk加载后计算。无output relay变化。

## 4. 具体落地策略

布局4096cells bijection/8byte alignment验证；基于32banks4B/16lane-phase模型producer/consumer conflict1，只是预测。生成V consumer uint2及producer uint2，减少64scalar→16uint2/lane。5warp fence，grid1024x8，50MT26ST，stack0，staticMax8，实际shared8448/private0。源码头v037，三imports及static PASS，fallback AST保留原v28。

## 5. Benchmark 对比

原生case6、naive_nsa、warmup10/repeat50，screen319.217us PASS。上版同轮中位179.8195us、原v28 157.0405us（跨轮诊断），当前分别慢77.52%/103.27%。显著失败，不扩大paired/full14/OJ。留存未执行的paired工具，未伪造verdict。

## 6. Profile 指标变化

own2有效样本：shared效率48.39%、conflict3.43、loadlat52.89/52.80cycles；v036有效采集80.33%、0.86、41.0cycles。新MMA2.89/2.90%、MTE21.26/21.36%，旧5.32/5.42%、27.87/28.42%。L2hit92.65%改善，但读量37.61MB/写33.55MB未变少。trace20次314.624us。vectorization已实现，实测冲突却反向变差，bank模型未预测当前硬件行为，不能当保证值。序列load/MMA和transpose成本仍为推测。baseline参考v036 fresh采集，不复制原始数据。LLVM/mx-smi存档，ISA不可用；不构建缺少roof的Roofline。

## 7. 实验总结

rejected。减少指令和寄存器不足以证明更快，实测共享访问恶化。主文件保持v28。转向case12合并两个选中block/轮，减少归约与同步，同时验证局部寄存器增长；从独立helper改动，不读旧优化算法。
