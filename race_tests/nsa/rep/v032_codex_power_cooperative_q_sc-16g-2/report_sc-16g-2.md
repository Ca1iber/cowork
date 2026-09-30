# power v032 Q协作加载 / sc-16g-2

## 1. 上版本遗留问题

v031 case12 94.1005us，原始v28 83.592us。

## 2. 问题原因分析

Q冷输入8.39MB，原生global读取四轮uint2。

## 3. 本版本解决方案

协作global两轮uint4到shared，再四次uint2进入Q寄存器复用。

## 4. 具体落地策略

显式warp fence；Q/K生命周期复用，shared保持4608B。Q/K布局相同，数学、V转置、输出swizzle不变。70MT/26ST、max7、零stack；S1/host AST保持。

## 5. Benchmark 对比

原生warmup10/repeat50、naive_nsa、两轮ABCCBA，36/36 PASS，加三次screen PASS。

|case|基线us|power31us|power32us|vs baseline|
|--:|--:|--:|--:|--:|
|10|11.677|11.812|11.671|-0.05%|
|11|23.818|24.002|21.706|-8.87%|
|12|83.689|94.275|92.403|+10.41%|

case12仍退化，没有全14/OJ推广。

## 6. Profile 指标变化

新mcProfiler各两次：power MTE62.96/MMA9.96%，基线62.77/11.07%。shared nonconf79.88%、conflict1.03；物理流量约17.95MB。mcTracer20次88.576us，70寄存器、shared4608B、private0，与编译记录一致。Achieved/Dispatched4096是总数。LLVM/mx-smi快照存档，ISA不可用，compute roof未知。

## 7. 实验总结

S4配对快8.87%，case12仍慢10.41%。建立仅S4替换的真实v28基线检查点，做全14核验；同时继续6/12优化，保持完整目标。
