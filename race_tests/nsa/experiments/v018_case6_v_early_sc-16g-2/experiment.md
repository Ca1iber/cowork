# v018 case6 V 到达时机
起点：本地最佳 v016；v009 仍是 OJ 已接受版。v017 证明最终 output_shared 不能移除，否则全局写从 uint4 降为 uint2 并退化。
观测：case6 设备 kernel 约 163 us；MMA Duty 约 5.5%，HBM 吞吐未饱和，K→QK→softmax→V→PV 的次序使 V 搬运落在后半关键路径。
假设：将 BS32 的 V copy 前移到 K 之后、或 QK 之后但 softmax 之前，可提前发出 V 请求，让内存流水与独立计算重叠或合并 shared barrier。
机制：仅改变 BS32 分支中 V 的同步 T.copy 位置，K/QK/softmax/PV 数学及 output_shared swizzle 保持 v016；其他形状原样。
证伪：编译/正确性失败；代码生成没有改变 V 请求与同步位置；资源增加或耗时不降。
风险：T.copy 可能完全同步，无法重叠；K/V 同时活跃增加 shared 占用，降低并发；编译器可能增加 barrier。
