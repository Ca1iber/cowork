# codex-power v066 four-block loop groups / sc-16g-2

## 1. 上版本遗留问题

v064 runtime loop有约2.8%增量，v065 pair-group signal0.313→0.062%且overlap未解决。main原v28不变，v064待实际OJ不退化。本轮补齐group4中间点，比较8/16/32/64staticMMA的loop/code-size取舍。

## 2. 问题原因分析

group4可减少loop backedge次数并暴露更多scheduling，但增加code/live-state；编译器也可能完全unrollouter2。资源和time不能从source loop或少数好看样本推定。

## 3. 本版本解决方案

编辑前hypothesis；outer selected_group serial2/inner within_group unroll4，selected=4*group+within。每block original bodyAST与normalized完整helper一致，顺序0..7/math/address/mask/sync/proven bounds/2048B arena/runtime work及C6 own v060不变。cache仅code object，原v28 prefix/entry AST保持。无新增GPUparallelism。

## 4. 具体落地策略

actual CPP和LLVM保留outer backedge，staticMMA32sites，对比single8/pair16/full64。IRbytes single85579/pair114372/quad171631/full282324。每valid runtime block仍4QK+4PV。82MT/24ST、stack0/private alloca0/shared2048B/compiler max5，非occupancy。domain/body/order和selected源码/生成代码静态PASS，首行# codex-power v066。完整reference验证数值与遍历。

## 5. Benchmark 对比

官方shape/input/seed0/完整naive_nsa及W10R50未变。screen75.223us PASS；首次四方同process16/16 reference PASS：v06475.9065us、candidate75.205us(-0.924%)，ranges75.141..76.221/74.824..75.843重叠，保留trial v06183.077us等全部长样本。

事先约定仅一次完全同设置confirmation，16/16 PASS：v06475.1435us、candidate74.962us(-0.242%)，candidate74.906..75.090低于parent75.095..75.341，但增量很小、幅度明显低于初次。两run不合并筛样本，不继续采样选较好结果。

全14三方对称168/168 PASS，C12 v06475.694→75.543us(-0.199%)，对v28快10.034%；C6 source同parent，保留约39.309%相对原v28收益。其他多项positive，case1+5.004%，不因字节identity叫noise或豁免。完整中位数如下：

|case|v28 us|v064 us|v066 us|vs v28|vs current|
|---|---:|---:|---:|---:|---:|
|1|8.9525|9.3135|9.4005|+5.004%|+0.934%|
|2|9.6510|9.7535|9.7435|+0.958%|-0.103%|
|3|12.8130|12.7820|12.8280|+0.117%|+0.360%|
|4|12.4470|12.4720|12.4930|+0.370%|+0.168%|
|5|31.0220|31.4265|31.4445|+1.362%|+0.057%|
|6|156.4670|94.8915|94.9610|-39.309%|+0.073%|
|7|30.8865|31.0450|31.0245|+0.447%|-0.066%|
|8|52.2700|52.2445|52.4035|+0.255%|+0.304%|
|9|52.0755|52.3035|52.3365|+0.501%|+0.063%|
|10|11.8015|11.7480|11.7350|-0.563%|-0.111%|
|11|23.0295|23.0835|23.0965|+0.291%|+0.056%|
|12|83.9680|75.6940|75.5430|-10.034%|-0.199%|
|13|11.2490|11.2640|11.2490|-0.000%|-0.133%|
|14|20.7410|20.6745|20.5800|-0.776%|-0.457%|

最终SHA完整reference checks201：screen1+initial16+confirmation16+all14168。精确archive与被测tmp字节/hash一致，完整14generated OJ静态PASS；因small increment与其他positive不promote，未追加风险重跑、archive-native、OJ或新profile。不能将不同版本非同时screen time直接排序为稳定曲线；静态IR大小对照不是性能替代。

## 6. Profile 指标变化

不追加mcProfiler/mcTracer，目标增量0.924→0.242→0.199%且full14非目标positive，漂亮aggregate指标不能替代no-regression/adoption gate。v064此前consistent诊断按path引用，不当candidate66实测。保存Cpp/host/LLVM/resource及8/16/32/64staticMMA/code-size/backedge对照，静态sites不是runtime工作减少或backend ISA计数。

实际reg均82MT，group2/group4ST24 vssingle22，max5非occupiedwarps；loop/control/code/register各贡献未独立量化。ISA工具缺失、actual sGPU roof未校准，不制作虚假Roofline。未改GPU配置、shared native/reference/official inputs/计时逻辑；一次预定confirmation之外无继续target重试。Source metadata导出不执行attention kernel，不能当reference或性能。

## 7. 实验总结

inconclusive_small_increment_and_no_regression_unverified。partial4 form确已落地，201完整reference checks与source/full14generated OJ静态通过；增量幅度缩小至约0.2%，其他项仍有正delta，未替换current v064或原v28 main，不提交OJ。不调用MoE floor，不将任何positive叫noise或根据source identity豁免。source SHA2033a4ac6319f391b505d741970cfcbdb957348c0e6a185bf7591374f5e226a4，首行# codex-power v066。main42911561...、独立v064575f2fa0...均不变。group1/2/4/8曲线静态与所有原始对照均保留，后续须更换有证据的机制而非继续追逐极小中位差。
