# power v043 V uint4 fetch / sc-16g-2

## 1. 上版本遗留问题

v042同轮91.0005us，v28 83.5765us；MTE约76%对63%，相同global bytes却issue成本可能更高。V每lane每block4次8B load。

## 2. 问题原因分析

更大向量可减少load数量，但packed exchange及mixed-type view可能增加寄存器/private存储。不能由高MTE直接证明memory bottleneck。

## 3. 本版本解决方案

V2x8 tile两次16B load，4个uint32 xor8交换重建4x4 producer。V共享布局、consumer、注意力数学和normalizer不变。

## 4. 具体落地策略

fetch row=(lane//8)*2/feature=(lane%8)*8；output row=(lane//16)*4/feature=(lane%8)*8+4*((lane//8)%2)。相邻xor8交换相反feature-half。CPU全部1024位置证明通过；T.view reinterpret words/half，mask全64lane。生成uint4 V load、4packed shuffle、uint2 sharedstores。源v043三imports/static PASS，fallback AST不变。编译80MT/50ST、stack36B/max6，dynamicshared2048。

## 5. Benchmark 对比

native case12/W10R50/naive_nsa，125.076us PASS。parent v042 paired91.0005us、baseline83.5765us为历史对照，非本轮paired。无stack假设已失败，不扩大paired/full14/OJ。

## 6. Profile 指标变化

mcTracer20次122.240us，80regs/2048B/shared、private_total36，private_per_thread字段0，两字段原值保留。LLVM存在v_fetch_words alloca[8xi32] addrspace5。证实取值数组未完全寄存器化，stack不一定来自寄存器pressure spill，不混淆概念。未采新mcProfiler（资源/native门槛失败），SDK/profilebaseline参考42。ISA不可用，无新Roofline。

## 7. 实验总结

rejected。读取确已向量化，局部数组/交换成本抵消收益。主文件保持原v28。下个配置可把T.view混合指针改成值的reinterpret/pack/unpack，检验是否消除v_fetch_words private alloca；不能假定去掉stack就能beat v28，仍要native及全14门槛。
