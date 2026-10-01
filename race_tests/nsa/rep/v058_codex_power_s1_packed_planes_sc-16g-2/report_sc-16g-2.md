# codex-power v058 packed V planes / sc-16g-2

## 1. 上版本遗留问题

main原v28不变。v057 C6 paired快约30%，但internally consistent profile显示shared nonconflict60.49%、conflict2.21/load约65cycles，比v28差。旧own v055 packing在memory padding guards下未稳定受益。现在guards已去除，重新检验同一V geometry的不同组合条件。

## 2. 问题原因分析

计数是kernel-wide，未证明PV独占瓶颈。实际old PV operand两次4B；packed可一次8B，但global producer从8次16B变16次8B，reg/scheduling代价须测。银行模型仅假设，不推断吞吐或occupiedwarps。

## 3. 本版本解决方案

编辑前hypothesis，四个disjoint16token×64feature V tile，4×4 producer和four-row packed operand。保留v057 proven-bounds/softmax/QK/masks/sync/8192B arena，C12依赖v056不变。无tensor contents cache，完整attention数据工作每次调用重做；原v28 prefix/entry AST不变。

## 4. 具体落地策略

16896 valid token-block pair证明、4096 V bijection/unique producer/operand覆盖及8B对齐通过。CPP uint2读取确认；optimized LLVM从parent24个four-half vector+32 scalar i32 load变40个four-half vector，对应32 scalar→16 vector，非ISA指令数宣称。98MT/22ST、stack0/private alloca0/shared8192B，compiler maxWarps5→4非occupancy。输出Fragment warning保留，lowered2048 unique写，不关racechecker。数学归一化AST与own v055同，新增proven-bounds条件；与parent只改V相关机制。

## 5. Benchmark 对比

官方shape/input/seed0/完整naive_nsa及W10/R50未改。screen C6 115.338us PASS，不能与其他时段parent110us直接比较。三方同process对称12/12 PASS：v28163.8735us、v057114.911us、v058114.107us，对parent仅快0.700%，candidate113.859..114.181低于parent最小114.678。保留parent131.297、baseline171.320长样本，不称noise。

全14三方对称168/168 PASS：C6 114.916→114.299us对parent快0.537%，对v28快30.235%；C12 80.8195→80.8215us，GPU字节相同但tiny正delta仍保留。以下完整中位数，不据此推测OJ分数：

|case|v28 us|v057 us|v058 us|vs v28|vs parent|
|---|---:|---:|---:|---:|---:|
|1|9.0800|8.9725|8.8295|-2.759%|-1.594%|
|2|10.0710|9.9940|10.0375|-0.333%|+0.435%|
|3|14.0825|13.5270|13.5835|-3.543%|+0.418%|
|4|13.5090|13.3500|13.7010|+1.421%|+2.629%|
|5|33.1240|33.2570|32.8810|-0.734%|-1.131%|
|6|163.8350|114.9160|114.2990|-30.235%|-0.537%|
|7|32.7600|32.6455|32.7220|-0.116%|+0.234%|
|8|54.9175|54.5435|54.3485|-1.036%|-0.358%|
|9|54.0035|54.1005|54.2055|+0.374%|+0.194%|
|10|12.7280|12.8565|13.1585|+3.382%|+2.349%|
|11|24.6605|24.7525|24.4275|-0.945%|-1.313%|
|12|87.5880|80.8195|80.8215|-7.725%|+0.002%|
|13|11.3180|11.4665|11.0390|-2.465%|-3.728%|
|14|21.5655|21.1915|21.1020|-2.149%|-0.422%|

case4/9/10有正delta。profile actual terminal后，从exact archive三方复测36/36完整reference PASS：case4 -0.381%；case9 -0.702%；case10 +1.405%。case4/9初始增加未复现，case10仍有+1.405%观测，不因GPU字节相同而豁免，不继续重复挑选较好结果。
Exact archive全14另跑14/14 PASS。总231完整reference checks：screen1+target12+all14168+risk36+archive14，W10/R50不变。归档单次us不与旧baseline跨时段相除。

## 6. Profile 指标变化

v058/v057各counts2/per-kernel，实际退出0，raw/log/report_bundle保留。预期8192waves/output33554432B；实际v05811864/11476 waves、write39905568/39120768B；v05711704/11816 waves、write35780672/36773984B。四份footprint均不一致，counter comparison inconclusive，不能拿raw shared指标说bank问题改善。scope/同卡活动/归一化等原因未独立证实，不将任一推定为结论，未追加重复capture挑结果。

保存UTC mx-smi/CPP/host/LLVM/resources；Achieved waves raw不当occupancy。ISA工具不可用、实际sGPU roof未标定；不制作虚假Roofline，未改GPU设置或benchmark。未重复mcTracer，历史v049等timeout无有效timeline按path引用。本轮vector化落地可由CPP/LLVM证明，真实shared冲突及global issue取舍没有新的可靠counter归因。

## 7. 实验总结

inconclusive_small_increment_pending_no_regression。C6两组paired对parent仅约0.5–0.7%，没有MoE floor借用或SOTA宣称；其他case/OJ不退化未证明。首行# codex-power v058，source SHAa384a3ef98a51d997ee6d413d3191179f7ffab5e6af475ac76c0632e2263c748。原v28 main42911561...、v05769338093...及v05614b699e...均保持不变。v057仍是此前交给用户核验的主要候选，本轮小幅checkpoint不自动替换它或main。后续问题应根据可靠profile与具体读写layout区分，不把kernel-wide冲突都归给PV。
