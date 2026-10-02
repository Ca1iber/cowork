# C11/S4未来数据流讨论，仅文档，不启动新版本

leader允许在v104正式运行时做轻量估算。parent使用同S8factory但S=4，B2/L512/H1/HQ16/D64/BS16。每querygroup全4有效时QK16+PV16个16x16x16MMA，共32；1024querygroups理论268435456 FLOPs。这个计数不是GPU时间或launch占比证明。

若采用全QK→一次整体softmax→全PV，Score16/P16小于C12的32，仍Num16；数学工作MMA与必要global值不减，消除4次runningmax/rescale更新但增加score/P缓存、unroll4/code-size及不同cache时序。padding时全P16方案可能多做无效槽exp，globalmax改变F16P数值，den必须用actual同P16，不沿用runningden；不能据C12局部screen快4.6%推断本shape必胜。

必须保持当前真实Q/K16B、V8B、Output16B，原2KiB各阶段read-before-nextwrite同步、causal/prefix/sentinel契约与原native1e-2。actualCPP/IR/stack/MT/ST/maxwarp须核验，Num在QK阶段是否不live不从alloc数直接推断。未来仅case11，other13不动；关账后peer+leader审阅和固定测量才可能执行。

已直接向worker2征advisory，不编辑其代码计划。本文只是未来讨论，没有新增kernel/import/native/版本，也没有审批生效。

## worker2实际轻量advisory

已直接回复四点：actual roundedP16同时用于den/PV，globalmax量化不是online位等价；partialvalid保持legalprefix/sentinel/rawguard与全P初始化/emptyall原NaN；selected0..3 perfeature同序、QK→V shared覆盖sync、unroll4需actualIR无private/stack；不把C12百分比迁移到19us的C11，MMA不减且ST/code-size代价要作反向预测。建议已纳入未来讨论，未启用新版本/kernel/import/native；不改peer计划。
