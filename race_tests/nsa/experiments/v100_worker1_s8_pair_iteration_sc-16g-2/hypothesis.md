# v100 worker1：case12 两块共用一次在线softmax更新

## Observed evidence / 已核验观察
当前v084父版case12原生中位72.230401us（v084 formal），用户OJ80分。当前fresh mcProfiler两样本：4096 dispatched waves，写8MiB+320B，读9,557,408B，L2命中87.43%，shared非冲突100%、冲突0，WG-load50.42/50.39周期，MTE74.88/75.11%、MMA12.92/12.96%。fresh mxcc：80MT/22ST、动态shared2048B、stack0、staticmaxwarps6。这些计数不证明HBM瓶颈或实测占用率。

## Verified bottleneck / 已验证瓶颈
尚未证明单一dominant瓶颈；已验证shared没有报告bank conflict，当前自己开发的S8代码每块依次QK、在线maximum/rescale、PV。8块各更新一次maximum、缩放16个numerator值并两次shuffle归约，是实际工作量，不直接等同其耗时占比。

## Current hypothesis / 当前假设
两块QK score一起驻留寄存器，再以两块共同maximum执行一次online softmax更新，可把maximum的shuffle和numerator rescale更新从8次减为4次，在保持K/V和Q/Output搬运相同的情况下减少依赖链工作。额外scores和P寄存器可能抵消收益。

## Proposed mechanism / 实现
仅case12 exact key覆盖一个新的lazy factory。保持64threads/query、1CTA/query、原qk/v/out坐标与同步、标准16x16x16f16 MFMA、F16 probabilities乘256及consumed-P denominator。每对块先分别QK，8 scores/lane；无效块score=-inf且不访问K/V。若两块均无效，整对skip，防止-inf减-inf；有效对共max/scale一次，再分别PV。其他13路径为v084 AST精确前缀且代码需逐byte验证。

## Predicted metric changes / 预测
生成代码应出现4对runtime迭代与每对2QK/2PV，rescale/max归约频次减半；Q/K/V/output的必要搬运不变。shared2048B不变，bank conflict预计0；MT可能升高、静态warp限制可能下降。MTE/MMA duty和native变化按实测解释，不预设方向。

## Falsifying result / 否定条件
原native完整naive_nsa/seed0/W10R50/容差任何失败立即拒绝；static禁止项不通过立即拒绝。selected C12 B-I-C-C-I-B两轮4候选/12全组screen中位未低于exact v084或生成代码未产生机制，则不推广并关闭失败版本。若目标明确改善才做全14及全部正delta固定确认；所有正delta与outlier保留。非目标退化不能因数学相同豁免。OJ成绩待新版本证据，v84截图不沿用为v100成绩。

## Correctness / resource risks
两块共同maximum是同一softmax的分组重排，但F16概率舍入路径变化须原native验证。选项sentinel/负index/causal token边界均由原条件block_start>=0且<=token控制，每lane4key因果mask保留；任何空对跳过且有效数据每call重算。无新增tensor cache、预计算、async、foreign injection或manual builtin。MT增长/并行度下降、内循环代码展开和寄存器长生命周期可能使性能更差。
