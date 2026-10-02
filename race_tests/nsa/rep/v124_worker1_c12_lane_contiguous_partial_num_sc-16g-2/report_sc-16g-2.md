# v124 C12 partialNum连续float4布局（sc-16g-2）

## 1. 上版本遗留问题

v122原C12 native相对bestCB13慢48.640835%；v123原profile中C122共享非冲突约59.45%、冲突2.745、WGload66，父版100/0/48。支持隔离Num物理布局，但未证全部原因。

## 2. 问题原因分析

原Num共享地址按head64+feature，可能增加共享冲突。Two waves/CTA4/shared10496/FP32合并成本仍在；改变布局也改变地址ALU安排，不能预称收益或唯一bank原因。

## 3. 本版本解决方案

仅warp1 Numwriter和warp0 Numreader索引改chunk256+lane4+e。header124/source1c1b，正确parentJIT/CB1318prefix/单64F32Reduction/CTA4/global/math完全保持。逆变换恢复closed122字节；源1024bijection/256float4向量16B对齐及sourcevalidator0。

## 4. 具体落地策略

唯一5compile stages实际wait0，metadata2pairs4files/0NSAref。实际CPP仅NumW/R两行地址变，256float4/1024head-feature W1/R0逐点相同、无越界/非重叠；resource68MT42ST/max7/stack0/dyn10496，IR32staticMMA/0alloca/AS5。然后唯一B28-CB13-C124-C124-CB13-B28两轮originalC12fullnaive/seed0/F16GradTrue/1e-2/W10R50，5+23+4/28/OOM13/unknown1G/600/.5/1s/ownedguards不变。12native及outer真实wait全部0，未追加样本。

## 5. Benchmark 对比

|版本|中位µs|范围µs|C124相对变化|
|---|---:|---:|---:|
|B28|83.3895|82.811–83.681|+16.979956%|
|bestCB13|68.8665|68.664–69.294|+41.649423%|
|C124|97.549|97.280–97.823|拒绝|

两轮vsCB13 +41.281320%/+41.789530%，allC>allP，无rangeoverlap。4candidate fullrefs/12inclusive observed=clean全部naive PASS，只有C12不是all14/no-reg/OJ。旧122102.8275us为不同实验历史，不拼中位或用赢失败版替代bestcontrol。

## 6. Profile 指标变化

本版无MC/trace新增，不能声称共享conflict已改善。resource与122相同仅静态编译事实，不是occupancy。actualNum布局和值对应已物化，不等净收益。1053compile+native samples（native956）wholepeak26631241728B、OOM13保持；采样峰非上界，event含50Python调用不纯kernel。

## 7. 实验总结

rejected_latency_vs_current_best_CB13。实际Num变换正确与41.65%性能退化同时保留，不复测/推广/自动all14。其他13源码仍CB13，但无该候选all14验证。旧121gate1、122拒绝和123raw全部原样，main429保持；所有selfjobs terminal，后续仅按leader新分派行动。
