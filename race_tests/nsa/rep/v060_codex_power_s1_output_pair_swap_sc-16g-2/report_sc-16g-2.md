# codex-power v060 output pair swap / sc-16g-2

## 1. 上版本遗留问题

main原v28不变。v059 C6对parent改善约3%，consistent profile shared conflict1.25/load48cycles仍有代价。旧output8B producer的head与head+8在16-lane bank模型下重复。计数是kernel-wide，未证明output独占瓶颈。

## 2. 问题原因分析

输出shared bank置换可能减轻冲突，但为了保留global16B store，gather4×16B→8×8B、增加local8half，issue/reg成本可能抵消收益。32banks/4B/16lane假设不能替代硬件测量或actual occupancy。

## 3. 本版本解决方案

编辑前hypothesis/输出覆盖证明。输出改为QK16×128 pair-swap地址；显式按既有fragment owner写8个4half chunk，再两次8B gather装成global16B store。QK/V/math/normalization/masks/sync/proven bounds/8192B arena及C12 own v056保持不变。原v28完整prefix/entry AST保持不变，cache仅code object，attention数据每次调用完整执行。

## 4. 具体落地策略

输出2048 unique producer/gather与fragment forward_thread/index一一匹配、bijection及8B alignment通过；所有global/shared/local域仍在范围内。实际CPP shared uint2/global uint4确认，global store4×16B/lane不变，shared8×8B gather。100MT/22ST、stack0/private alloca0、shared8192B/compiler max4，非occupiedwarps宣称。显式producer无需关闭racechecker。最终完整naive_nsa gate，保留所有raw观察。

## 5. Benchmark 对比

官方shape/input/seed0/完整naive_nsa/W10R50不变。screen C6 95.007us PASS；同process三方对称12/12 reference PASS：v28156.5925us、v059107.0365us、v06095.022us，对parent快11.225%、对v28快39.319%。candidate94.874..95.104低于parent最小106.772，保留全部raw观察。

全14三方对称168/168 PASS。C6 parent106.6445→95.575us(-10.380%)，对v28快39.222%；C12保留7.371%相对收益，source字节等同parent但time delta仍按实测保留。完整中位数：

|case|v28 us|v059 us|v060 us|vs v28|vs parent|
|---|---:|---:|---:|---:|---:|
|1|9.7435|9.0215|8.9625|-8.016%|-0.654%|
|2|9.5515|9.4260|9.4595|-0.963%|+0.355%|
|3|12.1010|12.1345|12.0115|-0.740%|-1.014%|
|4|12.5720|12.5490|12.9920|+3.341%|+3.530%|
|5|31.2910|31.2270|31.2475|-0.139%|+0.066%|
|6|157.2530|106.6445|95.5750|-39.222%|-10.380%|
|7|31.2060|31.2550|31.2705|+0.207%|+0.050%|
|8|52.2115|52.2520|52.2625|+0.098%|+0.020%|
|9|52.2625|52.3470|52.3675|+0.201%|+0.039%|
|10|11.6635|11.8685|11.8655|+1.732%|-0.025%|
|11|23.6365|23.6365|23.2805|-1.506%|-1.506%|
|12|83.7120|77.8085|77.5420|-7.371%|-0.343%|
|13|11.2690|11.3435|11.2950|+0.231%|-0.428%|
|14|20.7260|20.9000|20.8100|+0.405%|-0.431%|

Profiler actual terminal后，exact archive七项风险三方对称复测84/84 PASS：case4 -0.155%；case7 +0.517%；case8 -0.068%；case9 -0.939%；case10 -0.131%；case13 +0.415%；case14 -0.138%。case4/8/9/10/14增加未复现，case7/13仍positive，不作noise或source-identity豁免；保留case7 candidate34.432us、case14 candidate22.272us等全部长样本，没有继续采样挑选更好结果。
最终exact archive另跑14/14 complete reference PASS。最终SHA共279完整checks：screen1+target12+all14168+risk84+archive14，W10/R50不变。单次归档us不与不同时段baseline相除。

## 6. Profile 指标变化

v060/v059各counts2/per-kernel实际退出0。四份waves8192；write v06033554848B/v05933554752B，与host8192 single-wave CTA/output33554432B一致。necessary footprint checks通过，不宣称排除全部scope风险。read v06037.6661/37.6591MB、v05937.7096/37.7105MB接近，不支持bulk traffic消除。MTE52.79/52.05% vs49.89/50.48%，MMA10.30/10.16% vs8.99/9.10%。shared nonconflict75.38/75.39% vs71.02%，conflict0.97 vs1.25cycles，load49.87/50.66 vs48.64/48.54cycles。冲突减少但平均load latency更高，不能由单一好看counter解释全部11%收益；指标为kernel-wide，不能量化output独占贡献、operation splitting或actual occupiedwarps。

保存UTC mx-smi/CPP/host/LLVM/resource/raw bundles。Achieved waves raw不作occupancy。ISA工具缺失、actual sGPU roof未校准，不制作虚假Roofline；GPU/benchmark未改。mcTracer未重跑，历史v049等timeout无有效timeline按path引用。启动最终检查命令自动审批超时，确认rejection后短命令重试成功并disown -h保护own job；没有因观察等待重复启动。

## 7. 实验总结

inconclusive_pending_external_oj_no_regression。C6对parent两组paired快10.4–11.2%，对原v28约39%；C12保留约7%。源码和完整reference正确性合规通过，其他case/runtime实际OJ不退化仍须直接验证。source SHAf2885657714e93ce633699fdc6b61fe2549019554485f2533145315a78935fce，首行# codex-power v060。计算到normalization AST等同v059；不把bank假设或compiler max4当实测occupancy。main42911561...、独立v0593f72df30...均保持不变，不从us预测OJ分数。
