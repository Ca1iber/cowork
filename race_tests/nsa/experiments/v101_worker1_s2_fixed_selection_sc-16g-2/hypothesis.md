# v101 worker1：仅C10直接加载Q/K fragment，待leader审阅

## Observed evidence / 已核验观察
fresh exact parent84 profile：256 dispatched waves、512KiB+320B输出、读取593056B、L2 68.86%、shared非冲突100%/conflict0、WG-load45.87/45.83周期。MTE15.42/15.19%、MMA1.87/1.84%。fresh mxcc82MT/24ST、dynamicshared2048B、stack0、staticmaxwarps5。这些duty/静态上限不是带宽或实测occupancy，不证明launch/compute/memory单一瓶颈。

## Verified bottleneck / 已验证范围
未证明dominant瓶颈。当前自己S2代码将Q和每块K先global向量copy进swizzled shared再读成MFMA寄存器fragment；Q有1次warp sync，每个K2次，S2合计5次。这是实际数据流和同步工作观察，尚未量化延迟占比。bank已经报告0conflict，不调整bank。

## Current hypothesis / 假设与机制
仅C10 Q/K直接从global读入原MFMA相同fragment坐标，去掉qk_fetch8、Q/K shared staging与5次sync。每lane Q/K片段坐标原样：row=lane%16，col=chunk*16+(lane//16)*4+element，每chunk4half，4chunk覆盖D64。保持原V/output布局与shared2048B、64threads/query、逐块online softmax与rounded/scaled P den，不合并两块。

## Predictions / 预测
Q/K staging/shared访问/sync减少，局部缓冲qk_fetch消失；必要Q/K值不变、全局请求分布改变。预期MT不增长、静态warp上限不下降、stack0。V/output shared仍2KiB/冲突0，低duty不预设提升；native固定对照确定真实收益。

## Falsifiers / 停止条件
编辑前先待leaderreview。候选source/generated strict gate或原完整naive_nsa正确性失败立即拒绝。生成code未移除Q/K stage或sync不符则拒绝。metadata预编译若stack>0或staticmaxwarps<5直接拒绝；不通过降低测试要求。C10固定B-I-C-C-I-B两轮4候选/12含controls原W10R50 screen中位不低于84则拒绝，不重复采直到好看；若目标明确改善先送leaderreview再full14，各正delta仅一次固定确认。其他13路径保持完整parent AST prefix和唯一C10key覆盖，数学一致不豁免性能退化。

## Risks / 正确性与资源
Direct K/Q分片global访问合并可能差于16B producer，增加请求/地址计算/寄存器。同步只能删掉已不再共享的Q/K阶段；V覆盖前同步与V读取后的数据依赖、output同步均保留。MFMA数据类型/fragment offset/在线数值缩放/valid与causal逻辑不动。原native inputs、容差1e-2、seed0、W10R50全部保持；无async/foreign/manualgeneralbuiltin/内容cache。无新OJ分数，不把v84成绩沿用为v101。

## Leader GO 与同步对象核验

leader已批准仅C10机制，并要求先资源/固定screen后送review，不能提前formal。Q staging后的sync保护Q shared producer→fragment reader，阶段删除后不再需要。每块K staging前sync原来保护前块V reader→K shared writer：删除K writer后，真正下一次shared写变为V写，原V前sync仍保留，覆盖该依赖；不能把它简单当K专属。K staging后sync保护K writer→fragment reader，改global直接local后删除。S2合计删1+2×2=5次。

保留每块V写前sync、V写后reader sync、最终output写前和写后sync；所有共享复用依赖仍保护。新的Q/K每lane4half(8B) vector坐标已1024位置穷举证明，MFMAoperand顺序不动，但合并请求可能差于原16Bproducer。有效K index为block_start>=0且<=token；token<seq_len且seq_len%16==0推出block_start+15<seq_len，sentinel/负index不实际读取K。WG-load剩余指令构成改变可使平均延迟升降，不单独当accept gate。
