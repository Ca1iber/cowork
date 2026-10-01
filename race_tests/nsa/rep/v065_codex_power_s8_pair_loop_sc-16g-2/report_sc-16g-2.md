# codex-power v065 two-block loop groups / sc-16g-2

## 1. 上版本遗留问题

v064 single-block runtime loop比完全展开C12快约3%，且比current v060快约2.8%。main原v28不变，v064实际OJ不退化仍待证。loop control减少与scheduling visibility存在tradeoff，本轮检查group2。

## 2. 问题原因分析

每轮两个连续block可减少outer backedge频率，但两倍body增加code/state/resource。不能从staticMMA或小中位delta直接推定runtime work变少或稳定加速。

## 3. 本版本解决方案

编辑前hypothesis；outer selected_pair serial4、inner within_pair unroll2、selected=2*pair+within。exact old bodyAST与normalized完整helper一致，顺序0..7/math/addresses/masks/sync/proven bounds/2048B arena与C6 own v060不变。原v28 prefix/entry AST不变，cache仅code object，每次attention数据完整执行，无新增GPUparallelism。

## 4. 具体落地策略

actual CPP outer无pragma、inner有unroll，LLVM保留4-group backedge，staticMMA16对比v0648/v06164。每valid runtime block仍4QK+4PV，不是flops减少。IR字节single85579/pair114372/full282324。82MT/24ST、stack0/private alloca0/shared2048B/compiler max5，较v064 ST+2，不作occupiedwarps宣称。domain/body/order/selected源码+generated静态通过，首行# codex-power v065。

## 5. Benchmark 对比

官方shape/input/seed0/完整naive_nsa/W10R50不变。screen75.771us PASS；首次四方同process16/16 reference PASS，v064 median75.333us、v06575.0975us(-0.313%)，range分别75.054..75.832和75.034..75.638，明显重叠。该差值不能自动称稳定win。

事先宣布只复核一次，完全同设置/顺序再跑16/16 PASS；两run不混合，不删样本。confirmation v06475.428us、v06575.3815us(-0.062%)，range75.095..75.786与75.100..75.894重叠，中位信号明显缩小。未形成足以替换current的稳定增量，inconclusive。两份raw CSV/完整所有observations和独立summary保存。

final source selected33完整reference checks：screen1+first16+confirmation16。未跑all14/OJ，因target增量未解决；source/selected generated静态通过。精确archive与tmp被测SHA相同，不宣称其他case不退化，不借用MoE promotion floor。

## 6. Profile 指标变化

未新跑mcProfiler/mcTracer：完整native两run的target差值未解决，aggregate counter不能替代时间gate。v064已有consistent4K/output8.39MB诊断按path引用，不将其指标当新source实测。保存新CPP/host/optimizedLLVM/resources与8/16/64staticMMA、actual backedge/code-size对照，不能将IR sites当runtime work或backend ISA指令数。

Code expansion及control形式变化已证明，但pipeline/reg/loop各贡献未知，compiler max5不是occupiedwarps。ISA工具缺失、actual sGPU roof未标定，不制作虚假Roofline。未改GPU设置、参考、official inputs或shared native runner。初次pair的own-process readonly memory sampler保留，未做GC/allocator调整。

## 7. 实验总结

inconclusive_incremental_signal_unresolved。paired中位初测快0.313%但一次预定confirmation仅0.062%，两run均overlap，不接受/不promote，不把任何观测叫noise或筛选。33完整selected reference与archive/selected static通过；未跑all14/OJ，不宣称global不退化。source SHAf120d2d66df93c1f988158825c99435eb701a691ab5becc1753dfdecba28b06a，首行# codex-power v065。main原v2842911561...及独立v064575f2fa0...均不变，v064仍为当前待OJ候选。源码原始body/order保持一致，new GPUparallelism/work减少均未发生；后续应依据新证据选择方向。
