# power v049 original cache entry / sc-16g-2

## 1. 上版本遗留问题

v048目标case6快约4%，全14正确112/112，但case1/3/7/9/10中位增加。13 fallback GPU源码一致仍不能证明no-regression；入口新增if是明确的host开销风险。

## 2. 问题原因分析

原始入口先以八项shape/causal tuple查_KERNEL_CACHE，再仅在miss时构建kernel。可以预先放入已经验证的code object，避免增加每次执行的条件分支。该操作的准确耗时贡献未由源码推定，仍用native计时验证。

## 3. 本版本解决方案

原v28整个module前缀、run_kernel完整AST保持不变。追加自身GPU helper及compiled-code cache注册，仅key=(8,1024,1,16,128,1,32,True)。模块初始化只编译code object，没有输入tensor、预处理、GPU attention数据计算或内容缓存。每个scored调用执行完整kernel。

## 4. 具体落地策略

完整源码SHA92887321...；GPU case6与v048 byte-identical，SHA220cda1c...。其他13项与原v28 byte-identical；全28 device/generated source静态PASS，header/三个imports/classes位置符合约定。候选8192B shared、76MT/26ST、stack0/max6，无private alloca；原v28 case6编译64MT/24ST、stack0/max8、shared8448B。static bpermute4/warpbarrier7与v048相同，不是实际occupancy或延迟。race warning原样保留，实际output2048-writer唯一性引用v048同hash证明，checker没有关闭。

## 5. Benchmark 对比

项目原生naive_nsa/W10R50完全不变，全14配对112/112正确性PASS。case6 v28 median156.854us→v049150.748us（快3.89%）。初轮case1/2/4/7/8/10/13中位增加，case1包含12.206/12.508us的两次值，全部保留。

针对上述风险项及case6，三方对称复测96/96正确性PASS；case6 v28 156.920us、v048156.9815us、v049152.261us，对v28快2.97%。case1大幅增加未复现，新8.9035us对base9.170us；其他风险项均未增加或相等，case10 median12.488us对12.485us，+0.003us/+0.024%。不把初次数据删除或称作噪声。缺少外部OJ分数，不能宣称no-regression已达成。从最终归档92887321...文件另跑完整14/14正确性PASS；单次latency属于文件验证，不替代paired。

| case | initial v28 us | initial v049 us | delta % |
|---|---:|---:|---:|
| 1 | 8.7935 | 10.7010 | +21.692 |
| 2 | 9.6410 | 9.6745 | +0.347 |
| 3 | 12.3675 | 12.3675 | +0.000 |
| 4 | 12.8585 | 12.9000 | +0.323 |
| 5 | 31.5545 | 31.3040 | -0.794 |
| 6 | 156.8540 | 150.7480 | -3.893 |
| 7 | 31.3215 | 31.3420 | +0.065 |
| 8 | 51.9735 | 52.1780 | +0.393 |
| 9 | 52.2165 | 51.8760 | -0.652 |
| 10 | 12.0935 | 12.4415 | +2.878 |
| 11 | 23.6265 | 23.5085 | -0.499 |
| 12 | 83.3640 | 83.2515 | -0.135 |
| 13 | 11.0180 | 11.0570 | +0.354 |
| 14 | 20.1320 | 19.9015 | -1.145 |

| risk case | repeated v28 us | repeated v048 us | repeated v049 us | v049 delta % |
|---|---:|---:|---:|---:|
| 1 | 9.1700 | 9.1465 | 8.9035 | -2.906 |
| 2 | 9.5385 | 10.0865 | 9.5310 | -0.079 |
| 4 | 13.7495 | 13.8290 | 13.5245 | -1.636 |
| 6 | 156.9200 | 156.9815 | 152.2610 | -2.969 |
| 7 | 31.2500 | 31.2270 | 31.1040 | -0.467 |
| 8 | 52.1215 | 52.1830 | 52.0880 | -0.064 |
| 10 | 12.4850 | 12.4880 | 12.4880 | +0.024 |
| 13 | 11.2385 | 11.2540 | 11.2385 | -0.000 |

## 6. Profile 指标变化

mcProfiler每个variant两份attention报告。候选wave8192匹配launch，read38.1066/38.0086MB、write33.5548MB，MTE41.70/41.95%、MMA6.28/6.32%、shared nonconflict60.49%、conflict2.21cycles、load54.71/54.73cycles，两份内部一致。其bank代价是后续布局方向线索；没有同轮可靠baseline可量化改善。原v28两份waves11768/11408不符8192，read256/270MB；baseline对照及paired counter comparison标inconclusive，不因exit0就使用。Achieved waves仅raw，不是occupancy。candidate两次指标不能替代实际latency。

mcTracer120秒timeout124，相关进程已结束；输出只有19-byte未闭合trace header、JSON不可解析，无有效kernel timeline。原始报告、capture、元数据和失败日志全部保留；没有ISA或可标定的sGPU Roofline，未改GPU/时钟配置。

## 7. 实验总结

pending_external_oj_no_regression（inconclusive），保留为可供OJ核验候选。case6多轮本地改善约3–4%，全14正确性已覆盖，original entrypoint AST与13 fallback GPU源码完全不变。复测没有解释初次case1异常原因，也不能保证外部分数不退化。主submission仍SHA42911561...，未推广。请用归档header codex-power v049、SHA92887321...核验14项OJ成绩后决定。后续可继续case12，或以候选自身conflict2.21cycles为线索改case6的V plane布局；不能从不可靠baseline归因或把编译warps上限当实际occupancy。
