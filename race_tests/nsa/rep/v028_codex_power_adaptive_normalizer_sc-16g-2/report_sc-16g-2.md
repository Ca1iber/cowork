# power v028 自适应归一化 / sc-16g-2

## 1. 上版本遗留问题

内核基于v026，历史case12为97.5795us，原始NSA v28为83.382us。

## 2. 问题原因分析

逐块rescale exp和output乘法产生统计开销；PV仍有16个shared标量load。

## 3. 本版本解决方案

保留raw-score anchor，概率加8个exp2单位。最大值超过额外7单位才提高anchor并缩放旧分子和分母。

## 4. 具体落地策略

非空Z至少256，当前概率约不超过2^15，偏置在N/Z抵消。anchor只升不降，rescale不超过1。先减raw anchor再乘scale。Q/K/V、同步、S1和host AST不变；生成代码确认条件缩放。

## 5. Benchmark 对比

原生warmup10/repeat50、naive_nsa，目标screen三次通过。

|case|power v028 us|
|--:|--:|
|10|11.510|
|11|24.407|
|12|96.957|

历史v026目标10/11/12为11.566/24.5735/97.5795us，原始NSA v28为11.827/23.1395/83.382us。本轮不是配对，无微小提速声明；目标11/12失败后未做全14/OJ。

## 6. Profile 指标变化

64MT/32ST、零stack、staticMax8，旧65MT/32ST/max7。静态上界变化未证明实际occupancy瓶颈。LLVM存档；没有新mcProfiler/mcTracer/mx-smi/Roofline，v026数据仅作历史背景。ISA工具不可用。

## 7. 实验总结

数学完整，资源有所降低但收益不足，拒绝最终推广。下一步测试V原生MMA布局直接global读取，省去shared中转。V沿feature连续访问，与失败的K原生lane读取不同。variant明确区分baseline_v28和power_v028。
