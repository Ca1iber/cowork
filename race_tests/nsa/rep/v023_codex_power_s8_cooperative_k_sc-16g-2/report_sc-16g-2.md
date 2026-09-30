# v023 K staging / sc-16g-2

## 1. 上版本遗留问题

case12 自主 v016 路径历史配对 114.7775us， v28 83.8065us。 v022 只改 case6。

## 2. 问题原因分析

上版 K 使用 MFMA 映射直接读全局内存。假设：协作向量加载改善访存组织。

## 3. 本版本解决方案

K global -> shared -> register MFMA; Q 保留寄存器复用。

## 4. 具体落地策略

只改 case12 K 搬运。 two uint4 global rounds; four uint2 shared operand reads. 64 threads, 70MT/28ST registers, 4608B dynamic shared, zero stack. 编译器 staticMaxWarps 7 不是实测 occupancy。 generic helper/run_kernel AST 与 v022 相同。

## 5. Benchmark 对比

Native warmup10/repeat50, v28/v023 ABBA, full naive_nsa reference. 56/56 PASS. bash hack/v023_codex_power_s8_cooperative_k_sc-16g-2/run_pair14.sh

|case|v28 us|v023 us|delta|
|--:|--:|--:|--:|
|1|9.262|13.097|+41.41%|
|2|9.349|13.241|+41.62%|
|3|12.514|18.358|+46.71%|
|4|12.578|14.162|+12.60%|
|5|31.163|31.316|+0.49%|
|6|156.493|156.631|+0.09%|
|7|30.999|30.966|-0.11%|
|8|51.553|52.483|+1.80%|
|9|52.136|52.488|+0.67%|
|10|12.049|13.727|+13.92%|
|11|23.398|28.690|+22.61%|
|12|84.319|100.382|+19.05%|
|13|10.567|13.591|+28.61%|
|14|20.088|21.095|+5.01%|

上版本 case12 114.7775us 来自历史配对，本轮未同步复测。 OJ 分数未知。

## 6. Profile 指标变化

mcTracer last20 中位数 96.896us; torchprof 30 次 96.896us. 计数器第一次缺失，补采有效： v023 MTE54.89-54.95%, MMA9.04-9.05%, L2hit89.31%, conflict1.67; v28 MTE62.98-63.03%, MMA11.11-11.12%, L2hit91.66%, conflict2.82. 总流量约 17.95/17.96MB。 Roofline model CSV 区分逻辑请求与物理计数； compute roof UNKNOWN. matplotlib 不可用，未安装。 LLVM IR/resource 已存档， ISA 工具不可用。 mx-smi 静态快照已存档，未新采 sustain HBM。

case2 torchprof GPU 两版均 5.888us， launch period v02310.496us / v288.704us。提示 host dispatch 开销需要单独验证。

## 7. 实验总结

局部收益，但相对 v28 全量门禁失败。不推荐替换 v28。下一步先验证 kernel object 缓存降低 host factory 开销； case12 再验证 Q 协作加载。
