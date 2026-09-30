# power v029 V直接读取 / sc-16g-2

## 1. 上版本遗留问题

power v028 case12为96.957us，原始NSA v28历史83.382us。

## 2. 问题原因分析

PV从shared读16个标量，可能增加操作数供给代价。

## 3. 本版本解决方案

按原生feature-lane布局直接读V，四个column tile逐个加载和MFMA。

## 4. 具体落地策略

V local4half替换shared和generic gemm，输出和概率fragment显式布局。K/Q和softmax保持。资源57MT/30ST、零stack、max8、2560B shared；旧64MT/32ST、4608B。

## 5. Benchmark 对比

原生warmup10/repeat50、naive_nsa三个目标PASS：17.920/34.540/136.177us，旧screen11.510/24.407/96.957us。不是配对，但明显退化，未做全14/OJ。

## 6. Profile 指标变化

新mcTracer20次135.168us。mcProfiler各两次有效：power MTE52.79-52.91%、MMA6.53-6.54%，baseline62.72-62.76%/11.06-11.07%。L2hit升到95.13-95.14%，物理流量仍约17.98MB。shared conflict4.46，受到删除V访存后指令组合变化影响，不能仅凭平均值推因果。Achieved/Dispatched waves均4096，是总计数，不能当occupancy。新mx-smi快照存档；LLVM有global scalar V loads，ISA不可用。未新建Roofline图，旧模型流量口径可参考，compute roof未知。

## 7. 实验总结

资源下降但操作数供给更慢，拒绝。完成三次失败后的目标重profile。下一步回到power v028：4x4寄存器微转置加shared位排列，使global/写入/PV都向量化。bank_analysis假设32banks/4B/16lane phase，不是硬件保证；映射1024元素双射、模型读写无冲突。另记录output relay模型冲突16降2的后续方向。
