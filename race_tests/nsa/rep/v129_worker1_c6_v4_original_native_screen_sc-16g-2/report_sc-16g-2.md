# v129 原C6 V4消费者首次native测速（sc-16g-2）

## 1. 上版本遗留问题

v127 Num32/Voperand16→4消费者sourcecfeb/header127，原5GiB准入拒绝0backend；v128独立6+22+4预算编译完成，IR16个PV half4-load紧接MMA，但100MT22ST/max4未下降。寄存器下降预测已被反证，实际端到端调度效果未测。v129原文本先准备，按leader调度待v130全14组合验证关闭后才获得独占GPU。

## 2. 问题原因分析

源码small operand不等于真实物理活跃范围或occupancy。IR交错是已验证编译现象；减少预取/MLP/ILP、地址和Num32累积的代价仍可能抵消，具体原因未知。本次不用resource预测替代原native，保持旧127wait1/128compile0与130全部正差独立，不复制旧118Num16早输出实现。

## 3. 本版本解决方案

复用immutable127完整source，不改kernel/header/import/JIT/Num32/P8/Score8/每输出key0→key1积累/global16B/所有producer/layout/output/sync。B28-CB13-C127-C127-CB13-B28两round，三source同singlecase freshprocess协议、原seed0/F16GradTrue/fullnaive1e-2/W10R50，不使用旧样本。完整candidate4/inclusive12参考检查实际PASS，12native和所有outerwait0。

## 4. 具体落地策略

仅原C6=(8,1024,1,16,128,1,32,True)，原generated grid1024×8/64thread/shared8192引用128SHA。首次launcher606873持原Popen至wait0。6GiBbaseline+22工程估计+4reserve，28runtime/OOM13/unknown1G/600s/.5s/1s/ownership/priorabort/unownedexactNode/cooplock全部保持。18deps+shared6真实path→SHA.items验证，只有phase/GO元数据变化。没有source编辑、metadata/export/resource/IR/profile/额外native；其他13source保持CB13，不能借此声明它们性能不退化。

## 5. Benchmark 对比

| 版本 | 中位us | min..max us | vsCB13 us/% | vs原28 us/% |
|---|---:|---:|---:|---:|
| B28 | 156.644000 | 156.442000..157.409000 | 62.976000/67.233207% | 0.000000/0.000000% |
| CB13 | 93.668000 | 92.979000..93.901000 | 0.000000/0.000000% | -62.976000/-40.203263% |
| C127本版 | 93.834000 | 93.399000..94.193000 | 0.166000/0.177222% | -62.810000/-40.097291% |

两round相对CB13 +.378581%/+.180046%，范围交叠，按预声明median不赢拒绝，无repeat或追加。原event包围50次Python calls，含hostenqueue，非纯kernel。全部raw us：{"baseline_v28": ["156.626000", "156.442000", "157.409000", "156.662000"], "parent_v113": ["92.979000", "93.507000", "93.901000", "93.829000"], "candidate_v127": ["93.793000", "93.399000", "94.193000", "93.875000"]}。高点与正差全部保留，不以noise/源相同豁免。三个source seed0输入固定，四candidate检查不宣称四种不同输入覆盖；只原selectedC6正确性/测速，不是全14/OJ。

## 6. Profile 指标变化

没有新profile/资源/IR。已归档128 parent/candidate均100MT22ST/max4/stack0/dyn8192；编译32MMA/0alloca/0AS5/交错V4load-MMA支持源码物化，但不证明物理寄存器下降或运行occupancy。989个0.5s样本OOM13不增，wholeCG观测peak 27280719872 B仅采样下界，不是futureupperbound；工程预算不保证后续安全。

## 7. 实验总结

状态rejected_latency_originalC6_4candidate12inclusive_complete。原naive4candidate通过但C127中位+.177222%、两round正、区间交叠；未获得净调度收益，不能优化成功/推广。源cfeb/header127、bestCB13/canonical429/leaderC300保持，不自动全14/profile或再测该方向。旧127准入1及128仅编译结论不复活，全部原CSV/truewait/guards归档供leader复核；后续有限任务另排。
