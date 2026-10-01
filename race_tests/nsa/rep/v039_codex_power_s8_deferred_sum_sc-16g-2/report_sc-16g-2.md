# power v039 deferred sum / sc-16g-2

## 1. 上版本遗留问题

v038 32-token score tile为98MT/10KB，142.367us。独立v032 S8为92.403us，原v28约83.7us。

## 2. 问题原因分析

减少sum/output缩放可能有收益；FP16缓存、舍入、同步可能抵消。均为假设。新容器fresh v28 profile仍MMA11.08%、MTE62.80%。

## 3. 本版本解决方案

两次16-token QK后合并lane sum，一次warp sum。概率暂存两组4half/lane；normalizer逐block更新，旧den/output统一按rescale乘积更新。第二block更新anchor时重缩放第一组half。

## 4. 具体落地策略

4pair、max8次、sum4次，16-token score。GEMM fragment slice坏optional改16-token中转；rescale默认完全replicate冲突改显式G16/rep4。首次native错误是最终归一化被组装进pair内，已改全部pair后仅一次。debug源码/log/失败correctness保存，不报失败timing。最终72MT/30ST、stack0/max7/shared4608/private0。源f47407ef，头v039、三imports、禁止async/injection。共享validator加强三imports/class范围/manual builtin检查。

## 5. Benchmark 对比

native case12 B4/L1024/H1/HQ16/D64/S8/BS16，FP16 causal，naive_nsa/W10R50，最终93.307us PASS。parent v032 matched92.403us，当前+0.904us/+0.98%（跨轮诊断）；v28 rollback83.702us，当前+9.605us/+11.48%。未formalpaired/full14候选/OJ。

## 6. Profile 指标变化

trace20次90.368us，72regs/4608/private0。fresh基线2样本：4096 dispatched、achieved raw4056/4057（总量，非occupancy），MTE62.80%、MMA11.08%、L2hit91.66%、read9.5736MB/write8.3889MB，shared48.43%/conflict2.81/2.82。未采own mcProfiler，因为screen输基线；不冒称counter改善。LLVM/mx-smi保存，ISA不可用，无缺少roof的Roofline。生成K共享0、V共享2048bytes，各2KB、互不重叠；Q/K复用，output最后复用。

## 7. 实验总结

rejected。sum减半但未超v28。主文件保持原v28且回退14/14通过。下一假设：首PV pre-fence已被本pair至少一个QK pre-fence覆盖，且K/V分离，可去掉每pair首PV冗余fence；第二PV保护prior V读取的fence保留，检查新lowering仍分离。目标未完成。
