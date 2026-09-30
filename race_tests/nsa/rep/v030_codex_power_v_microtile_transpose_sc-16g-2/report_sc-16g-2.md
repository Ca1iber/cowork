# power v030 V微转置 / sc-16g-2

## 1. 上版本遗留问题

power v028约97us，原始NSA v28约83us。直接V读取v029达到136us，失败。

## 2. 问题原因分析

原先PV需要16个shared标量load。提出同时向量化global、shared写入和PV读取。

## 3. 本版本解决方案

每线程4x4寄存器微转置。V物理feature=col/4+16*(col%4)，token=(row/4 xor col/16 xor col%4)*4+row%4，保持1024元素双射。

## 4. 具体落地策略

global4uint2，shared4uint2，PV4uint2。初版gather导致shared写标量，追加4half连续列缓冲后正确向量化；初版未计时，源/代码已保留。K/V共享区独立，Q/K/统计/输出relay和S1/host保持。资源65MT/28ST、零stack、max7，旧64MT/32ST/max8。

## 5. Benchmark 对比

原生warmup10/repeat50、naive_nsa，ABCCBA两轮，36/36 PASS，另三次screen PASS。

|case|原始v28us|power28us|power30us|vs parent|vs baseline|
|--:|--:|--:|--:|--:|--:|
|10|11.482|11.553|11.686|+1.16%|+1.79%|
|11|22.879|24.381|23.980|-1.65%|+4.81%|
|12|85.356|97.902|95.020|-2.94%|+11.32%|

case10相对上版退化1.16%；case11/12仍慢于原始v28。未新跑全14/OJ，不推广。

## 6. Profile 指标变化

生成代码和LLVM确认向量路径，资源有变化。bank模型是framework32banks/4B/16lane phase假设，不是平台保证；尚未新采mcProfiler/mcTracer/Roofline，本轮只做编译与原生配对。最近v029原始v28重profile仅作背景，未据此声称新bank计数改善。ISA不可用。

## 7. 实验总结

case12相对上版降低2.94%，case11降低1.65%，但目标门禁失败。下一步改输出shared relay布局：当前native头行写入跨越128B步长，模型冲突16；chunk8 xor row布局预测降到2，同时保留uint4 global copy。以真正配对耗时验证，不用模型当保证。
