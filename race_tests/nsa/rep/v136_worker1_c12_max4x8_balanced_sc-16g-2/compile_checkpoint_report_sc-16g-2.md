# v136 compile-only checkpoint（sc-16g-2）

## 1. 上版本遗留问题

当前CB13C12 CPP388/IRde3有32个localmax串链+原2warpmax依赖34，Indices仍16loads；SC135全14unknownheavy失败独立保留。136只选四max8归约机制，不动其他13source或C303。

## 2. 问题原因分析

当前IR给出max链事实，不证明运行瓶颈。Source rationale保留每条−inf seed、sameT.max和原NaN/±0经+8/emptyhasvalidfalse forward边界，NaNpayload/异常位非bit承诺；完整原naive1e−2未放宽。

## 3. 本版本解决方案

source43fa/header136，仅partial4local+四8链/二层merge。CB13完整18ASTprefix/正确JIT/entiredecoratedinverse exact；原Score32/guard/hasvalid/P32F16round/den/PV/Num16/两shuffle/globalvector意图/共享同步输出保持。

## 4. 具体落地策略

原finite5stage一次：P/C currentC12metadata2pairs0attention→CPUshape/source→candidate1resource/firstIR→CPUactualmaxDAG。root核全CPP逆变换仅partial4+max区域、hostbyteequal，64MMA/0allocaAS5/stack0/原scope保持。Allfiveandoutertruewait0，6G22estimate4reserve/28runtime/OOM13/unknown1G/.5s600/1s/Nodeexact/priorabort/Popen/cooplock同原，不因旧unknown已missing而放宽，未来新unknown仍stop。

## 5. Benchmark 对比

Native未运行/0refs，只有四源16 selector12（planned4C16）TEXT，不能声明时延收益或correctness/OJ/no-reg。这是compile-only checkpoint，不是最终版本promotion；若获leaderGO，同version原source下一原nativefixed16，不能混旧135/233样本。

## 6. Profile 指标变化

Actualmax37calls（比父34多3），四条depth8→pair9→local10→原warp2 total12（父34）。Indices16loads不变；资源68MT44ST/max7/stack0/dyn2048同父，未改善资源。Flags只contract，无nnan/ninf/nsz/reassoc/fast。SSAdepth不是ISA周期/occupancy。100原.5swholeCG samples，OOM13不增/observedpeak27092606976B仅下界，0额外profile/SDK。保持原cache，不删新pycache，仅不归档generatedcache。

## 7. 实验总结

编译机制物化，数学/flags/scope经root手审；native实际正确性/端到端收益仍UNAVAILABLE。当前compile-only checkpoint保存全部source/真实退出/原内存与maxDAG，源及冻结handler不改；等待独立nativeGO，不自动执行或promote。
