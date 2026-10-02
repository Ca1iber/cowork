# codex-power v081：S2/S4自建在线softmax路径与统一代码惰性分派

Observed evidence：v080七个S1 D64目标正式改善4.722%–23.066%，C8 mcProfiler 8192waves/16MiB scope一致，shared35.875→100%、conflict6.8→0、load102.35→50.635。C10/C11仍原始v28路径，首轮相对v28 +0.289/+1.065%，固定复测相对parent仍+0.218/+0.099%。v080归档C13退出137，OOM6→8；一次同源码恢复13/14通过，不能说内存风险消失。
Verified bottleneck：C8证据支持访存布局/供给收益；不能将C10/C11瓶颈从C8单计数直接外推。C10/C11自身profile须新采集。源码事实：自建77 S8 factory以selected_blocks作为唯一循环/indices维度，除assert8外没有8专属坐标或常量。v080模块导入仍无条件编译C6/C12两个未必使用的对象。
Current hypothesis：在线softmax相同运算也适用S2/S4，其已验证布局有机会降低C10/C11时延；将本模块支持的12个exactkey统一为key+factory代码closure，可降低独立case进程冷载入的编译对象累积，warm后仍实际JITKernel，不额外热wrapper。
Proposed mechanism：扩大自己77 factory的assert为S in (2,4,8)，不改全部计算body。exact C10/C11启用该factory；C6/C12和S1 D64所有已有body保持不变。注册阶段不调用factory，首次正常run_kernel内编译并执行全部attention，再替换cache entry。
Predicted metric changes：C10/C11端到端官方native延迟下降，shared冲突/load latency优于原路径；新增目标 C10 waves256/output524288B，C11 waves1024/output2097152B。冷导入已编译JITKernel数由2到0，导入峰值可能下降，需实测，不能单凭代码推断32GiB OOM解决。
Falsifying result：完整naive_nsa失败；源/生成码OJ不合规；C10/C11配对时延不改善；其他case正式/唯一风险确认有正差则不宣称无退化；发现closure保留输入/结果，热路径非实际JITKernel；新冷导入仍OOM则内存假设不成立。
Correctness/resource risks：S2/S4在线数值误差、invalid selected skip、deferred denominator在所有quarter上的alpha一致性；更多code cache key会改变host运行状态；构建内存仍可能峰值超限。不得改native形状/seed/warm10/repeat50/容差/参考逻辑，计数区分候选与对照，不重复计合并CSV。

控制：原v28黑盒对照，v080直接parent；没有读取此前团队优化kernel。自建76/77/79作为可核验基础。源码先暂存/tmp，full source只归档在submission本ID；主入口仍原v28，外部OJ未测不能提升。
