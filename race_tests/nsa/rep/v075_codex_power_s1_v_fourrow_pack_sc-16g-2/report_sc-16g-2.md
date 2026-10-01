# codex-power v075：V四行共享打包

## 1. 上版本遗留问题

当前C6自研60/68约95us、100MT/22ST、8KBshared。75之前的广播和query打包未提速。Vproducer旧2rowx8col每tile/thread两次16B global加载、八次4B shared写入；consumer每MFMA两次4B读取。本轮改该宽度与布局。

## 2. 问题原因分析

假设4row连续可合并为8B共享访存，并改善bank分布；代价是global加载变多、4x4转置packing增加。32bank/4B/16lane假设不是硬件事实，此前模型曾失效，需mcProfiler核验。不能用指令源码计数独自证明瓶颈。

## 3. 本版本解决方案

仅V改4rowx4col producer、4row swizzle、8B vector store/load。Q/K/概率/输出/同步、PV四chunk先预取后MMA和每输出keytile0再1全部保留，numerator32。C12精确68，其余12项v28黑盒，codeobjects onlycache。

## 4. 具体落地策略

_make_power_s1_v_fourrow_pack；恢复V相关改写后完整AST精确等于60。32x128slot4096双射、producer/consumer4096坐标完整唯一，4half连续且8B对齐，全局行列与有界证明不变。生成CPP真实uint2 global/sharedstore/operandload，MMA32/fdiv32。新增global访问16x8B对旧8x16B，Vsharedstores/loads各16x8B对旧32x4B，字节均不变。无async/injection/manualbuiltin。

## 5. Benchmark 对比

sc-16g-2，HEADcd24106d8，codex-power-v28-base；官方C6，原始v000::_run_one_case和完整naive_nsa、seed/输入/容差不变，W10R50。screen96.108us PASS；B-I-C-C-I-B x2共12/12 PASS。精确候选5次完整C6参考，整组含对照13次；仅覆盖case6，不声明全14。

|版本|中位数us|范围us|
|---|---:|---:|
|baseline_v28|156.5955|156.344~157.312|
|parent_v068|94.7870|94.720~95.493|
|power_v075|96.0995|95.775~96.430|


相对父版+1.385%，四次候选均慢；对v28-38.632%是继承收益，不计本轮。保留全样本，不重跑筛有利数字；无full14/风险/OJ晋升。独立profile仅核验bank假设与packing代价。
## 6. Profile 指标变化

独立mcProfiler C6，候选/同轮68各counts2；四次8192waves和33554752B写入符合单次attention足迹，必要但不是计数独占保证。Achieved waves不是真实occupancy。下表为两次均值：

|指标|v068|v075|
|---|---:|---:|
|Global read B|37639264.000|37636128.000|
|Global write B|33554752.000|33554752.000|
|L2 hit %|64.960|64.970|
|MTE duty %|52.045|51.325|
|MMA duty %|10.155|10.110|
|shared nonconflict %|75.380|100.000|
|conflict cycles|0.970|0.000|
|load latency cycles|49.520|48.570|


共享效率75.38%->100%、冲突0.97->0，预测的bank改善在本轮捕获得到支持；但native慢1.385%，MTE略降、MMA接近。新增global指令/转置packing成本可能抵消改善，未独占归因。MT100->102、ST22->24、staticmax4、stack0/private0/shared8192B；MMA32/fdiv32，机器text同8448B但hash不同。staticmax不是真实occupancy。

141个只读mx-smi摘要，GPU设置不变，不推导perkernel带宽/AP分配。未重复此前tracer124/header-only失败；ISA解码不可用，切片屋顶未标定，无虚构Roofline。profile驱动gradFalse，70元数据审计与nativeTrue同导出程序，但不保证周期等价；profile不替代正式计时。

## 7. 实验总结

结论rejected_target_regression_bank_metric_improved。V共享bank指标改善、operand读写宽度达到预期，但候选整体慢1.385%，拒绝晋升。精确候选5次完整case6参考PASS、整组含对照13次；未做full14/OJ，不声明全项正确或不退化。

源SHAfca25caae9a7134bd820ba66ebab5b4d91ece3ab7495a037b2e16ed73001b002，头行v075，严格静态通过，仅实验复现。主目录精确v28和64/68不变，全部worker/profile/sampler结束，限定四目录中文7报告/原始证据/SHA清单双语提交。

下一步可保留global16B的2rowx8col producer，保留4row/8B consumer，并重新选择rowgroup置换以兼容窄store。目标是去掉新增global8B/4x4packing成本，同时避免重新引入producer bank冲突；这仍是新假设，不能把75的零冲突直接转移为其他布局的事实。
