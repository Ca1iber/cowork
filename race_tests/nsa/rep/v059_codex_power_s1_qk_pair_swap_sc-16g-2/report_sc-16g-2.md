# codex-power v059 Q/K pair swap / sc-16g-2

## 1. 上版本遗留问题

main原v28不变。v057 C6已快约30%，有效scope profile仍有shared conflict2.21/load65cycles。v058 V packing只增加约0.5%，新counter范围异常。回到v057，独立检查Q/K address pattern，不把kernel-wide问题归因PV。

## 2. 问题原因分析

旧qk slot的row低3bit重复，16-lane/32banks/4B模型中8B operand对应bank-word重复2次。模型不等同真实hardware阶段划分或吞吐。置换rowbit3/colbit6到low-col bit2可模型peak2→1，但shared split-store和reg开销可能抵消收益。

## 3. 本版本解决方案

编辑前hypothesis/初步domain/bank模型证明。Q/K global16B load到local8halves，再两次8B shared store；logical4half消费者连续。保留v057 V、math、masks、sync、8192B arena及proven bounds；C12依赖v056不变。原v28完整prefix/entry AST不变，code cache不含tensor内容，attention数据工作每次调用完整执行。

## 4. 具体落地策略

Q/K2048/4096 bijection、16896 valid block-token pair与所有global/local/fragment bounds验证。最初XOR表达被scalar化：138MT、133.212us screen PASS。base+element等价但仍未识别alignment；两个debug source/codegen/日志分开保留，无正式收益宣称。最终显式tail为bit2 XOR(rowbit3,colbit6)×4+low2bits，6144坐标等价，compiler看到对齐。实际CPP global uint4/consumer/store uint2验证；104MT/22ST、stack0/private alloca0/shared8192B，compiler max4非occupiedwarps。输出Fragment告警保留，lowered2048 unique写，未关racechecker。Debug所有进程terminal才改写，未丢弃结果。

## 5. Benchmark 对比

官方shape/input/seed0/naive_nsa/W10R50不变。最初scalar debug source133.212us PASS单独记录，hash与最终source不同，不混入最终性能结论。最终screen106.250us PASS；三方同process对称12/12 reference PASS：v28156.5185us、v057110.2565us、v059106.573us，对parent快3.341%、对v28快31.910%。candidate106.527..106.598低于parent110.060..110.351，保留全部观察。

全14三方对称168/168 PASS，C6对parent再现3.152%，对v28快32.176%。C12与parentGPU字节相同，77.7910→77.7905us；不用字节identity豁免其他正delta。完整中位数如下：

|case|v28 us|v057 us|v059 us|vs v28|vs parent|
|---|---:|---:|---:|---:|---:|
|1|8.8600|9.1085|9.3260|+5.260%|+2.388%|
|2|9.3210|9.3415|9.2800|-0.440%|-0.658%|
|3|12.0655|12.0520|12.0730|+0.062%|+0.174%|
|4|12.5005|12.6235|12.8745|+2.992%|+1.988%|
|5|31.4470|31.5135|31.5005|+0.170%|-0.041%|
|6|156.4745|109.5810|106.1275|-32.176%|-3.152%|
|7|30.9815|31.2550|31.2115|+0.742%|-0.139%|
|8|52.2570|52.2545|52.2395|-0.033%|-0.029%|
|9|52.4135|52.4340|52.3980|-0.030%|-0.069%|
|10|12.4290|12.3855|12.4310|+0.016%|+0.367%|
|11|23.4620|23.6055|23.6800|+0.929%|+0.316%|
|12|83.6710|77.7910|77.7905|-7.028%|-0.001%|
|13|11.2715|11.3995|11.2640|-0.067%|-1.189%|
|14|19.9400|19.9320|19.8095|-0.654%|-0.615%|

profile actual terminal后，exact archive对7项风险三方对称复测84/84 reference PASS：case1 +0.201%；case3 +0.677%；case4 -0.269%；case5 +0.075%；case7 -1.298%；case10 +0.285%；case11 -1.086%。case4/7/11初始增加未复现，1/3/5/10仍positive，不能称noise或豁免。所有观察保留，没有继续采样挑选更好结果。
Final exact archive另跑14/14 reference PASS。最终source共279完整checks：screen1+target12+all14168+risk84+archive14，W10/R50不变。debug初始source另1次screen PASS独立记录，不混入最终SHA正确性/性能。归档单次us不与旧baseline跨时段相除。

## 6. Profile 指标变化

v059/v057各counts2/per-kernel实际退出0，四份waves8192/write33554752B，与host8192 single-wave CTA/output33554432B一致；necessary footprint checks全过，不声称排除所有scope风险。read v05937.7073/37.7096MB、v05737.7301/37.7354MB，接近，不支持大量traffic消除。MTE49.82/51.06% vs46.24/46.09%，MMA8.98/9.21% vs8.81/8.78%。shared nonconflict71.01/71.02% vs60.49/60.48%，conflict1.25 vs2.21cycles，load48.15/48.41 vs64.82/65.30cycles。shared代价改善与native快3%方向一致，但aggregate指标不能量化Q/K独占贡献、split-store/寄存器代价或硬件bank模型是否逐项正确。

保存UTC mx-smi/CPP/host/LLVM/resource/raw bundle。Achieved waves raw不作occupancy。ISA工具不可用、actual sGPU roof未校准；不制作虚假Roofline、未改GPU/benchmark。mcTracer未重跑，历史v049等timeout无有效timeline按path引用。终端自动审批读取/启动命令一次超时，确认rejection后用较短命令重试成功；没有因观察等待重启GPU任务。

## 7. 实验总结

inconclusive_pending_external_oj_no_regression。C6对v057两组paired快约3.15–3.34%，对v28约32%；C12保留约7%。正确性和import/生成代码合规通过，其他case runtime/真实OJ不退化仍须核验。最终source SHA3f72df300a76048e296107ed3aba55ef979baf32aa4839bd037bc15c2fc356b3，首行# codex-power v059。debug scalar sources分别保留，不计入最终source收益。main42911561...与v05769338093...均保持不变；不从us估算OJ分数，不把kernel-wide计数直接当某一stage或occupiedwarps。
