# codex-power v057 proven bounded S1 access / sc-16g-2

## 1. 上版本遗留问题

main仍为原v28。v056 case12有paired收益但OJ不退化待证；case6 own v049/v056仍有K/V padding guards，76MT/26ST/shared8192B。

## 2. 问题原因分析

L1024是BS32整数倍，start=32*index且0<=start<=token<=1023，推出start<=992及lastrow<=1023。冗余条件可能限制address/control/scheduling；没有预设唯一瓶颈。

## 3. 本版本解决方案

编辑前记录hypothesis，先证明全部访存域，再仅为exact C6 factory设置TL_DISABLE_SAFE_MEMORY_ACCESS及compile-time L%BS==0。math/layout/sync/valid/causal保持不变，normalized helper AST等同own v049；原v28 prefix/entry AST不变。C12依赖own v056不变。cache仅编译code object，所有attention数据工作在每次调用内。

## 4. 具体落地策略

验证16896合法token-block pair，Q/output2048与K/V4096坐标、shared bijections及local/fragment bounds。CPP条件4→2，仅移除K/V padding。全14生成代码OJ静态通过。92MT/22ST、stack0/private alloca0、shared8192B，较parent+16MT/-4ST，compiler maxWarps6→5非实际occupancy。输出Fragment告警仍保留，lowered2048 unique写；未关racechecker。LLVM static gethwreg40/sethwreg80/bpermute4/mma32与parent相同，不能当dynamic耗时。其他12项GPU字节等同v28，C12等同v056。

## 5. Benchmark 对比

官方shape/seed/input/naive_nsa、W10/R50不变。screen C6 111.140us PASS；三方对称12/12 PASS：v28157.2275us、v056151.291us、v057110.3565us，快29.811%/27.057%。candidate109.932..111.140低于baseline156.641..157.317，保留全部观察。

全14三方对称168/168 PASS。case6快30.056%，case12快7.186%。以下完整中位数：

|case|v28 us|v056 us|v057 us|vs v28|
|---|---:|---:|---:|---:|
|1|9.1725|8.9190|9.1440|-0.311%|
|2|9.7770|9.8150|9.6745|-1.048%|
|3|12.8670|12.8870|12.8050|-0.482%|
|4|13.4630|13.3835|13.4705|+0.056%|
|5|31.4880|31.5165|31.6545|+0.529%|
|6|157.2940|151.4060|110.0185|-30.056%|
|7|31.2910|31.2220|31.2320|-0.189%|
|8|52.3265|52.2600|52.2340|-0.177%|
|9|52.4670|52.3210|52.4365|-0.058%|
|10|12.4415|12.4490|12.4545|+0.104%|
|11|23.4805|23.4160|23.0760|-1.723%|
|12|83.8115|77.8035|77.7885|-7.186%|
|13|11.3050|11.3380|11.3740|+0.610%|
|14|20.4210|20.5210|20.4315|+0.051%|

profile terminal后从exact archive三方复测60/60 reference PASS：case4 +6.497%；case5 +0.126%；case10 +1.303%；case13 -0.721%；case14 +1.055%。case13增加未复现，4/5/10/14仍有正delta。保留case4三方12.49..42.619us及case14 baseline28.979us等长样本，不删除或noise豁免，没有继续采样挑好结果。

exact archive全14另跑14/14 PASS，总255完整reference checks：screen1+target12+all14168+risk60+archive14。归档单次us不与旧baseline跨时段相除。

## 6. Profile 指标变化

v057/v28各两次mcProfiler counts2/per-kernel，实际退出0。四份waves均8192、write33554752B，与host8192 single-wave CTA/output33554432B一致；necessary footprint checks全过，不声称排除所有scope风险。read candidate37.7533/37.7399MB、baseline37.8340/37.8404MB接近，不支持大量traffic消除。MTE45.89/45.90% vs34.97/34.94%，MMA8.74% vs6.06%。shared nonconflict60.50/60.49% vs89.19%，conflict2.21 vs0.36 cycles，load latency64.80/65.49 vs38.20/38.24 cycles。端到端更快但shared指标更差，不宣称bank问题解决；各贡献与唯一主因未知，Achieved waves raw不是occupancy。

保存UTC mx-smi/CPP/host/LLVM/resource/raw report bundle。未重跑mcTracer，旧v049等多次timeout无有效timeline；按原path保留。ISA工具缺失、actual sGPU roof未标定，不制作虚假Roofline。GPU/benchmark未修改。SSH断开后核验同容器/commit/source/process，builder已完成，未重复重启。

## 7. 实验总结

inconclusive_pending_external_oj_no_regression。C6两组paired稳定快约30%，C12保留约7%，255完整reference checks及全14 OJ源/生成代码静态通过。其他case正delta和实际OJ缺失仍阻止“不退化”结论。source SHA693380934e04f2328a9b2abcdd478889dee8278b2d4fab2b46d001bf435fc514，首行# codex-power v057。main42911561...、独立v04992887321...、v05614b699e777...均不变，不从本地us预测分数。新的profile为shared读法提供下一轮可检验假设，仍须独立测量。
