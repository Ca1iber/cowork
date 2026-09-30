# power v036 shared lifetime / sc-16g-2

## 1. 上版本遗留问题

v035分feature CTA重复QK，case6达298.941us，比原v28约156us慢。wave翻倍，寄存器下降未带来收益。

## 2. 问题原因分析

减少CTA冗余并复用shared有改善机会，但不能保证PV shared标量加载和输出写入效率。

## 3. 本版本解决方案

一个64线程CTA计算完整128feature，Q/K/V顺序复用32x128 half shared。Q先缓存local32half，fence后K，QK完成后fence再V。保留早期归一化。

## 4. 具体落地策略

grid1024x8，普通同步TileLang。shared数据8192B，加256B reduction workspace实际8448B；workspace在单warp reduce路径不访问。输出32FP32/lane，源码三imports，无async/injection。编译58MT/46ST，stack0，staticMax8；trace private0。生成代码QK与PV同一地址，5warp fence。fallback AST精确保留原v28。

## 5. Benchmark 对比

官方case6，B8/L1024/H1/HQ16/D128/S1/BS32，FP16 causal；项目naive_nsa、warmup10/repeat50。
screen181.279us PASS；ABBA两轮8/8 PASS，v28中位157.0405us，v036为179.8195us，慢14.505%。相对上实验screen298.941改善119.122us（-39.85%，跨轮仅诊断）。未全14扩大验证，未提交OJ。

## 6. Profile 指标变化

fresh mcProfiler各2有效样本。wave双方8192；v036 MTE27.87/28.42%、MMA5.32/5.42%，基线35.10/35.07%、6.09/6.08%。shared效率80.33% vs89.19%，conflict0.86 vs0.36，loadlat41.0 vs38.2cycles；L2hit73.28/73.36% vs76.53%。读量约38MB、写量约33.56MB，未形成流量收益。mcTracer最后20次175.488us。总wave不是occupancy；staticMax仅编译上限。LLVM和mx-smi快照保存，ISA不可用，未造缺少roof的Roofline。
生成PV为2keytile x8featuretile x4标量half加载/lane共64条，而QK为uint2。此差异为下一步目标；不能据单一counter断言占比。

## 7. 实验总结

rejected。shared和CTA冗余问题改善，但仍输原v28。三次失败后已完成fresh原v28 case6 profile。下一方向：PV列连续4half的microtranspose布局，让64条标量load变为16条uint2；QK维持原映射。要增加producer局部transpose成本，必须验证净收益。主文件继续精确v28。
