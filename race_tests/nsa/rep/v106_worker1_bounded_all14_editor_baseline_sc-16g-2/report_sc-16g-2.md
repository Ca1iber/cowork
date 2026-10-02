# codex-power v106 worker1：完整case输入与退出监测失败记录

## 1. 上版本遗留问题

v104正式OOM gate1和v105首admission拒入gate1独立保留；此新v106不得补旧prefix或恢复失败。

## 2. 问题原因分析

精确识别PID213447/start93125003/nodeexe/cgroup为仍unowned baseline，所有RAM算3GiB入场/28GiBruntime，不操作编辑器或扩children/name豁免。身份连续性不证明旧OOM原因。

## 3. 本版本解决方案

同candidate27f/header104，无kernel修改。12freshsource完整14cases固定B-P-C-C-P-B两round计划56C/168incl，原runner/seed0percase/fullnaive1e-2/GradF16/W10R50/order不改，无metadata/export。

## 4. 具体落地策略

合作lock、双owned-S入场、0.5s wholeCG/allPID+allthreadchildren、严格baseline轨迹、otherunowned1GiB/OOM/28GiB/hash/CSV/nonzero/Killed/600s。仅匹配identity及已观察ancestry允许自有信号；baseline不owned。

## 5. Benchmark 对比

仅三native进程结束：B28/P84各exit0/14PASS/clean14，C104 exit0/14PASS但identity监测abort，clean0。Observed14C/42incl与clean0C/28incl分开，原gate1不改，九个剩余进程未跑。没有四samplemedians/两round或稳定win；raw14CSV全保留，不用于胜利比较。

## 6. Profile 指标变化

无本版profile/ISA/resource或额外参考。末正常snapshot08:27:47.531 native仍R且exe/start匹配；08:27:48.029整PID record缺失、FileNotFoundError无phase/filename，whole3.22GB/OOM13/baseline真；08:27:50.045 actualwait0，无TERM/KILL发送。源码确已有第二poll，但值未单独记录；census外层stat/exe/status/cg/task均可导致整record缺失，不能确定exeENOENT/Z。

## 7. 实验总结

状态 failed_monitor_identity_unavailable_terminal_inconclusive。可证伪新方案仅修监测采样与权威Popen终态时序，必须新版本plan/peer/leader，旧gate1/42observed不恢复。不以native0或14PASS声称全12/no-reg/OJ。3GiB/28GiB工程预算及namespace/采样漂移限制仍在，source27f/main429不变。

