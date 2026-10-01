# codex-power v064 selected runtime loop / sc-16g-2

## 1. 上版本遗留问题

v061 bank接近97%却native+0.740%，v062/v063 selector/scalarization仍慢。v063按three-failure刷新v28 profile/code/resource，incumbent无变化。main原v28及待OJ v060不变，本轮更换compiler loop/lifetime方向。

## 2. 问题原因分析

forced outer8-block unroll使staticMMA64sites，可能扩大code/state/temp生命期。普通循环减少静态展开但可能增加loop/control并削弱scheduling，不能预设reg或time改善。此为compiler loop形式，GPU block处理仍按原顺序。

## 3. 本版本解决方案

编辑前hypothesis，直接own v061 helper仅selected T.unroll→T.serial；normalized完整AST相同，所有inner operations/math/addresses/masks/sync/order/proven bounds/arena保持不变。C6 own v060 exact依赖，原v28 prefix/entry AST不变，cache仅code object，数据工作每次调用执行。

## 4. 具体落地策略

actual CPP去除outer pragma，optimizedLLVM保留selected backedge；staticMMA64→8，每valid runtime iteration仍4QK+4PV，非计算量减少。parentIR字节282324→candidate85579。82MT/22ST、stack0/private alloca0/shared2048B/compiler max5，较v06180MT/28ST并非MT减少，不能当occupiedwarps或独占原因。所有访问域/loop-onlyAST/selected OJ静态验证通过，首行# codex-power v064；原生full reference检验数据与遍历。

## 5. Benchmark 对比

官方shape/input/seed0/完整naive_nsa/W10R50不变。screen76.221us PASS；四方同process对称16/16 reference PASS：v2883.533us、currentv06077.847us、directv06178.3565us、candidate75.643us，对current快2.831%、对direct快3.463%、对原v28快9.445%。candidate75.607..75.756低于current最小77.788，保留全部观察，不作work量减少宣称。

全14三方对称168/168 PASS，C12 current77.496→75.3485us(-2.771%)，对v28快10.385%；C6字节等同v060，保留39.200%相对v28收益。完整中位数：

|case|v28 us|v060 us|v064 us|vs v28|vs current|
|---|---:|---:|---:|---:|---:|
|1|9.2005|8.9215|9.1395|-0.663%|+2.444%|
|2|9.3850|9.4055|9.4055|+0.218%|+0.000%|
|3|12.0960|12.0780|12.0985|+0.021%|+0.170%|
|4|12.5385|12.5160|12.5265|-0.096%|+0.084%|
|5|31.1525|31.4085|31.5545|+1.290%|+0.465%|
|6|156.5645|95.2960|95.1910|-39.200%|-0.110%|
|7|31.2320|31.2270|31.2830|+0.163%|+0.179%|
|8|52.4135|52.2545|52.2340|-0.342%|-0.039%|
|9|52.0010|52.2240|52.2265|+0.434%|+0.005%|
|10|12.4135|12.4390|12.4335|+0.161%|-0.044%|
|11|23.7880|23.7850|23.5775|-0.885%|-0.872%|
|12|84.0805|77.4960|75.3485|-10.385%|-2.771%|
|13|10.8235|10.7855|10.5780|-2.268%|-1.924%|
|14|19.7480|19.7605|19.7145|-0.170%|-0.233%|

Profiler actual terminal后，exact archive六项风险三方对称72/72 reference PASS：case2 +1.236%；case3 +0.104%；case5 +0.189%；case7 +0.658%；case9 +0.078%；case10 -0.795%。case10增加未复现，2/3/5/7/9仍positive，不因source identity叫noise或豁免；保留case7 candidate32.814us等全部观察，没有继续采样选好结果。
Final exact archive另跑14/14 complete reference PASS。最终SHA共271完整checks：screen1+target16+all14168+risk72+archive14，W10/R50未改；归档单次us不与旧baseline跨时段相除。

## 6. Profile 指标变化

直接parent v061与v064各counts2/per-kernel实际exit0，四份waves4096/write约8388928B，与host4096 single-wave CTA/output8388608B一致；necessary footprint过，不宣称排除全部scope风险。read candidate9.557184/9.557152MB、parent9.572000/9.572256MB接近，不支持bulk traffic消除。MTE72.49/72.40% vs75.90/75.87%，MMA12.50/12.48% vs11.93/11.92%。shared nonconflict97.41% vs97.40/97.41%，conflict0.10都相同，load50.53/50.54 vs48.73/48.72cycles。

Code expansion真实缩小，ST减少但MT增加/ceiling更低；native增益不能完全归因某一aggregate指标、I-cache或register因素。MTE duty下降也不等同吞吐恶化，mean load latency略高仍能端到端变快。Achieved waves raw不是occupancy。保存UTC mx-smi/CPP/host/LLVM/resource/raw bundle和actual backedge证明。ISA工具缺失、actual sGPU roof未标定，不制作虚假Roofline。未改GPU设置或benchmark；历史mcTracer timeout按path引用，未重复。此前v063 fresh incumbent诊断按路径参考，不拿old counter替代本轮。

## 7. 实验总结

inconclusive_pending_external_oj_no_regression。C12对当前v060两组paired快2.77–2.83%，对直接v061快3.46%，对v28约10%，C6保留39%。最终source SHA575f2fa041acbfc1bf339f41b30f203d8b8f743ad2fded576a0db43da61beb67，首行# codex-power v064。selected loop kind是唯一source semantic改变；runtime工作/顺序及GPU单wave parallelism不变。其他case runtime/实际OJ不退化仍须核验，未将candidate替换main。main原v2842911561...与独立v060f2885657...保持不变，不从us推测分数。
