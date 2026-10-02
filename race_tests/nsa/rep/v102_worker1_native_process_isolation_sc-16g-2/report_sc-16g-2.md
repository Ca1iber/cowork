# codex-power v102 worker1：原native进程隔离诊断

## 1. 上版本遗留问题

v101三个source同进程native后export，12 PASS行与metadata已发出，但process/screen137、OOM10→11。以failed_runtime_OOM_screen_inconclusive闭环29a45229。原137永久保留，旧raw负中位不是成功gate。

## 2. 问题原因分析

未证明具体OOM组件或单一原因。已有run_variant.py支持单source/单case且没有post-export。freshproc与metadata另进程可能减少多module对象共存压力，但协议变化不能用新旧绝对us直接比较，也不能由成功反推根因。

## 3. 本版本解决方案

仅诊断协议，无kernel编辑。三个source统一fresh process：原B28 429、父84 4c、候选源101 e828。引用immutable archive、header仍v101，不复制source进experiments。固定B-P-C-C-P-B两轮共12jobs，每source4个完整参考，原seed0/F16/causal/容差1e-2/W10R50不变。

## 4. 具体落地策略

worker2直接设计review已纳入，再经leader明确GO。stdlib外层串行launcher+exclusive onceguard，调用既有run_variant.py的NSA_VARIANT_SOURCE/NSA_CASES=10，无post-export、无并行重profile。启动前source/wrapper/sharedinputs hash、command/PIDfile计划，之后PID/PGID/真实terminal记录。

每PID2s采RSS/HWM、可发现子PID和cgroup usage/OOM，前后计数保留；短峰/child可能漏，父RSS不是总量，lifetime peak不reset。异常则只终止自己隔离进程组、停止后续jobs，不重启凑12。原event仍包围50次Pythoncall，不称纯kernel或CPU/GPU分解；启动/JIT在event之外。

## 5. Benchmark 对比

仅C10 B1/L256/H1/HQ16/D64/S2/BS16/F16/causalTrue。12job全部真实terminal0，每job一条完整naive_nsa PASS；引用候选101完整参考4次、含对照12次，source/kernel没有新增，未做全14。不可将v102结果回写v101失败。

| source | 全部样本us | 中位us |
|---|---|---:|
| baseline_v28 | 12.570000, 12.349000, 11.715000, 12.349000 | 12.349000 |
| parent_v084 | 11.438000, 10.972000, 10.260000, 12.006000 | 11.205000 |
| candidate_source_v101 | 12.232000, 12.334000, 11.561000, 12.211000 | 12.221500 |

候选对parent84中位耗时 **+9.071843%**，范围交叠。

| round | v28 us | parent84 us | source101 us | 对parent变化 |
|---|---:|---:|---:|---:|
| 1 | 12.459500 | 11.205000 | 12.283000 | +9.620705% |
| 2 | 12.032000 | 11.133000 | 11.886000 | +6.763676% |

两round正差全部保留，按预定规则否定该candidate latency收益，不formal/不重测取好。新协议内公平对照，不用旧failed-v101负中位覆盖新数据；startup/JIT/context/cache/温度仍可变化，固定回文顺序不消除所有波动。

## 6. Profile 指标变化

本版是runtime/measurement诊断，没有新GPU profile/codegen/ISA/roof；引用immutable C101源码和已有metadata，不改算法或header。以下为2s原生PID/children/cgroup监控，仅实际观察，不保证精确峰值/所有child/原因或零observer影响。

| job/source | samples | max观测RSS KiB | max观测HWM KiB | max观测cgroup B | OOM前/后 |
|---|---:|---:|---:|---:|---|
| 1/baseline_v28 | 21 | 23267332 | 23954136 | 23769743360 | 11/11 |
| 2/parent_v084 | 20 | 23953024 | 23953124 | 24351961088 | 11/11 |
| 3/candidate_source_v101 | 20 | 23953616 | 23953708 | 24360161280 | 11/11 |
| 4/candidate_source_v101 | 19 | 23683252 | 23948360 | 24083914752 | 11/11 |
| 5/parent_v084 | 19 | 23400088 | 23948596 | 23881293824 | 11/11 |
| 6/baseline_v28 | 19 | 23583344 | 23948296 | 24052097024 | 11/11 |
| 7/baseline_v28 | 19 | 23644868 | 23948260 | 24108101632 | 11/11 |
| 8/parent_v084 | 19 | 23252020 | 23948708 | 23730450432 | 11/11 |
| 9/candidate_source_v101 | 19 | 23470912 | 23948164 | 23875899392 | 11/11 |
| 10/candidate_source_v101 | 19 | 23430400 | 23948368 | 23831408640 | 11/11 |
| 11/parent_v084 | 19 | 23250152 | 23947960 | 23733350400 | 11/11 |
| 12/baseline_v28 | 19 | 23545512 | 23947756 | 24026447872 | 11/11 |

12job OOM均11→11，lifetime max34,359,869,440B/failcnt2,963,204不变且未reset。父RSS不是cgroup总量、childRSS求和可能重复共享映射，不能据这些数值断言32GiB风险已解除。

## 7. 实验总结

固定隔离协议完整执行，支持“这一次协议可完成”，不能证明旧OOM根因。source101 directQK latency按新协议对84慢9.071843%，两round均正且范围交叠，明确拒绝此实现，不formal、不重复样本，main429/parent4c/header101/旧137保持。与worker2直接分享反例和设计意见，仅建议，不修改其代码计划。下一版本先freshparent84 C6 profile/resource/operand lifetimes，再peer与leaderreview一个可证伪机制，不把8B替16B普遍套用。
