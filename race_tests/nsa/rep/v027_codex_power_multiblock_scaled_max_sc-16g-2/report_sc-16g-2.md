# v027 缩放后的 max 状态 / sc-16g-2

## 1. 上版本遗留问题

v026 case12配对97.5795us，v28为83.382us。编译资源65MT/32ST，staticMax7。

## 2. 问题原因分析

LLVM显示每次选块都缩放旧max PHI和新max，可能造成额外临时量；寄存器上限只是待验证假设。

## 3. 本版本解决方案

xp2单位的max状态，避免重复旧max乘法。

## 4. 具体落地策略

helper统计状态重新参数化；Q/K/V、同步、S1与host AST保持不变。源文件及三份生成代码静态检查通过，LLVM已存档。

## 5. Benchmark 对比

warmup10/repeat50、naive_nsa，三个目标screen通过。

|case|v027 screen us|
|--:|--:|
|10|11.546|
|11|25.011|
|12|98.289|

case12为97.5795us、v28为83.382us，来自历史配对。本轮不是配对，不根据微小变化声称性能收益。资源预测失败后未做全14/OJ/新配对。

## 6. Profile 指标变化

65MT/32ST、零stack、staticMax7，未恢复预期8。LLVM/C++确认状态改写，但寄存器峰值不动。本轮没有新mcProfiler/mcTracer/mx-smi/Roofline，沿用v026环境作历史背景；ISA工具不可用。下一轮应改变机制，避免继续根据一个临时量猜峰值。

## 7. 实验总结

print('sum',sum(statistics.median(v['baseline']) for v in d.values()),sum(statistics.median(v['root']) for v d.values())) incase12首轮98.289us也未显示收益，拒绝推广。下一步基于v026测试自适应保留归一化基准，减少逐块累计output缩放；以FP16指数上限约束变化，不依赖输入分布。
