# codex-power v055 four-row V planes / sc-16g-2

## 1. 上版本遗留问题

原v28仍是main，v049是独立case6候选并等待用户实际OJ全14项成绩。v050-054单warp/多warp S8方向未胜过v28。回到case6时，自己的v049 V row-pair producer每个PV四half operand需两次4B shared读取，76MT/26ST，max6，shared8192B。

## 2. 问题原因分析

v049可靠capture的shared nonconflict约60.49%、conflict2.21，仅说明有可观察的shared代价，不能证明唯一瓶颈。合并operand读取有减少instruction issue的可能，同时producer global读取从两次16B变为四次8B会增加issue/control代价。不能用银行模型推定吞吐。

## 3. 本版本解决方案

四个互不重叠16token×64feature的V tile，四row微转置。producer4×4，消费者一次8B取四half，PV数量、bytes、softmax、QK、同步和输出不变。仅精确case6编译code object替换cacheentry，不缓存tensor内容。原v28完整module prefix及run_kernel AST保持一致；其他13项仍走原入口。

## 4. 具体落地策略

v_layout_proof验证4096坐标bijection、global producer覆盖、operand覆盖和8B对齐；generated CPP确认uint2而非两uint1。资源72MT/24ST/max7、stack0、private alloca0、shared8192B，相对v049少4MT/2ST。maxWarps只是compiler ceiling。输出Fragment告警来自原有annotation；实际lowered每个store映射2048 unique位置，racechecker保持启用。全14generated devices中13项逐字节等同原v28；这只建立GPU源码identity，不豁免host/timing/OJ测量。

## 5. Benchmark 对比

原有native naive_nsa、official_case、seed/input及W10/R50均未改。case6 screen159.334us PASS。单 case6 的12次对称三方reference全过；v055161.2335us/v28165.2585us/v049161.9635us，初次对parent仅快0.451%。保留parent318.479us样本，无任何丢弃或noise豁免。

三方全14 × 对称两轮共168/168完整reference PASS；如下中位数全部原始观察保存在CSV/JSON。case6v055160.8090us对v28快3.315%，对v049慢0.919%，增量收益未复现。其他正delta case1/3/8/10/11/13/14不因GPU源码identity而被称为noise。未通过用户“不退化”要求，不提交OJ、不替换main。不额外扩大native测试来挑选较好结果。

|case|v28 us|v049 us|v055 us|vs v28|vs v049|
|---|---:|---:|---:|---:|---:|
|1|8.8450|8.7935|9.2035|+4.053%|+4.663%|
|2|9.8945|9.5205|9.8640|-0.308%|+3.608%|
|3|12.7440|12.7335|13.1380|+3.092%|+3.177%|
|4|13.5345|13.2020|13.3480|-1.378%|+1.106%|
|5|33.4130|33.2315|33.3975|-0.046%|+0.500%|
|6|166.3230|159.3445|160.8090|-3.315%|+0.919%|
|7|33.1135|32.7780|31.6185|-4.515%|-3.537%|
|8|54.7890|55.4395|55.7645|+1.780%|+0.586%|
|9|52.4490|51.9990|52.1370|-0.595%|+0.265%|
|10|11.7425|11.7810|11.8165|+0.630%|+0.301%|
|11|23.1910|23.4035|23.2725|+0.351%|-0.560%|
|12|83.3045|82.9080|82.9515|-0.424%|+0.052%|
|13|10.9160|10.5570|10.9925|+0.701%|+4.125%|
|14|19.6325|19.6890|19.6350|+0.013%|-0.274%|

## 6. Profile 指标变化

新的mcProfiler三方counts2/per-kernel全部实际退出0，原始logs、report_bundle与结构化指标全部保留。六份capture的dispatched waves分别为v05510196/11748、v04912328/12500、v2811640/11836，均不符合host8192个single-wave CTA启动；output bytes也超出33,554,432B预期。scope checks六项false，profile comparison为inconclusive。不能用这些shared效率、conflict、MTE/MMA数值归因新布局收益。原因可能涉及scope、共享物理卡活动或计数归一化，未被独立证实，不能把任何一种当结论。

CPU mx-smi sampler带UTC覆盖owned evidence job，并已terminal，原始physical/sGPU观察全部保留；它不提供per-kernel achieved occupancy。Achieved waves raw也不当作occupancy。没有进一步重复capture寻找较好结果。未新跑mcTracer，先前v049及其他版本多次timeout且无有效trace，历史原始结果按路径保留。ISA工具及sGPU Roofline实际roof标定不可用，未安装或改变GPU设置。此次fresh incumbent采集满足re-profile动作，但scope异常意味着不能给出新的可靠roof/stage瓶颈分类。

## 7. 实验总结

rejected_incremental_benefit_not_reproduced_and_no_regression_unverified。packed8B读取和更低寄存器确实落地，但不足以建立优于v049的端到端优化，且其他case有观测增加。source SHA ad5ed9bcb96d725dee42867f265bf2ce41412fcc8d0bd39a2b50c3551e8efd89，tmp native被测源码与归档文件字节相同，全部14 generated OJ静态验证通过。main仍原v28 SHA42911561...，独立v049候选92887321...保持不变。短假设/start_identity在编辑前记录，详细falsifier在formal benchmark期间补全，明确保留时序。
