# v103 worker1：C6 按64D plane完成PV和Output，待leader GO

## Observed evidence / 已验证观察

fresh exact parent84 C6：8192waves，write32MiB+416/+320B均符合事前0..512必要scope，read37649024/37655904B，L2 64.95%、shared100%/conflict0、WG-load47.12/47.15cycle、MTE49.53/49.34%、MMA10.50/10.45%。这些不证明HBM或单一dominant瓶颈。

fresh mxcc确实100MT/22ST、dynamicshared8192B、stack0、staticmaxwarps4，不当实测occupancy。当前CPP q_local32half、scores8float、P8half、numerator32float，v_operand仅16half、已按64D分组；不能假设V全D长期buffer。den已经在Vstage之前完成rounded-P sum+shfl32/16，不移动den、不新增P存储。

## Hypothesis / 假设和单一机制

原PV keyTile→plane→chunk需要整个D128的Num32float活到两个keytile完成。改plane→keyTile→chunk，每输出feature仍先key0再key1；每64D plane只需Num16float，正常除同一完整den并转F16后earlystore到已消费V区域，再clear/reuseNum16处理第二plane。保持Q/K/V global16B producer和最终global16B gather/store、地址/次序、MMA数量/dtype与QK/P/den不变。收益假设是缩短accumulator活跃范围，非把16B换8B。

## Exact alias / 真实布局

V plane0[0,2048)、plane1[2048,4096) half；out_slot=qk_slot(row,col,16)是panel布局，lower output[0,1024)、upper[1024,2048)，两者并集等于Vplane0，绝非row128线性。所有1024个V 4half vector与全部output vectors已穷举touchset，8B相对对齐，future Vplane1与两output集合不交。证明仅静态地址/覆盖，不是GPUrace或性能证明。

## Synchronization / 同步和数值保护

全部plane0/key0,key1 V reads结束后full64 sync，再写lower output；lower cast/store全部完成后才下一轮clear Num。plane1只读region1，完全不碰early lower/upper output区；最后full64 sync保护两份output给原globalreader。所有前面Q/K/V生产同步原样，不新增额外plane1预写barrier，预计原总sync数不变。valid条件全wave一致，sentinel/causal/bounds和invalid输出行为同parent。

P8同时resident本来如此；原sum8roundedF16P+shfl32/16代码不改，不分plane算den。每feature的两次MFMA累加仍key0再key1，除同一den→同F16 cast；仅独立feature的调度变化。新Num用16×64 fragment，forward_thread/index为原layout的64D限制域，检查actualCPP num16而不是从声明推断实际MT。

## Predictions / 预测及风险

期望physical MT下降、staticmax不降、stack0；不从这些宣布occupancy增加。ST可能增长，compiler可把两个SSA都保持live或重排stores，global计数/同步和必要搬运不变但address/layout可能改变。actualsource/generatedcode/resource必须证明num16 reuse、original global16B、lower读后写和最后reader同步；counter变化按实际解释，WG-load均值不单独当门禁。

## Falsifiers / 固定停止线

待leader GO才改candidate。源码/生成代码strict gate失败、alias/vector/数值顺序不符即拒绝。metadata0attention预编译若num16未物化、MT>=100、staticmax<4、stack>0、原global16B不保留则停止，不用sourcealloc当成优化。过资源门禁后仅现成run_variant的C6单source freshproc B28-P84-C103-C103-P84-B28两轮4C/12全组，原naive_nsa/seed/F16/causal/1e-2/W10R50。

任何OOM/nonzero/内层Killed/哈希变化/错误CSV即stop保留prefix，不adaptive retry。全部terminal0后median不快于parent拒绝；overlap或任何round正差不称stablewin，不重复直到好看。screen后先leaderreview再full14，不扩大其他13 keys或自动promote；无新OJ。

## Peer review / 直接交流

worker2已审阅并要求scalar之外完整vector集合、firstplane读后write sync、finalgather sync、Numclear/store顺序、actualcompilerMT、P/den及invalid语义核验。反馈已纳入；proposal不改worker2代码/计划，peer建议不当执行审批。v102公平freshproc directQK慢9.07%的反例保留，不能以register少推断收益。
