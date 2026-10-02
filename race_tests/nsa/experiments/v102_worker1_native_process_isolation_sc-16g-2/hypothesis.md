# v102 worker1：原native单source fresh process诊断计划，待leader GO

## Observed evidence / 已有证据

v101三source同进程，原native12 PASS行、三个exports/identity已写出，但进程及screen137、cgroupOOM10→11。具体被杀组件未知，不能证明原因是多module共存。v101已以failed_runtime_OOM_screen_inconclusive闭环29a45229，原137永久保留。

当前cgroup limit34359738368B，usage约2.90GB，lifetime max34359869440B、failcnt2963204、OOM11，未reset任何counter。lifetime peak不是本诊断的perjob峰值。使用既有run_variant.py一次单NSA_VARIANT_SOURCE+NSA_CASES=10，无post-export；原native代码/参考/input/seed0/F16/1e-2/W10R50不改。

## Hypothesis / 可证伪假设

每source/单case fresh process、metadata另proc可在固定32GiB限制下完成全部terminal执行，减少同时持有多个module/编译对象的压力。这只是诊断，不预先宣称OOM根因、稳定提速或压力已消除。三source全用同一个隔离协议；不与旧v101绝对us直接对照。

## Fixed protocol / 固定试验

预先B28-P84-C101-C101-P84-B28两轮，共12个job，每source4次完整参考。每job仅既有wrapper一个case10，startup/JIT编译在event之外；原event仍包围50次Python call，不能称pure kernel或量化CPU/GPU拆分。每job结束真正wait terminal，再读source/CSV/日志/cgroup；不得观察超时重启。

C101引用immutable archive e828f662，header仍v101，不改算法或复制全source进experiments；父84 exact4c、原28 exact429。v102只存计划、工具和诊断证据，不回写v101137，不将这次数据当v101旧失败消失。

## Monitor / 监控与限制

每PID2秒记录/proc VmRSS/VmHWM与可发现子PID、同一采样时cgroup usage/OOM；每job前后记录OOM、原生PID/PGID/command/sourcehash/CSV/log/真实退出码。2s采样可能漏短峰值或短命compiler，VmHWM也是最后采样之前的观察；父RSS不等于cgroup总量，子RSS求和可能重复shared映射。cgroup包括用户/其他进程，OOM增量不是此job因果证明，但仍按失败stop。监控也可能有影响，不称observer零影响，不reset lifetime max/failcnt/OOM。

## Falsifiers / 停止和计数规则

未取得leader GO不得启动。获批后仅执行这一次固定序列，不adaptive retry、不删旧137、不按快慢换顺序。任何非zero、OOM增量、source/runner哈希改变、缺/错/多CSV行、Killed/明确内层异常即stop，保留前缀数据并failed/inconclusive闭环。按实际CSV PASS行计数，before-ref failure0，不用启动次数或CSV header计数；计划C1014/全12不冒充actual。

若全部12真实terminal0且OOM不增量，只能说明该固定隔离协议完成；不能证明旧OOM根因。时延全部raw/range/outlier保留：最终C101中位不快于84则latency假设否定；若分布重叠或某轮正差仍不宣称稳定改善，不额外重采。是否做同candidate全14复核由leader再review，不能从诊断直接promote或宣称OJ收益。

## Peer review / worker2意见

worker2直接审阅认为协议变化必须标runtime diagnostic，三source同freshproc公平但CUDA context/JIT磁盘cache/温度等仍可漂移；固定回文顺序只缓和单调漂移。提醒event50Pythoncalls、2s RSS下界/child漏样/cgroup total、按actual PASS rows/失败前缀计数，outer0不能忽略Killed/OOM。已纳入以上计划。peer建议不是审批，不改worker2代码/计划；本计划仍等待leader GO。
