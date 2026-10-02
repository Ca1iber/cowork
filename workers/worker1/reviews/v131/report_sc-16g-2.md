# v131 原C6 K/V索引范围编译诊断（sc-16g-2）

## 1. 上版本遗留问题

v129 V4消费者独立原C6测速+.177222%，两轮正/范围交叠，拒绝、不采用。当前回到bestCB13原 _make_power_s1_v_hybrid_pack，V16/Num32。实际parentCPPf186 K/V uint4 globalexpr含int64 batch131072/rawblockstart128；地址链缩窄效果尚未验证，不能迁移C8/C9百分比。

## 2. 问题原因分析

当前假设只针对已知官方范围：B8/L1024/BS32、idx0..31/start0..992，guard内T.min(T.max(rawstart,0),992)只用于K/Vrow，原Idx*32/guard/causalmask保持raw。独立actualproducer表达式穷举K131072+V131072完整16Bvector/2097152half，halfmax1048575/末byte2097151，所有旧新地址和值、对齐、完整bounds相同。非法sentinel1024*32>token不读，不推广任意int32overflow编码语义。先peer建议再sourceedit，源未继承失败V4。

## 3. 本版本解决方案

sourceccc/header131，正确原JIT、CB13完整18ASTprefix与其他13source保持，只新exactC6factory和lazyinstaller。仅validguard内bounded_start与K/V2row替换，Num32/P8/Score8/V16/每输出累积顺序/全部producer/global16B/布局/sync/output原样。extra min/MTST/LLVM消除范围或仍i64/native退化都可否证，不为资源好看改源码。

## 4. 具体落地策略

固定onefreshP/C6metadata2pairs4files→CPU实际host/OJsource-device→candidate1SDKresource→首次O3IR1→CPU32MMA/地址defuseevents，全部五stage/六原wait0。原launcher623217持Popen到真实wait0，0NSAattention/0fullrefs。16deps+shared6真实SHA，6GiB+22estimate+4reserve/28runtime/OOM13/unknown1G/.5/600/1s/Nodeexacttuple/ownership/priorabort/cooplock保持；helper完整stage.exit/print/lock.close/raiseSystemExit0/1及两层原wait核验。准备阶段observer锚点ValueError无GPU/无helper执行，实际forname/data marker修复留档；源ccc未改。

## 5. Benchmark 对比

本版originalnative/完整naive/W10R50/OJ未授权或运行，UNAVAILABLE，不能声明速度/正确性/全14不退化。旧129及C8/C9selected结果独立不pool。后续v134若获GO，仍用immutableccc/header131与原CB13及B28固定原C6native比较，不自动追加。

## 6. Profile 指标变化

| 指标 | parent f186 | candidate e74 | 解释 |
|---|---:|---:|---|
| MT |100|98|少2，编译资源事实|
| ST |22|22|不变|
| staticmax |4|4|静态上限，不是实测occupancy|
| stack |0|0|无stack|
| dynshared B |8192|8192|host实际相同|

ActualCPP仅两条K/V globaluint4表达式从int64改i32、min(rawstart,992)保留，撤回这两行整CPP字节精确parent，7warp-sync/数学/QKPden/Num32V16/layout/output全不动。hostbyteequalb138。IR32MMA/0alloca/0AS5，361行smin.i32带range0..992；全部integer/GEPevents已保存交leader审K/V具体defuse，不由SSA名称推ISA/运行寄存器分配。无新mcProfiler/trace；101个.5swholeCG样本OOM13不增，peak 26770477056 B仅下界而非futureupperbound。

## 7. 实验总结

source_compile_mechanism_observed_native_performance_unmeasured：源范围机制在actualCPP物化，MT100→98，staticmax仍4；时延、运行occupancy及收益未测。原资源/数学/指针bounds事实保持各自范围，不宣称HBM或int64是唯一瓶颈。sourceccc冻结，不自动native/profile/OJ/promotion；131已完成编译闭环，133C301全14队列不修改，134独立原C6native仅准备待leader排期。其他13源相同不能豁免后续性能检查。
