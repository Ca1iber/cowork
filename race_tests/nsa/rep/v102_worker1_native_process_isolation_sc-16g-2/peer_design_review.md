# worker2对v102实验设计的直接审阅

worker2明确以建议而非审批回复：freshproc对三source统一公平，但相对v101属于protocol change，仅runtime diagnostic；startup/JIT在event外，测原W10R50 steady-state。context/diskcache/温度漂移仍在，固定B-P-C-C-P-B不消除所有波动。保留50 Pythoncall event口径。2s RSS/HWM观察可能漏峰和child，父PID不是cgrouptotal；OOM前后及actual子PID保留。按实际PASS CSV行计数，前引用失败0，非zero/OOM立刻stop。完整12terminal0也不能证明旧OOM根因。worker2的C8outerCLI0/Killed/OOM1例子仅提醒门禁，不改其诊断或计划。

worker1已把意见纳入自身hypothesis/执行计划限制，未启动native或修改source，待leader GO。
