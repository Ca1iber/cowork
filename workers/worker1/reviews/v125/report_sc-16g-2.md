# v125 C12单warp有效块双槽（sc-16g-2）

## 1. 上版本遗留问题

双warp的122/124相对bestCB13分别慢48.64%/41.65%，已拒绝。本版从bestCB13单warp出发，不继承两warp路径。

## 2. 问题原因分析

原同一共享槽覆盖前需要prebar；双1024half槽可让下一producer写另槽，postProducer(n+1)见证read(n)完成后n+2才复用。VALID次数决定翻槽，selected奇偶不安全；减少bar仍有共享、状态地址、寄存器成本。

## 3. 本版本解决方案

Qslot0/next初1，每VALID K/V producer写next、postbar、consumer/MMA后xor1；invalid不写不翻。PV接K最后next，Out写/read最后next保留postbar。sourceb414/header125，正确jit/CB1318prefix/math32ScoreP32denNum16/globalQK16B,V8B,O16B原字节逆恢复。256mask/empty/nonprefix及向量证明0，root另独立65536 K/PV mask验证。

## 4. 具体落地策略

唯一5stage原wait0，2pairs4files/0NSAref；CPP4postbar调用点35/66/161/197，VALID Kflip90/PVflip174，firstIR64MMA/18warpbarrier/0allocaAS5，实际two-slot地址与原数学审查。共享2048→4096B，resource70MT48ST/max7/stack0，较父68/44代价记录非occupancy。随后唯一B28-CB13-C125-C125-CB13-B28两轮originalC12fullnaive/seed0/F16GradTrue/1e-2/W10R50及原5G/28/OOM13/unknown1G/600/.5/1s/ownedguards。12native和outerwait全部0，未加测。

## 5. Benchmark 对比

|版本|中位µs|范围µs|C125相对变化|
|---|---:|---:|---:|
|B28|83.8835|83.738–84.122|-13.088987%|
|bestCB13|69.591|69.412–69.801|+4.760673%|
|C125|72.904|72.320–73.318|拒绝|

两轮vsCB13 +4.165531%/+5.211743%，allC>allP，无rangeoverlap。4candidate fullrefs/12inclusive observed=clean均naivePASS，仅C12不是all14/no-reg/OJ。全部CSV字节/SHA保留。冻结plan performance.primary文字仍C122是已获leader承认的typo，actualjobs/source/summary均C125，未改冻结helper。

## 6. Profile 指标变化

本版无新MC/trace，不能归因共享/地址状态/寄存器中的某一个。64MMA不变、35→18barrier及资源变化是编译事实，少barrier不保证快。1059compile+native样本（native961）峰26782244864B/OOM13保持，仅观测峰非上界，event含50Python调用不纯kernel。actual打包工具deadline未执行、较短一次retry记录保留，无GPU重跑。

## 7. 实验总结

rejected_latency_vs_best_CB13：实际槽生命周期和完整原参考通过，但仍慢4.76%。保持sourceb414、旧125之前所有failure/raw与main429，无复测/推广/自动all14。所有selfjobs terminal；下一只准备case6 exactP84 freshbaseline counter证据，不改kernel、不猜共享冲突、占用或时钟原因。
