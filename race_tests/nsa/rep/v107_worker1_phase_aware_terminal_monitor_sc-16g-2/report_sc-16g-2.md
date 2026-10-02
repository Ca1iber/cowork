# codex-power v107 worker1：监测修复与3GiB入场边界记录

## 1. 上版本遗留问题

v106整PID snapshot缺失触发identity guard后wait0，旧gate1/observed42-clean28保留。新v107不拼旧数据或修改失败。

## 2. 问题原因分析

旧census外层异常会丢已读critical字段，且二次poll与终态之间仍有窗口。v106缺失phase没记录，不能确定exe/Z原因。

## 3. 本版本解决方案

仅监测修复：perphase errno/filename、optionalstatus/task失败保留critical、原Popen terminal优先，明确alive变化fail；unavailable最多1s，每job重置且1s不延长600s，全部旧guard与priorabort持续。

## 4. 具体落地策略

固定source27f/header104、原seed0/fullnaive/1e-2/GradF16/W10R50/14order/12fixedsourceprocesses不变，无exports。五真实controlled-S检查0：poll/stat/exe边界退出、alive错误身份、optional元数据失败，0GPU/NSA/ref，不是benchmark。Peer权限fixture未测UNAVAILABLE；unverified/terminal/editor无信号。

## 5. Benchmark 对比

三进程B28/P84/C104各exit0/14PASS/clean14，observed=clean14C/42incl。下一第4admission whole3223244800B比3GiB超2019328B，未spawn，gate1/OOM13不变。未完成12/four-samples/tworounds，不算稳定winner，raw全部保留，无round/noise豁免/继续重试。

## 6. Profile 指标变化

无profile/metadata/新resource。三成功sampledwholepeaks25081516032/25151868928/25152122880B，NodeRSS2358112/2397372/2397544KiB，HWM3611504KiB；只是观察非upperbounds或旧OOM原因。Cgroupusage/RSS/cache/swap账项不可简单等同归因。

## 7. 实验总结

状态 stopped_fixed_protocol_admission_baseline_drift_inconclusive。监测修复在这三进程处理终态，不保证之后；旧3GiB拒入保留。后续若新预算须另版本、数据支持和runtime28/4GiBreserve/所有identity未知/OOM/CSV规则不变、peer/leaderreview。source27f/main429不变，无all12/no-reg/OJ/mainpromotion。

