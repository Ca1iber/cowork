# v208：case9 Q 寄存器转置（运行门禁停止，screen不完整）

## 1. 版本与范围
数学父v084/4c，开发父e61d29b8，onlycase9(1,8192,1,16,64,1,16,True)。候选SHA46696428569b1cb16eb4aac52d07cefcdc28edc0c223a400937a880ad9a6a264/header208/3imports；父14AST前缀/其余13keys不变，main仍429原v28。

## 2. 假设与风险
移除Qshared2KiB写+2KiB读/query及Q-onlysync，以xor16/xor32两stage各4packedU32原地转置qLocal16。逻辑shared byte减25%，额外2KiB/query寄存器交换/pack，非HBM或latency事实。Qglobal两16B/lane但地址改变；whole64lane line模型2x，部分8/16subgroups+64/128B可4x/8x，非实测交易数。此前笼统2x措辞已纠正且表未变。Peer建议采纳于ownplan，没有改peer代码/计划。

## 3. 源与实际机制证明
撤Q新stage/q_receive后整factory AST恢复原4c。Num16/KPden/V/PV/out和其6sync保持。ActualCPP/IR删除Qshared，新增Q8bpermute+原maxden4总12；每地址def-use full lo/hi−1/width64/xor16或32。实际QK四operand逐lane16384symbolicbits/1024值等于原fragment。Q2uint4新地址16B齐/2KiB全覆盖；K/V/Output逐laneCPP表达式字面相同。无numericFPtransport/alloca/AS5，MMA8。Parent42MT20ST→candidate44MT26ST，dyn2KiB/stack0/staticmax8，不当actualoccupancy/ISAwidth。初始audit1错取modulehelper的firstbranch，原日志保存；readonlykernel-scope修复0，没有编译/GPU重跑。

## 4. 编译与固定native前缀
metadata两factory0/79samples40.3968s、四SDK首次0/backend13samples6.6513s，OOM3。唯一C9 B-P-C-C-P-B×2，原run_variant32c/native6eb/seed0/F16GradTrue/fullnaive/1e-2/W10R50/no postexport。前9jobs全部clean0/PASS=3C/9inclusive完整refs；计划12未完成。
第10C native193344因UNOWNED_VISIBLE_HEAVY_THRESHOLD触发，仅8samples，identityverified TERM后actualwait−15，0CSV/0ref；11/12未启动。source/runner/sharedhash全保留，无OOM增长，无innerKilled。原screen.exit1永久保留。

## 5. 原始部分延迟
µs：B28[51.671,51.738,51.994]；P84[40.284,40.095,40.100]；C208[41.590,41.078,41.298]。完成三C均高于完成三P，是partial变慢观察；不是完整12median verdict，没有噪声豁免/删点/补采样。50Python调用eventspan可含hostenqueue，不与另一容器时延混比。

## 6. 运行门禁与有限身份
原sameflock/2GiB双admission/unknownvisibleRSS>1GiB/0.5s/28GiB-OOM-600s预算保持。触线原sampleUTC10:20:22.818735/whole4,123,459,584B/OOM3；unownedPID193423/PPID193417/PGID193417/start330827682/exePython3.12、RSS1,515,972KiB/65threads。同CG不等于自身或根因，未读陌生cmdline/env/marker、未signalunknown、不cleanup或改阈值。只终止自身193344，真实wait记录。整前缀observedwholepeak23,243,726,848B，OOM集合3；采样/namespace/accounting限制保留。

## 7. 结论与闭环
FAILED_RUNTIME_GUARD_INCOMPLETE_SCREEN，非编译/数学失败或完整性能拒绝判定。停止原prefix，无retry/fill/profile/formal/main/OJ发布。归档466仅保存未完成候选。四目录实际文件hash/原终止与partialrefs/源证据关联；shared6不变、所有ownedPID终态。runtimepycache不归档且未删除。后续需独立新提案/审查，不能复活本gate或沿用Qtranspose微变体找赢。
