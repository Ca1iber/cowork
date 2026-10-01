# codex-power v063 uint32 Q/K selection / sc-16g-2

## 1. 上版本遗留问题

v061 bank指标好但native慢，v062 half selectors导致144i16 stores/296select且比v060慢12.56%。main原v28、待OJ v060均不变。本轮检验整数word选择是否避免half scalarization。

## 2. 问题原因分析

每word仅搬运两个half原始bit，四word选择可能减少八half selector成本；global/shared view不拷贝且same DataVar/equal bits，但alias ABI/分配/vector lowering须实测。不能仅赢失败父版本就接受。

## 3. 本版本解决方案

编辑前hypothesis与1024 half label位等价证明。仅global Q/K及shared做T.view:uint32，dim64half→32words、1024sharedhalf→512words，总位数相同。local两个4word数组，固定unroll4+swap2 select；无local view或numeric转换。v061 consumer、PV/output/math/masks/sync/proven bounds、2048B arena与C6 v060保持不变；原v28 prefix/entry AST不变，cache只code object，每次attention工作完整执行。

## 4. 具体落地策略

actual CPP签名仍half_t*输入，内部uint cast/shared单一uint声明带half读写，host dynamic2048B；native确认ABI正确。优化IR仍scalar72i32+36i64 store/224select，相比v062144i16+36i64/296select改善，但未保留预期16B vector。76MT/30ST、stack0/private alloca0/compiler max6，非actual occupancy。source/selected生成代码静态PASS，首行# codex-power v063。

## 5. Benchmark 对比

官方shape/input/seed0/full naive_nsa及W10R50不变。screen81.014us PASS。第一次四方在第10个已完成reference后退出137/SIGKILL，stdout只有Killed；完整first_exit137日志/CSV/source hashes保留，不能算完整formal或与rerun混合。

读取内存后原样重跑一次，没有GC/allocator/GPU或参考/计时修改。rerun16/16 reference PASS，source median80.389us，v06077.1995us、v06286.8835us、v2883.264us；对current v060慢4.132%，对失败direct v062快7.475%，对v28仍快3.453%，不构成增量成功。所有candidate80.348..80.456高于v060最大77.819，拒绝不依赖样本筛选。

完整final protocol screen1+rerun16=17reference checks；first attempt额外10个PASS属于截断run单独记录，不进formal median。监控rerun最大owned process RSS24010968KiB，cgroup oom_kill前后2不变；历史max约32GiB/limit32GiB，首次无before计数，不能证明它一定OOM或归因某种共享活动。未改原生runner，不宣称all14或global不退化。

## 6. Profile 指标变化

不对失败candidate63追加profile。按AKO three-failure流程刷新exact original v28 C12：新环境/mx-smi快照，counts2/per-kernel实际exit0，两份waves4096/write8388928B，与launch/output一致；read9.573536/9.573600MB、L2hit91.66%，MTE62.76/62.92%、MMA11.08/11.10%，shared nonconflict48.46/48.45%、conflict2.81/load61.78/62.03cycles。baseline-only数据，不能替代candidate counter或从kernel-wide fraction推定独占瓶颈/occupiedwarps。necessary footprint过，不宣称排除所有scope风险。

fresh metadata-only CPP/host导出与v060原baseline device逐字节相同，resource60MT/28ST、stack0/compiler max8/dynamicshared2560B，未观察到代码变化。自己61份hypothesis/report索引与mechanism audit保留：proven-bounds方向有收益；多warp partial/score-pool与近三次bank/select方案没有胜过current v060。下一方向是不同的compiler loop/lifetime假设，不继续half/word selector，须先验证实际lowering。没有新candidate提前编辑。

保存UTC mx-smi/raw baseline bundle/候选CPP/LLVM/resources/store-select对照/内存监控。ISA工具缺失、actual sGPU roof未校准，不制作虚假Roofline；mcTracer历史timeout无有效timeline按path引用，未重复。未改GPU设置、shared official inputs/reference/native runner或计时协议。

## 7. 实验总结

rejected_target_performance_and_intended_vector_store。uint32选择减少了scalar化惩罚并保持bit精度，但完整rerun仍慢current v0604.132%，不能采用。first137的不完整数据与rerun严格分开，原因未独立证实。source SHA02fd54dfa0abd607309cfde6ae2293ecc89cb8abf69c487b59c1570ddb18787c，首行# codex-power v063。完整source selected17reference checks、archive/selected static验证通过，不作all14或OJ不退化宣称。main原v2842911561...及独立v060f2885657...保持不变。所有raw/debug/review与新baseline刷新闭环后才能下一轮。
