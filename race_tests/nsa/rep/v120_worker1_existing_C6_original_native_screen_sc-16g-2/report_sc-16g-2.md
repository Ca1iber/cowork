# v120 原始C6独立屏测（sc-16g-2）

## 1. 上版本遗留问题

v118 Num16/V4实际90MT未达MT<90预声明门槛，因此旧gate1及外层wait1保留。v119首次IR证实流式V4次序，但未测速，不能据资源预测宣称必慢。v103 Num16/V16曾+2.691786%，历史结果原样保留。

## 2. 问题原因分析

旧父版本100MT/max4到当前90MT/max5仅静态资源变化。IR的V0读取/MMA、early output、V1读取顺序保留，不代表实际occupancy/物理live或延迟原因。降低预取、ILP/MLP和同步成本仍为假设，没有单一瓶颈因果证明。

## 3. 本版本解决方案

独立复用v118 source290/header118原字节，固定三source全原始C6 benchmark测量。无源码、metadata、resource、IR、MC、trace更改或执行。旧门槛失败不被恢复。

## 4. 具体落地策略

B28-P84-C118-C118-P84-B28两轮，12单source fresh进程；officialC6=(8,1024,1,16,128,1,32,True)，每case原seed0/F16 GradTrue/fullnaive/1e-2/warm10/repeat50。event含50次Pythoncalls，不能叫纯kernel。原5+23+4预算/28whole/OOM13/unknown1GiB/600秒/0.5秒/身份1秒/仅核验owned控制原样。原Popen实际wait12native及controller/supervisor/launcher全部0。

## 5. Benchmark 对比

|版本|中位µs|范围µs|C118相对变化|
|---|---:|---:|---:|
|原v28|156.644|156.503–156.662|-32.989773%|
|共同v84|93.770|93.527–93.916|+11.941452%|
|候选v118|104.9675|104.745–105.221|被拒绝|

第一轮+11.969137%、第二轮+11.988207%；allC>allP，范围无交叠。完整4candidate fullrefs/12inclusive observed=clean，每项naive PASS；只有case6，非全14。12份原始CSV字节及SHA保留，不混旧样本、不追加或按快慢筛选。

## 6. Profile 指标变化

本版没有新profile/codegen/resource。只读旧100MT22ST/max4到90MT24ST/max5/stack0/dyn8192与119 IR32MMA/0alloca/AS5；不能据此认定MLP、coalescing或MT为唯一退化原因。1001份wholeCG样本观测峰26241503232B，OOM13不变；采样峰不是未来上界。

## 7. 实验总结

独立原计时已反证当前C6实现相对v84的净收益，判定rejected_latency。正确性通过和资源下降不抵消11.94%延迟退化。source290、旧118gate1、其他历史数据和main429保持；无复测、全14、OJ或推广。所有自有进程已terminal，后续方向须独立证据和leader分派。
