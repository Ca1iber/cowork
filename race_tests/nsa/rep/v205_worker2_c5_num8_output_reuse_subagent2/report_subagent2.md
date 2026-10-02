# v205：case5 Num8 分组输出实验（编译资源门禁拒绝）

## 1. 版本与正确范围
开发父提交f08aa718，数学父v084/4c674c79，仅官方case5 (4,1024,1,16,64,1,16,True)。候选SHA cc0fcfdd97df2d009b3d100c3947caed257a2f45c095b266ca8d93b231b69d0a，header205。初版提案把case7的B1/L4096 key误写为case5，leader在候选创建前指出；初版及修正记录保留。官方JSON第5项、父源码loop绑定和actual case5 host[1024,4]已核对，4096waves/8MiB不是shape独占证据。公共提交仍原v28。

## 2. 可证伪假设与peer
全部Voperand16half先从shared进入local，再用两组32feature复用Num8，以尝试降低总寄存器压力。worker1仅提供localV生命周期、alias/vector、数值/ILP及资源风险建议；没有修改对方代码或计划。预登记MT>=42、stack>0、缓存V读未在首output覆写前等就停止。Num缩小不保证减少MT，独立PV累加器4→2可能损失ILP。

## 3. 源码与静态证明
父14个topAST节点前缀相同，仅追加新factory与准确case5安装。S1单slot循环展开成同Indices[...,0]一次加载/同uniformguard。有效QK/P/den/Vshared/Voperand body除原PV4移出外AST相同。原den full64 shfl32→16顺序不变；原preoutput全warp移至两组前。每组clearNum8、同validguard PV2、同F32除法/F16 implicitcast写原out_slot；最后原warp/gather16B保持，总7sync。两组512+512half互斥并覆盖1024，四half向量连续且8B对齐，证明perquery并独立于B/L；L1024合法aligned block最大V行1023。详见source_identity/partition_proof。

## 4. 实际编译与退出
源码validator及两份generated validator均0。独立metadata observer138709/child138713完成0，78samples/39.9935s，两个factory object identity真，attention/reference/native均0。
首次SDK parentresource、parentoptimizedIR、candidateresource三条命令均0。实际candidate46MT触预登记MT>=42，helper抛明确MT_FALSIFIER_GTE42，backend observer139975/child139976真实退出1；不是SDK编译失败。候选IR第四条计划命令未启动，native/profile也未启动。raw mode four_backend_commands_only是计划scope，actual只执行三条。原exit1不覆盖成成功。

## 5. 资源与反证
parent42MT/20ST →candidate46MT/22ST，均staticmax8、dynamic2048B、stack0、64threads、actual hostgrid[1024,4]。CPP确有numerator[8]和两group，仍7warp-sync，Q/K/V/Outputuint4、outputshareduint2源路径。源数组变小却总MT增长，是原假设的直接反证；具体分配/调度根因未证明。staticmax不是实测occupancy，CPP vector width不是最终ISA事务宽度。

## 6. 证据限制与内存
候选optimizedIR/实际alias dominance未验证，因更早MT门禁失败而跳过；不追完美证据绕过停止线。只有源码和CPP顺序，不能称compiler最终重载行为或runtime收益已验证。native correctness/performance/full14/OJ全部UNAVAILABLE，实际0reference/0attention/0native。
sameflock、wholeCG admission双查<=2GiB、未知RSS>1GiB拒入、0.5s观察、28GiB/OOM/未知heavy停止保持。backend10samples/5.1296s，postabort snapshot OOM3，终止动作空；metadata同样OOM3未增，不证明未来安全。首次backend启动工具automatic-review超时而未执行，核对guard/manifest不存在后按工具允许重试launch一次，实际编译都仅首次。首次scope lookup只查literalcall漏掉父loop，Assertion1保存，之后只读真实loop纠正。

## 7. 结论与闭环
REJECTED_PRE_NATIVE_MT_FALSIFIER。保持原42阈值，不为此追加IR/native、改布局、重试或放宽判据。候选单文件归档只是实验记录，未验证正确性，不推荐提交OJ、不提升公共文件。shared_inputs_final与archive_sha256精确关联四目录证据，保存初版scope错误、首次工具超时、helper1及三SDK0的区别。下一不同机制需要独立提案和审查。
