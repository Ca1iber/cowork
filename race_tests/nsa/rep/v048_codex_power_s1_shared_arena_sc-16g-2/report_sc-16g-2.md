# power v048 shared arena / sc-16g-2

## 1. 上版本遗留问题

v047正确但case6同轮328.3505us，v28 167.0375us。实际shared20KiB，Q4/K8/V8独立、output复用K；8192B预测失败。stack0，72MT/max7。

## 2. 问题原因分析

独立shared分配未自动复用，资源占用已验证。其独占耗时贡献未证明。本轮保留数学和V布局，显式复用Q/K/V/output，检验更小shared的整体影响。全局no-regression还包含host路径，不能只凭GPU源码相同判断。

## 3. 本版本解决方案

单块4096half shared数组，Q/K按v047 SDK物理swizzle地址、V按原row-pair地址、output按原输出swizzle访问。Q/K/V阶段已有fence，额外在输出覆盖V前加入warp fence。仅缓存compiled kernel，所有数据计算/搬运仍在每个run_kernel调用内。

## 4. 具体落地策略

CPU Q/K6144坐标、V4096与output2048坐标证明通过。lowered output store另行验证2048个半字写入者唯一、global读取2048映射正确。编译器parallel-loop race warning保留；该实际地址表达式无重复writer，未关闭race checker。完整native正确性覆盖后续门槛。host launch8192B确认；76MT/26ST、stack0/max6，无private LLVM alloca。Q/K/V global uint4与output uint4保留，V operand uint1读取32次/lane。static bpermute4不变、warpbarrier6→7，上限/静态调用数不是实际occupancy/延迟。三imports/header/fallback AST和全14 generated静态检查通过；13个fallback device source逐字节相同。

## 5. Benchmark 对比

目标三方同进程对称两轮12/12完整naive_nsa正确性通过，W10/R50不变。case6中位v28 166.0055us、v047 328.389us、v048 159.370us，对v28快4.00%、对v047快51.47%。全14 ABBA两轮112/112正确性通过；全套中case6快约3.5%，但case1/3/7/9/10中位有增加，暂不满足全局no-regression。原始值包括case12 baseline run4=204.329us全部保留，不丢弃或归为噪声。其他未改GPU路径的表观收益也不归因于算法改动。

| case | v28 median us | v048 median us | delta % |
|---|---:|---:|---:|
| 1 | 10.8620 | 10.9875 | +1.155 |
| 2 | 10.4935 | 10.4705 | -0.219 |
| 3 | 13.0915 | 13.2970 | +1.570 |
| 4 | 13.7115 | 13.5910 | -0.879 |
| 5 | 33.0600 | 32.9705 | -0.271 |
| 6 | 165.6780 | 159.9235 | -3.473 |
| 7 | 32.8680 | 33.1215 | +0.771 |
| 8 | 55.9105 | 55.9030 | -0.013 |
| 9 | 55.1525 | 55.1990 | +0.084 |
| 10 | 12.7540 | 13.1330 | +2.972 |
| 11 | 25.1700 | 23.3830 | -7.100 |
| 12 | 88.3865 | 88.1175 | -0.304 |
| 13 | 11.6890 | 11.4585 | -1.972 |
| 14 | 21.4555 | 21.3680 | -0.408 |

## 6. Profile 指标变化

本版无新mcProfiler/mcTracer：全局性能门槛未通过，近期baseline scope异常及trace timeout仍未解决。参考v047 raw captures（不可用于归因）；metadata-only导出再次确认原v28 case6 grid1024x1x8/threads64/shared8448B，expected8192waves，case12 grid1024x1x4/threads64/shared2560B。导出hook不执行NSA kernel，不能当作正确性或timing；这些有独立native证据。ISA不可用、无新Roofline，GPU设置未改。资源变化和同轮latency只支持该整体arena机制的效果，不能分离地址表达、额外barrier、reg变化的贡献。

## 7. 实验总结

inconclusive_global_no_regression，未推广/未提交OJ。case6本地目标改善和shared缩小已验证；其他case中位增加及host开销风险未解决。查阅原始host cache接口仅得到key=(B,seq_len,H,HQ,D,S,BS,bool(causal))与_KERNEL_CACHE.get，未查看旧kernel算法来指导优化。当前新增入口if在每个timed调用执行；下一版把已验证的case6 code object放入原始cache，恢复run_kernel body精确AST，避免每次增加分支。只能cache编译对象，不能cache tensor/预处理内容。保留本版完整SHA bda6e6fc...与所有证据，主submission继续保持原始v28 SHA42911561...。
