# power v054 exact record-max rescale / sc-16g-2

## 1. 上版本遗留问题

v050单warp87us接近但仍输原v2883us；62MT/28ST、2KiB arena。四warp partial方向进一步资源压缩仍大幅退化。本轮回到v050，检查max不变时alpha1的冗余exp/rescale。

## 2. 问题原因分析

global max不变时exp2((old-new)*scale)=1，可以保持N/Z/M完全不变。跳过操作需query-dependent branch，exec-mask与控制开销可能抵消收益；不能由操作减少就推定加速。

## 3. 本版本解决方案

仅当block_maximum>maximum时计算alpha、缩放旧16F32 N及den、更新max。删除new_maximum局部存储。不是历史threshold7迟滞anchor：每个真正record都更新exact global max，P最大仍256。保留v050所有layout、MMA、probability/den数学与原入口cache接口。

## 4. 具体落地策略

guard_safety_proof证明record分支内无shfl/MMA/sync，后续collectives在reconvergence后、mask全64lane。firstvalid-inf anchor产生alpha0。source/header/三imports/selected generated静态PASS。实际2048B shared，62MT/26ST、stack0/max8，无private alloca；比parent62MT/28ST仅减少2ST，主要预算未改善。optimizedIR gethwreg48/sethwreg96/bpermute32/warpbarrier35与parent静态相同，不能证明dynamic控制或SFU时长。

## 5. Benchmark 对比

官方case12初测94.966us PASS，project naive_nsa/W10R50/input不变。同进程三方对称两轮12/12完整reference PASS。v28 median88.609us、v05091.3535us、v05496.540us，对v28慢8.95%、对parent慢5.68%。保留parent187.254us、candidate177.638us的异常值，不称noise或丢弃。candidate最小94.182仍比baseline最大88.863慢，拒绝不依赖异常值选择。未扩大全14/OJ。

## 6. Profile 指标变化

保存generated device/host、LLVM、资源与IR静态control计数。没有candidate MCProfiler/mcTracer，因为target failed，先以实际native时间判定；v051可靠incumbent及v053scope异常capture按原path引用，不拿编译ceiling当occupiedwarps。ISA/sGPU Roofline标定不可用，未改变GPU设置或benchmark。query branch的exclusive耗时贡献未知，不能因为慢就把全部损失归给divergence。

## 7. 实验总结

rejected_target_performance。代数允许skip的冗余操作确被guard表达，数学正确但native反而退化，不能推广。新的控制/调度代价尚未被独立profile量化。完整sourceSHA41bdd9df...；case6保留v049依赖、main42911561...与独立v049待OJ源码都未改动。后续应重新挑选有证据支持的data/compute机制，避免把仅省一段scalar操作当可靠throughput收益。
