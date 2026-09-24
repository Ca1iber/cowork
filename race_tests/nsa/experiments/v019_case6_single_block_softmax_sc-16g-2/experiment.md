# v019 case6 单 block softmax 路径
起点：本地最佳 v016，OJ 已接受版仍为 v009。v017 直写 Output 因窄而分散的 global store 退化；v018 同步 V 前移导致 shared 资源上升并退化。
观测：case6 固定 BS32/S1，在线 softmax 仍执行 previous_max/rescale、denominator 旧值缩放与 output_acc 旧值缩放；S1 仅有一个有效 block 时这些步骤数学上冗余。
假设：对 BS32/S1 直接做单块 max、exp2、sum、PV 和一次归一化，删除跨 block 的在线状态依赖，可降低 case6 指令与 softmax 临界路径。
机制：仅在编译期 BS32 && S1 分支替换 softmax 更新，其他形状保持 v016；causal/sentinel/QK/PV/output_shared swizzle 不变。
预测：生成代码少一个 rescale exp2、旧 output_acc 缩放和旧 denominator 乘法，正确性通过，case6 时间下降。
证伪：数值失败、编译未消除对应指令、耗时不降或资源压力上升。
风险：全无效 block 时 denominator 为0 的行为需保持原语义；fast math 的舍入变化可能影响 allclose。
