# v202 case8 两个独立 query/CTA

## 1. 上版本遗留问题

v201直接8B输出虽然少两同步、MT下降，但C5相对v084慢10.437418%，已拒绝，不沿用。当前从冻结parent84 SHA4c取C8 packed16B全部原路径。v200自身C8 parent两raw满足原scope，原版C8两counter不可用且OOM事件保留，不重采补齐。

## 2. 问题原因分析

C8 baseline每CTA64线程/一query，8192CTA；有效parent计数WG100非冲突/0conflict，MTE67.97/67.80、MMA6.75/6.74，WGload50.51/50.54不是DRAM。reg42MT20ST/dyn2KiB/max8/stack0。尚未证明CTA调度是主瓶颈；仅可证伪假设：把两个独立warp打包降低CTA数量或影响并发。反向风险：128线程/4KiB改变block admission，地址运算增、先完成warp需等待同CTA另一warp才能释放资源。

## 3. 本版本解决方案

仅C8 key，线程128，group=tid//64、lane=tid%64、token=pair*2+group。shared两个1024half分区，不共享K/V内容或跨queryhead/den；每query全部Q/K/V/math/7warp同步、global16B producer与packed16B输出保持，other13 parentprefix/AST不变。

## 4. 具体落地策略

源ed46e5cd8732e463ff9cefd2e21035c9ca4426132001fe5d6c02c67c97b722a2/header202/exact3imports/static0。AST还原shared_base后原query全部操作相等；外层token guard保护读写，target4096由compiler证明0..4095后消去guard。primitive为普通warp64 MFMA，privateScore4/Num16/P4，source无fragment/Parallel/anno64隐含分配。

actualmetadata0attention/0reference；actualCPP 13memorysites、5760对所有128线程与loop域的affine检查，global=parent(2pair+group,lane)、shared=parent+group1024，vector完全在own1024half分区且相对对齐，global地址界内。width64/fulluint64shfl xor16/32不跨query，7__syncwarp/0CTAbarrier。actuallaunch128/grid2048x2/dyn4096，waves预计8192不变。资源44MT22ST/max8/stack0/dyn4KiB，MTR和ST各增2、动态shared每CTA翻倍，不是actualoccupancy改善。

## 5. Benchmark 对比

固定C8 existingrun_variant单sourcefreshprocess B-P-C-C-P-B两round，原fullnaive/W10R50/seed_inputs_gradTrue_tol不变，无postexport。实际仅前9job0/9PASS，其中candidate3；run10PID102320 SIGKILL返回-9、OOM1到3且无CSV，0reference，按预declared立即stop，11/12未启动。不是完整12screen verdict。唯一perjobCSV计数，不重复合并表。单位us。

| Source | 已完成数 | 原始值 | 部分中位数 |
|---|---:|---|---:|
| baseline_v28 | 3 | 51.727000 / 51.656000 / 51.604000 | 51.656000 |
| parent_v084 | 3 | 40.479000 / 40.136000 / 40.233000 | 40.233000 |
| power_v202 | 3 | 41.861000 / 41.876000 / 41.457000 | 41.861000 |

已完成部分相对parent正差+4.046430%保留，但不据不完整fixedschedule作正式性能verdict。native50次Python调用的event范围可能有hostenqueue间隙，2sRSS/HWM/childsnapshot是观察下界。

## 6. Profile 指标变化

没有新profile/tracer/full14或重测；source/resource/ownership0不能洗掉runtimefailure。真实CPP launch128/grid2048x2、dyn4096、13sites/5760addressaffinechecks、16Bglobal宽度、7warpSync/noCTAsync与privatewarp64MFMA证明已归档。parent42MT20ST/dyn2048变44MT22ST/dyn4096、max8同/stack0，逆变化保留，不称实际occupancy改善或CTA调度成本主导。

run10log仅Loading tilelang libs，没有resultsCSV/任何PASS，具体import组件未知。memory样本显示05:20:40到50 nativeRSS约20.8到18.4百万KiB，而cgroup约32GiB上限；05:20:52OOM到3。停止后只读usage从17.6GB到05:24:55约448MB，不能将单PIDRSS当总内存。另runtimePID102519 marker在05:20:21建立，非own记录job；具体owner/parent/victimUNKNOWN，2schild采样空不排除短child。未读marker内容、未清理、未重新启动。

## 7. 实验总结

失败/证据不足：唯一fixedscreen被SIGKILL/OOM打断，C3/总9正确性已完成，原run10-9/gate1/OOM1到3保持。部分正差说明当前观察没有新收益，但不冒充完整12verdict。源ed46仅失败归档，未promote/main429不变，没有新OJ或full14结论。

单source隔离此次仍OOM，反证它保证无OOM的说法；精确并发主体/实际import压力原因尚未知，不能直接归因算法、metadata或外部进程。先保留已有全部证据/双语commit闭环，再提出具体内存压力诊断或新机制交peer与leader；不补9到12、不改协议求赢。
