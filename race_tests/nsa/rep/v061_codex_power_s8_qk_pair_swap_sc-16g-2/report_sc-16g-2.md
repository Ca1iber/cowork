# codex-power v061 S8 Q/K pair swap / sc-16g-2

## 1. 上版本遗留问题

main原v28不变；v060 C6约39%收益，C12 own v056约7%。C6的Q/K置换有效，C12仍有模型bank重复，但不同D64/S8域不能推定同样收益。

## 2. 问题原因分析

D64 producer16lane内有两组相邻row，rowbit0用于区分这两组，rowbit3用于MFMA operand跨head8重复。低colbit2置换可模型peak2→1；模型32bank/4B/16lane不等同hardware或throughput。extra shared stores/reg成本须实测。

## 3. 本版本解决方案

编辑前hypothesis和domain/model证明。Q/K global16B加载local8half，再两个8Bshared写；consumer4half连续。仅改Q/K，独立out_slot保持旧output映射AST不变；PV/math/rescale/den/masks/sync/proven-bounds/2048B arena与C6 own v060不变。cache仅code object，每次attention数据工作完整执行；原v28 prefix/entry AST不变。

## 4. 具体落地策略

1024 bijection/unique producer/quad8B alignment、33280 valid block-token pair及全部访问域通过。actual CPP globaluint4/shareduint2验证。80MT/28ST、stack0/private alloca0/shared2048B，parent72MT/compiler max7→newmax6仅静态ceiling，非occupancy。selected source/generated静态PASS，首行# codex-power v061。

## 5. Benchmark 对比

官方shape/input/seed0完整naive_nsa/W10R50不变。screen78.269us PASS；三方同process对称12/12 reference PASS：v2883.597us、v06077.8135us、v06178.3895us，candidate对parent慢0.740%、对v28仍快6.229%。继承已有收益不意味着本轮改进成功。保留parent82.012us，不叫noise或删除；candidate最小78.321也大于其余三个parent样本77.676..77.844，不能用长样本宣称win。

最终selected source13完整reference checks；未运行全14/OG或全14generated，因target incremental被拒绝。archive与tmp被测SHA完全相同，selected OJ静态验证；不宣称其他case已跑或不退化。

## 6. Profile 指标变化

native目标失败后，仅执行一次直接两方C12诊断以核验声明的bank假设，不做接受重试。v061/v060 counts2/per-kernel都实际退出0，四份waves4096；write v0618388928/v0608389024B，与host4096 single-wave CTA/output8388608B一致。necessary footprint检查全过，不宣称排除全部scope风险。read约9.572MB、L2hit87.56%相同，不支持bulk traffic消除。MTE76.14/75.53% vs75.29/75.31%，MMA11.97/11.88% vs12.01%。shared nonconflict97.40% vs79.88%，conflict0.10 vs1.03/1.04cycles，load48.78 vs60.91/60.92cycles。

bank aggregate指标显著改善但完整native反而慢0.740%，不能推广。8MT增加、producer stores翻倍与compiler max7→6同时存在，独立贡献/实际occupiedwarps未知，不能把退化全部归给某一项。接下来的证据应检查movement/issue与resource tradeoff，而非继续优化漂亮counter。保存UTC mx-smi/CPP/host/LLVM/resources/raw bundle。Achieved waves raw不是occupancy。ISA工具缺失、actual sGPU roof未校准，未制作虚假Roofline，GPU/benchmark不变。mcTracer未重复跑，历史v049等timeout按path引用。

## 7. 实验总结

rejected_target_incremental_performance。C12完整selected reference13/13与源码/selected generated静态合规通过，但同轮输v060。未跑全14或OJ，未宣称其他case正确性/不退化。source SHA575e5f11b2a37b3952e7d7ed5f099ef58b9a1d75221fcac752404a74b6b521a9，首行# codex-power v061。main原v2842911561...、独立v060f2885657...保持不变。D64/S8不能从D128/S1的成功直接推断收益，失败bank/time分歧完整保留。所有named artifacts闭环后才能进入下一轮。
