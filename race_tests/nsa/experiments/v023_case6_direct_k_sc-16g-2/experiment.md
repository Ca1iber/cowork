# v023 case6 K global→local 直载
起点：本地合并候选 v022，v009 仍是 OJ 已接受版。v022 case6 output_shared swizzle 后约0.164 ms，MMA Duty仍低，K/V 数据供给和访存延迟是剩余疑点。v021 同样的直载方法在 case12 本地快约14%。
假设：让 case6 BS32/D128/S1/G16 的手写 QK 也直接从全局 K 读取 MFMA B operand，可省 K→shared→local 中转，同时保留 v022 的输出 swizzle；若 L2 命中足够，可能进一步提速。
机制：只扩展 use_direct_k 的参数条件，并在其 BS32 布局分支保留 output_shared swizzle；QK/PV/softmax、其它官方形状均保持 v022。
预测：K shared 中转消失、动态 shared 降低、case6 数值正确并快于 v022；case12 与 v021 生成代码相同。
证伪：跨 lane 直接 K 读取太分散导致延迟升高、输出 swizzle 丢失、正确性或其它形状变化。
风险：D128/BS32 的 global K stride 比 case12 大，L2 命中更低；地址分散可能抵消省下的 shared 中转。
