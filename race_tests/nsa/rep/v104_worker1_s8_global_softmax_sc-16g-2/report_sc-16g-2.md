# codex-power v104 worker1：C12数据流与正式OOM失败记录

## 1. 上版本遗留问题

C6 Num16虽90MT仍慢2.69%，C10 direct8B诊断慢9.07%，C12 pair慢1.79%，均已拒绝。不回写v101 exit137失败。

## 2. 问题原因分析

提出C12全QK→单次整体softmax→全PV以减少8次online更新；bank0不是HBM瓶颈证据。globalmax改变F16 P量化，需原naive1e-2。

## 3. 本版本解决方案

仅C12 key(4,1024,1,16,64,8,16,True)，Score32/P32与PV Num16分phase；actual roundedP×256同时供PV/FP32den，不沿用旧runningden。

## 4. 具体落地策略

rawidx乘BS前合法guard，invalidScore=-inf/P0且无非法K/V读，全空最终NaN同原；真实ABI无block_counts。Q/K16B、V8B、O16B、2KiB及同步保护保持。源27f6021b1edcdd3d48d8f8e7b0182492b8a3607b6ce0e7e28c8097bd6ec20e07。

## 5. Benchmark 对比

selected C12 screen4C/12total全部0，68.941对72.2685us(-4.604357%)，两round负、allC<allP。正式固定168在job141 native-9/OOM11→13停止，仅140 PASS=46C+47P+47B；连screen总50C/152incl。C1..11完整，C12只有8个PASS的partial prefix与失败job0ref，C13/14未执行。全部两round/ranges/outliers在原JSON保留，无risk或补齐。事件50次Python调用非纯kernel；原seed/输入/fullnaive/W10R50未改。
|case|v28 us|v84 us|v104 us|vs84 %|vs28 %|scope|
|---:|---:|---:|---:|---:|---:|---|
|1|10.074000|9.405500|8.494000|-9.691138163840306203816915630|-15.68393885249156243795910264|complete_fixed12|
|2|9.436000|9.336500|8.998500|-3.620200289187597065281422370|-4.636498516320474777448071220|complete_fixed12|
|3|12.011500|10.124500|10.493500|3.644624425897575188898217200|-12.63788869000541148066436332|complete_fixed12|
|4|12.536500|11.113000|11.499500|3.477908755511563034284171700|-8.271846209069517010329836880|complete_fixed12|
|5|31.094000|24.709000|24.635000|-0.2994860172406815330446396100|-20.77249630153727407216826397|complete_fixed12|
|6|156.518500|93.460500|93.363500|-0.1037871614211351319541410500|-40.34986279577174583196235589|complete_fixed12|
|7|31.242000|25.037000|25.170000|0.531213803570715341294883600|-19.43537545611676589206836950|complete_fixed12|
|8|51.927000|40.747500|40.883000|0.332535738388858212160255200|-21.26831898626918558745931789|complete_fixed12|
|9|52.219000|40.566000|40.397000|-0.4166050387023615835921707800|-22.63926923150577376050862713|complete_fixed12|
|10|11.412000|10.340000|10.560000|2.127659574468085106382978700|-7.465825446898002103049421660|complete_fixed12|
|11|22.835000|18.895500|18.890000|-0.0291074594480167235585192200|-17.27611123275673308517626451|complete_fixed12|
|12|NA|NA|NA|NA|NA|partial_failed_prefix|
|13|NA|NA|NA|NA|NA|UNAVAILABLE_not_run|
|14|NA|NA|NA|NA|NA|UNAVAILABLE_not_run|

## 6. Profile 指标变化

本版仅precompile C12 0attention/ref成立：68MT/44ST/max7/stack0对自身近期parent80/22/max6，ST+22。IR64staticMMA/0alloca/addrspace5是编译证据，非ISA/occupancy。当前paired mcProfiler、全14 metadata、finalresource及risk全部未启动，UNAVAILABLE；此前parent profile只作假设依据，不冒充本版paired结果。

## 7. 实验总结

状态 failed_runtime_OOM_formal_incomplete，不是all14/no-reg或OJ胜。C3/4/7/8/10正式正差保留，未复核不以samecode/noise豁免。job141日志仅Loading tilelang libs，15样本nativeRSS峰20,134,220KiB，wholeCG峰34,359,726,080B；差额来源/具体victim链未知。所有自有job终态，无重启、风险/metadata/profile续跑。main仍原v28 SHA429。

