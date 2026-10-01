# codex-power v062 ordered16B Q/K store / sc-16g-2

## 1. 上版本遗留问题

v061 C12 bank指标明显改善但native慢0.740%，80MT及split stores翻倍并存。v060仍是更快候选，main原v28不变。本轮保留v061 reader mapping，试图消除producer split-store代价。

## 2. 问题原因分析

两组quad可在寄存器按rowbit3 XOR rowbit0交换，物理8half block整体16B写。新的half selectors/ordered局部数组可能增加issue或compiler scalarization，不能仅以CPP uint4宣称ISA16B操作。

## 3. 本版本解决方案

编辑前hypothesis及1024 logical值等价证明。T.Select固定unroll下标0..7，ordered8half buffer整段写physical block base，global16B/QKconsumer/PV/output/math/masks/sync/2048B arena/proven bounds与C6 v060均不变。cache仅compiled code object，原v28 prefix/entry AST不变，所有attention数据工作在每次调用内。

## 4. 具体落地策略

CPP表现uint4 shared store，但optimized LLVM中v06172个i64 store/152 select，v062144个i16+36个i64 store/296 select：期望vector store未在该层保留。此为static IR，非backend ISA或exclusive耗时宣称。76MT/30ST、stack0/private alloca0/shared2048B/compiler max6，不当actual occupancy。三个exact imports/selected generated静态PASS，首行# codex-power v062。

## 5. Benchmark 对比

官方shape/input/seed0/full naive_nsa/W10R50不变。screen87.506us PASS；四方同process两轮对称16/16 reference PASS：v28 median83.433us、当前v06077.4555us、直接父v06177.7245us、candidate87.1835us。对v060慢12.559%、对v061慢12.170%、对原v28慢4.495%。candidate86.876..87.532全部高于v060/v061最大值，保留全部raw观察，不追加选择性重测。

final selected source17完整reference checks；不运行all14/OJ或全14generated，因目标与lowering已失败。tmp与archive同SHA且selected静态通过，不宣称其他case实际测过或不退化。

## 6. Profile 指标变化

未新增mcProfiler/mcTracer：目标已明显退化，LLVM表明声明的16B shared store在这一层被拆分，新的counter capture不能解除接受gate。v061已有四份consistent footprint诊断按原path引用，不用旧指标替代本source实测。保存完整CPP/host/optimizedLLVM/resource/静态store+select对照；不把IR occurrences当ISA、dynamic latency或occupiedwarps。

ISA工具缺失、actual sGPU roof未标定，不制作虚假Roofline；GPU/benchmark不变。SSH远端关闭后确认handle exit255并重连同hostname4582fcb1c26c/commit/main hash，四方任务已actual terminal，没有因观测中断重复启动。

## 7. 实验总结

rejected_target_performance_and_intended_lowering。17个selected完整reference正确，但比v060慢12.56%，比直接v061慢12.17%，且store scalarization/select膨胀。source SHAdc768eedf2ad1508c3d5176766a299f1c11f6582cc33d74bcf91c9a2ea9cf74d，首行# codex-power v062。主提交原v2842911561...及独立v060f2885657...不变，不提交OJ，不从CPP宽度或低MT推定收益。未来若检查reorder表达，需要先证明实际vector lowering，再完整native检验，不能沿用本轮性能假设。
