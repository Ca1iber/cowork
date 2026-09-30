# power v035 feature CTAs / sc-16g-2

## 1. 上版本遗留问题

case6原v28约156us，独立S1尚未超越。v034 case12预取无收益。

## 2. 问题原因分析

假设每CTA只算64维输出可降低寄存器。但重复QK、增加CTA数可能抵消收益；这是待验证权衡。

## 3. 本版本解决方案

相邻两个64线程CTA处理同一token的不同输出feature，各完整计算16x32 QK并做16x64 PV。全局直接写输出，取消shared输出relay。

## 4. 具体落地策略

grid=(2048,8)，Q缓存32half/lane，K操作数4half/lane；native MFMA QK 8chunk x2 keytile。因果mask后归一化再转half PV。生成代码证明目标实现，精确三imports，无async/injection。源码db556f6a归档。编译50MT/30ST，stack0，staticMax8；实际dynamic shared12288B，private0。原始v033包装归档保留，其外部OJ失败不改变本实验screen失败结论；主提交已恢复v28。

## 5. Benchmark 对比

原生case6筛选入口，官方shape B8/L1024/H1/HQ16/D128/S1/BS32，FP16 causal，naive_nsa，warmup10/repeat50。
v035 298.941us PASS；原v28近期paired156.4645us（非同轮比较），相对约慢91%。非胜出，无需全14扩大验证。未提交OJ。

## 6. Profile 指标变化

mcProfiler有效2样本：v035 waves16384 vs v28 8192；MMA4.63% vs6.06%，MTE29.42% vs34.93%；read37.59MB vs37.85MB，write33.56MB一致；L2hit80.80% vs76.53%；shared nonconf75.51% vs89.19%，conflict1.26 vs0.36，loadlat42.5 vs38.2cycles。
mcTracer最后20次295.424us。总waves不是occupancy。较好L2命中没有抵消重复work和shared访问恶化。首次own profile路径错误，无有效kernel，完整标注保留，正确路径重试才有以上数据。LLVM已采集，ISA工具不可用；mx-smi环境快照保存。未构建缺少硬件roof的Roofline。

## 7. 实验总结

rejected。减少静态寄存器并未降低端到端时延。下一步检验单CTA完整128feature配合shared Q/K/V生命周期复用：删除重复QK，将实际shared上限降到8192B；输出寄存器增加有风险，生成代码/resource/native gate必须先通过。其他case保留基线。
