# codex-power v105 worker1：有界全14诊断入场拒绝记录

## 1. 上版本遗留问题

v104原正式168在job141 native-9/0ref/OOM11→13停止，50C/152incl仅已测结果，不是all14。此新协议不拼旧prefix或恢复失败gate。

## 2. 问题原因分析

readonly census当前baseline约2.4GB，旧2GiB比较会拒入且未admit。提出新预声明3GiB入场+25追加预算+4余量=32GiB；不是已测peak上界。

## 3. 本版本解决方案

candidate仍archive27f/header104，无新算法或source复制。existingrun_variant每source完整case1..14原seed0/fullnaive/1e-2/GradF16/W10R50，12process固定B-P-C-C-P-B两round，计划56C/168incl。

## 4. 具体落地策略

合作flock、owned-S waitGO双admission、0.5s wholeCG/memory.stat/visiblePID+allthreadchildren、28GiB/unknownRSS>1GiB/OOM/hash/CSV/600s停止；信号只允许identity/starttime/exe/已观察ancestry匹配ownPID。未加入metadata/postexport。

## 5. Benchmark 对比

实际master349730退出1，首admission whole2968227840B<3GiB，但PID213447未归属worker，RSS2325192KiB>1GiB。native spawn0、observed完整refs0、clean acceptedrefs0，planned56/168不是成绩。第二admission、native、signal routines均未执行，OOM13不增。

## 6. Profile 指标变化

无native/latency/profile/resource新数据。sourcecontroller AST/manifest pathsSHA只读校验0，不代替运行门禁。unknown exe为VSCode node服务，未读cmdline/env/shm、未signal/cleanup，不归因旧OOM。namespace/短暂峰/共享页/cgroup计费/合作lock限制保持。

## 7. 实验总结

状态 blocked_admission_unknown_background_no_native。坚持原1GiB门槛和一次执行，不poll直到通过、不放宽预算或补测。旧v104exit1/v101137保留，candidate27f/main429不变，无all14/no-reg/OJ/mainpromotion。已与worker2直接讨论bounded设计与Vownership，只各改自身文件。

