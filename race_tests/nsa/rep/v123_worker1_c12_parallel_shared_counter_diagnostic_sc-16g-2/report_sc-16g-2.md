# v123 原始C12双源码共享计数诊断（sc-16g-2）

## 1. 上版本遗留问题

v122 Num槽修复后原C12正确性4C12 PASS，但102.8275us相对CB13 69.1785us慢48.640835%。保持该拒绝与旧121gate1，不重测native。

## 2. 问题原因分析

候选新增two waves/CTA4/shared10496与NumF32 stride64。Num布局可能有共享冲突，但aggregate计数不能单独证明Num是全部原因。source、reference或资源不变化。

## 3. 本版本解决方案

独立唯一CB13→C122两个mcProfiler CLI，各counts2原十指标；原driver573 case12/seed0/GradFalse/initial1+warm10+ROI20，非GradTrue/fullnaive/W10R50输入与计时。两tool records不是独立native重复。

## 4. 具体落地策略

仅复用closed122真实CPP/host及原件身份，不额外metadata/resource/IR/newsource。5GiB/28/OOM13/unknown1GiB/600s/.5s/1s/owned-only及原Popen守卫保持。原始dumped_result十项各unique/isErrorfalse/finite、write8MiB+残量0..512；Achieved/Dispatched分别记录，不套未知相等公式且不恢复117旧scopegate1。

## 5. Benchmark 对比

本版新candidate/inclusive fullrefs均0，newnative0。旧12248.64%退化保持，无新时间/正确性/全14/OJ结论。

## 6. Profile 指标变化

|raw指标|CB13两records|C122两records|
|---|---|---|
|共享非冲突%|100/100|59.441221/59.459980|
|avg共享冲突cycles|0/0|2.745552/2.744249|
|WGloadcycles|48.220343/48.313587|66.319303/66.016747|
|MTE%|69.692531/69.781565|63.751993/63.980536|
|MMA%|13.542312/13.558456|8.651761/8.688606|
|read bytes|9569440/9569376|9565216/9565280|
|write bytes|8388928/8388928|8388928/8388928|
|Achieved raw|4056/4059|8112/8112|
|Dispatched raw|4096/4096|8192/8192|
|L2 hit%|87.538146/87.537969|87.822634/87.822612|

4records全部numeric原界内，write残量均320；SDK和outer原wait全0/OOM13。622wholeCG样本观测峰26346323968B非上界。WGload不是DRAM、MTE/MMA不直接代表HBM或occupancy，bytes未做HBM校准，counter/payload匹配非独占证明；runtimegrid未建立，不推总launch数。

## 7. 实验总结

有限profile完成，共享访问效率/冲突/loadcycles退化是实际counter观察，支持隔离Num布局新假说，但不是唯一cause证明。保留所有raw及未执行准备SyntaxError事实，未重采/改界。自有jobs terminal；下一124仅源Numwriter/reader一致换chunk256+lane4+e，必须actual地址/数值/native门控，不预称收益。
