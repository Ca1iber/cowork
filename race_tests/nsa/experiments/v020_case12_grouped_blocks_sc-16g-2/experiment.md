# v020 case12 分组处理 sparse blocks
起点：OJ Accepted v009；v016 只在本地改善 case6，线上尚未验证。v009 case12 S8 每 CTA 串行8阶段，平均7.453有效 block，每阶段4个无条件 block barrier、末尾1个，共33处动态同步。
假设：把2/4/8个被选 KV block 拼成一个逻辑 tile，降低在线 softmax 的重复 max/sum/exp2 和每阶段同步次数，可能比继续微调 PV/QK 更有效。
机制：仅对 S8、BS16、D64、G16、causal1 走新 TileLang kernel；每组将 K block 搬入 shared，做一次 QK 和组内 softmax，再搬 V block 做一次 PV。组间保持在线 softmax 归一化。扫描每组2/4/8个 block；其它形状精确走 v009。
预测：有效 block 访问和输出不变；组数8→4/2/1，softmax 归约与静态同步成比例下降；shared/register 使用随组大小上升。
证伪：编译/数值失败，generated code 没有减少归约/同步，或者 case12 因资源压力变慢。
风险：TileLang 大 N/K GEMM 的寄存器需求、shared 切片 copy 布局冲突、invalid sentinel 的初始化开销和累加舍入变化。
