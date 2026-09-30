# power v034 双chunk K预取 / sc-16g-2

## 1. 上版本遗留问题

独立v032 case12 92.403us，原始v28 83.689us；root v033保留基线case12。

## 2. 问题原因分析

K shared load与dependent MFMA交错，双chunk预取可能覆盖等待。

## 3. 本版本解决方案

k_local4half扩8half，先load两个chunk再发两次MFMA。

## 4. 具体落地策略

累加顺序0/1/2/3保持。新S8 trial仅metadata分发，S4和其他fallback AST保留，完整稿在/tmp，root仍v033。C++/LLVM显示预取分组；70MT26ST max7、零stack，不变。

## 5. Benchmark 对比

原生case12 naive_nsa warmup10/repeat50 PASS，91.551us。v032历史screen91.663us，差异接近噪声，原始v28约83.7us仍明显更快，未做全14/OJ推广。

## 6. Profile 指标变化

源码/生成代码静态检查通过，资源无变化，LLVM存档。未新采mcProfiler/mcTracer/Roofline；已有v032采集只作背景，不声称本版计数器收益。ISA不可用。

## 7. 实验总结

分组物化但没有显示足够收益，拒绝推广。下一步测试case6相邻feature分片CTA；接受重复QK成本，只以真实延迟决定，继续完整目标。
