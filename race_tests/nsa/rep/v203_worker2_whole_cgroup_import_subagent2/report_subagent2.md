# v203 单次 import 内存诊断

## 1. 上版本遗留问题

v202 run10 在 CSV/reference 前 SIGKILL/-9，OOM1→3；C3/总9与失败原样保留。单 source 隔离不保证无OOM，PID102519归属仍未知。

## 2. 问题原因分析

可能有并发或其它内存收费，尚未证明。PID RSS、RSS求和与wholecgroup口径不同，不能把差额全部归因其它进程。空children、PPID1、当前census不重建历史。

## 3. 本版本解决方案

唯一 isolated import tilelang，0attention/0reference/0native，不改kernel。共享非阻塞heavylock和onceguard；入场usage≤2GiB/无unownedRSS>1GiB，前后复查。工程预算26GiB+4GiB非保证；28GiB/OOM/未知heavy/失败/300s或600sample停止，只允许identity核对ownPID。

## 4. 具体落地策略

-S observer112531/start329227710/PGID112531；import112532/start329227714/PGID112532，exe均python3.12。固定argv/scriptSHA见launch_manifest。preusage893480960B/post895258624B，stdin-ready后只放行一次。
0.5s磁盘JSONL记录wholememory.stat/local_total和可见PID/PPID/PGID/starttime/comm/exe/RSS/HWM/cgroup/每threadchildren。无陌生命令行/env/marker内容、无其它kill/清理/limit或GPU变更；锁仅约束合作参与者。

## 5. Benchmark 对比

没有benchmark。实际一import自然exit0，67samples，34.2664055s，OOM3→3，0attention/ref/native，无信号或重试。原W10R50和v202失败gate不变，observer_heavy_roots为空。

## 6. Profile 指标变化

非GPUprofile。samples SHA2f42c44e67a0f2341da55bdb4109c535311a806167aef9c1bbe2f4abfa73567c。
observedwholepeak21680566272B@05:54:04.846919；importmaxRSS23114496KiB/HWM23114584KiB，observermaxRSS19505152B。
peakvisibleRSSsum24642367488B，usage-minus-sum=-2961801216B；最大正差1400528896B。差额不作组件归因。
child打印RUSAGE_SELF23114360KiB与稍后sampleHWM都保留，0.5s可能漏peak/隐藏namespace/短child；只观察owned112532。

## 7. 实验总结

仅证明该次admittedimport在记录条件下完整退出0/OOM不增；不定位历史原因、不保证后续native、不恢复v202。source/main429/parent4c/benchmark/环境保持，无新提交稿或OJ结论。
本版范围到此终结。下一独立优化先peer与leader审查，不改worker1代码或计划。
