# codex-power v056 proven bounded S8 accesses / sc-16g-2

## 1. 上版本遗留问题

原v28仍为main。v049 case6候选等待实际OJ不退化成绩，v055 packing未稳定胜过v049。自己的v050单wave case12保持62MT/28ST、stack0/shared2048B但未胜v28，生成代码在valid-block guard内部仍有K和V padding guards。

## 2. 问题原因分析

L1024是BS16整数倍，block_start=16*index，token范围0..1023。当显式分支0<=block_start<=token成立时，block_start最大1008，全block的最后K/V row最大1023。compiler未消除这些冗余上界检查，可能增加address/control工作；没有可靠新profile证明它是唯一瓶颈。v055 fresh counters不符合launch footprint，不能基于其MTE/MMA/bank指标推断分类。

## 3. 本版本解决方案

先证明全部global/shared/local访问domain，再仅在own exact case12 factory设置TL_DISABLE_SAFE_MEMORY_ACCESS。保留valid selected分支与causal score mask。新增compile-time L%BS==0断言，不更改math/layout/MMA/sync；normalized helper AST与own v050相同。保留原v28完整prefix/run_kernel AST，case6仍用独立own v049 GPU helper code object。没有缓存attention tensor内容或遗漏数据工作。

## 4. 具体落地策略

bounded_access_proof检验33280个有效token-block pair、1024个Q/K/V/output坐标与shared QK/V bijections，并列出index/scalar/local范围。generated guard从4组降至2组，只剩uniform有效block和causal score mask；selected源及全14device OJ静态通过。资源72MT/28ST、stack0、private alloca0、2048B shared，较parent增加10MT、maxWarps ceiling8降至7，这并不自动否决或证明性能。其他12项GPU source字节等同v28，case6字节等同v049；仍需runtime/OJ直接验证。

## 5. Benchmark 对比

完整project naive_nsa，官方shape/input/seed0与W10/R50不变。case12 screen77.261us PASS；三方同process对称两轮12/12完整reference PASS。v28中位89.231us、parent v05092.577us、v05682.3705us：对v28快7.688%，对parent快11.025%。四个candidate样本81.746..86.784均小于baseline88.965..90.179，所有样本均保留。

全14三方对称两轮168/168 reference PASS：case12 median88.709→81.280us，快8.375%；case6 165.1145→161.6485us，快2.099%。case4/13/14有+2.427/+3.394/+1.903%的观测增加，不因byte-identity而被称为noise或豁免。以下完整中位数；raw CSV/JSON保持全部观察。

|case|v28 us|v050 us|v056 us|vs v28|
|---|---:|---:|---:|---:|
|1|9.3495|8.8400|8.8935|-4.877%|
|2|10.0350|9.7180|9.8815|-1.530%|
|3|13.0020|12.6335|12.9125|-0.688%|
|4|13.6190|13.8830|13.9495|+2.427%|
|5|33.1775|32.9935|32.8550|-0.972%|
|6|165.1145|158.4920|161.6485|-2.099%|
|7|32.8090|32.6475|32.6090|-0.610%|
|8|55.1065|55.2115|55.0270|-0.144%|
|9|54.9325|54.6380|54.8990|-0.061%|
|10|12.5795|12.6080|12.4440|-1.077%|
|11|25.1675|25.2570|24.5295|-2.535%|
|12|88.7090|92.4980|81.2800|-8.375%|
|13|11.3150|11.5230|11.6990|+3.394%|
|14|21.2330|21.3785|21.6370|+1.903%|

针对case4/13/14，在profile实际terminal后从归档源码同process三方对称复测：36/36完整reference PASS，case4 v28 12.7720us→v056 12.5590us (-1.668%)；case13 v28 11.1645us→v056 11.2590us (+0.846%)；case14 v28 20.4925us→v056 20.4110us (-0.398%)。case4/14初始增加未复现，case13仍有+0.846%观测增加；不能称为noise或保证不会掉OJ分数，因此no-regression仍未通过。没有继续重复采样挑选更好的结果。
Exact archived source SHA14b699e777...另行运行全14官方native：14/14完整reference PASS，W10/R50不变。总计screen1+target12+all14168+risk36+archive14=231完整reference checks。归档单次us不与早先baseline跨时段相除。保留归档case8 126.766us长样本，未称noise或删除。

## 6. Profile 指标变化

新candidate及incumbent各counts2/per-kernel采集实际退出0，raw日志和report_bundle全部保留。预期host为4096个single-wave CTA/output8,388,608B。实际waves：v0568392/8064、v287332/7476；write bytes v05614,849,472/14,668,224、v2810,574,240/9,618,336。四项scope checks均false，counter comparison inconclusive，不能用shared/MTE/MMA/L2数值解释这次时间收益。scope/共享物理卡活动/归一化等仅是未验证可能。

UTC mx-smi sampler覆盖owned evidence job，已terminal；观察为physical/sGPU汇总，不解释为per-kernel occupancy。新mcTracer未重复执行：之前v049等多次timeout且没有有效timeline，历史原始数据按path引用。ISA工具不可用、实际sGPU Roofline roof未标定；没有安装或改变GPU配置。寄存器增加与耗时下降同时成立，不能把静态maxWarps ceiling当occupiedwarps。

## 7. 实验总结

local_target_improved_no_regression_unverified，尚未accepted。source SHA14b699e777e456909a0af49521f7fa9ab371b814c6d475e8cf35bdfdc0e8d4f2；实际被测tmp source及归档字节一致，首行# codex-power v056。case12收益两组paired复现，但其他case runtime/OJ不退化仍须核验，未将candidate替换main。main原v28 SHA42911561...、独立v049 SHA92887321...保持不变。原始benchmark/reference/official_case未复制或修改，不从本地us推测OJ分数。
