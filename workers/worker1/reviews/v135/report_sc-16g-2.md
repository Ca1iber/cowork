# v135 C303 三项组合全14失败前缀（sc-16g-2）

## 1. 上版本遗留问题

SC132 C8局部−2.187872%、SC134 C6局部−7.524024%、worker2 C5局部−1.3033%都不是组合全14证明。leader生成immutableC303985f/header303，CB13完整18AST加exactC5/C8/C6三互斥专用key，其他11源含C9/C11/C12保持。旧C300全14正差、C301未运行队列、全部selected样本独立保存，不pool。

## 2. 问题原因分析

本版原第14进程CB13在unknown visibleheavyRSS exceeds1GiB守卫停止。Unknown PID643787/PPID643781/PGID643781/start100999382/python3.12，sample26 VmRSS1214348KiB、sample27 2932660KiB，归属与来源UNKNOWN；不能用PPID/comm/exe推根因。只读取既存采样metadata，不读陌生cmdline/env/日志、不signal它。原ownednative643584验证身份后TERM/wait−15，0reference/CSV未生成；OOM13稳，不是数值失败。规则与预算不改、不等pass、不补15/16。

## 3. 本版本解决方案

原固定B28-P84-CB13-C303-C303-CB13-P84-B28两round，16freshprocess，每原official1..14/seed0/F16GradTrue/fullnaive1e-2/W10R50。source303未改，数学/compiledReg/MMA不作组合性能假门禁；C5首次SC验证由原naive检验。既有132/134真实CSV/原wait仅source前置身份，不计入新样本。

## 4. 具体落地策略

启动前23deps+shared6+原132/134CSV24SHA、sourcecombo含decoratorAST、C5source1d038同aa7823digest/C6ccc同5bf056/C8sameC301、静态validator0。唯firstlauncher636887原Popen持到wait1；6GiBbaseline+22工程估计+4reserve/28runtime/OOM13/unknown1GiB/.5/600/critical1s/exactunownedNode/ownership/priorabort/cooplock保持。

13成功进程native_exit0/clean14=182总检查，其中C303四进程56检查全14naivePASS。第14 CB13 native−15/cleanfalse/ref0；第15P84与16B28未启动。B28/P84/CB13各仅3进程42检查。完整四层diagnostic/controller/supervisor/launcher原wait1；existingstdlibanalyzerwait0只输出incomplete/cases[]，不能用分析器0洗原gate1。source985f/main429/best113不改，未新SDK/profile/源编辑或额外native。

## 5. Benchmark 对比

| 范围 | 计划 | 实际 | 判定 |
|---|---:|---:|---|
| processes |16|13clean+1failed|原协议未完成|
| candidate fullrefs |56|56|四candidate×14正确性观察通过|
| inclusive fullrefs |224|182|缺对照/不构成完整performance gate|
| B28/P84/CB13 refs |各56|各42|三control不能对四candidate拼完整median|

保留13原CSV/182PASS rows全部时延、shape和SHA，job14空记录、15/16未启动。不得丢第四C来匹配三个control或补旧selected样本。Root已读first8独立SHA/112PASS28C，只有首轮有限观察：vsCB13 C6−8.1201%、C5−.1032%、C8−.3146%，未改C9+.2478%、C10+.4585%仍保留；P84case3[10.813,67.236]异常高点让首轮下降膨胀，不能删或credit算法。worker2负责的case13 first8高点/范围与所有raw保持，不当源相同免责或新改进。首轮不是完整two-round/no-reg结论，所有completed数据独立，完整formalbenchmark UNAVAILABLE。

## 6. Profile 指标变化

没有mcProfiler/trace/postexport/SDK/IR，UNAVAILABLE，不能从当前failedprefix给HBM/occupancy/独占或唯一原因。1701个.5swholeCG样本OOM13不增，观测peak 28076896256 B仅下界；28GiB pressure线未触发，unknown1GiB规则实际触发。GPU/CPU外部任务归属由leader询问用户，不作推断或主动清理。

## 7. 实验总结

failed_unknown_heavy_guard_all14_formal_incomplete_prefix_retained。实际56candidate全14正确性观察与182总checks保留，但完整16/224协议失败，不能宣称组合no-reg/全局收益/OJ/推广。所有raw、原wait1与失败metadata归档，不恢复suffix/改阈值/unknown身份；旧132/134/232局部结论不洗135 gate1。SC暂停新GPU直到leader明确状态；worker2可另卡准备独立完整C303协议，但不修改/删除本版或pool跨机样本。此处只闭环，后续独立任务必须另审GO。
