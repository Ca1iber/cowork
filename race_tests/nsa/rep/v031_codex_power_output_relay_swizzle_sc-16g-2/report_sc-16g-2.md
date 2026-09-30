# power v031 输出 relay swizzle / sc-16g-2

## 1. 上版本遗留问题

v030目标case12为95.020us，原始NSA v28为85.3555us；case10还退化。

## 2. 问题原因分析

输出shared头行写入128B步长。framework bank模型冲突16，不是硬件保证。

## 3. 本版本解决方案

输出shared列chunk8 xor row%8，模型冲突降2。

## 4. 具体落地策略

只修改输出layout，保留uint2写入与uint4 coalesced global copy。Q/K/V、统计和所有同步不变，S1/host AST保持。资源69MT/28ST、零stack、max7，旧65MT/28ST/max7；LLVM存档。

## 5. Benchmark 对比

原生warmup10/repeat50、naive_nsa、ABCCBA两轮，36/36 PASS，加三次screen PASS。

|case|原始v28us|power30us|power31us|vs parent|vs baseline|
|--:|--:|--:|--:|--:|--:|
|10|11.955|12.137|11.689|-3.69%|-2.23%|
|11|23.549|24.558|24.108|-1.84%|+2.37%|
|12|83.592|95.577|94.100|-1.55%|+12.57%|

case11/12仍慢于基线，未新跑全14/OJ，不推广。

## 6. Profile 指标变化

源码及三份生成代码静态检查通过，向量宽度与预期一致，资源增加4MT但max7不变。没有新mcProfiler/mcTracer/Roofline，最近v029背景不代表本版计数器；bank预测尚未硬件验证，ISA不可用。

## 7. 实验总结

三个目标相对上版都有配对小收益，case10约快于原始v28；case12仍慢12.57%。下一步验证Q协作global向量加载到shared，再缓存native Q寄存器。Q shared应利用前置生命周期与K复用，显式完整warp同步；最终全14无退化和精确提交稿门禁继续保留。
