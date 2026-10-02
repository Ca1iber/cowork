# v084 hypothesis BEFORE combination edit

Observed evidence：82单加D128 C3正式快16.202%对81，却C1固定对v28 +5%而拒绝；83单加D32 C1正式只快0.4276%对v28/2.321%对81，C3固定对v28 +0.06288%而拒绝。两轮分别暴露未替换的旧路径C1/C3；不能用它们GPU代码相同豁免正差。本轮不是SOTA提升，原始v28主入口与81候选已重新核验哈希。
Verified mechanism：82 D128坐标与完整naive正确、C3目标改善，shared8→4KiB/52→66MT，WG-conflict7.145→0.89但WG-load延迟变差；83 D32无shared/directreg正确，端到端收益弱、需新测。83 raw描述核准load计数属于Workgroup Memory，零访问填100%/0不叫有效效率或global零延迟。
Current hypothesis：同时替换C1/C3弱路径有机会避免相互留下的旧路径退化，D128强收益保持，D32若仍处launch约束可能无明显收益。组合对其余12项影响只能用完整native测量判断，不能由source identity保证。
Proposed mechanism：以整份81 AST为前缀，仅追加已验证82D128与83D32 factory的精确计算body，启用C3/C1 exact lazykey；另外12键/计算不改。初始14code closures/0编译对象，正常首调完整attention并换实际JITKernel，不缓存输入/输出内容。
Predicted/falsifier：C3对v28/81延迟下降、C1不出现退化；原始14项reference/W10R50全部通过，任何其他case正式/唯一风险正差继续留存、无退化不宣称。C1信号不稳、C3失去收益、source/generated非法或代码cache变内容cache都否定方案。
Risks：增加Python注册对象可能改变主机状态，GPU字节同样不豁免时间；32GiB loaderOOM此前case5发生，保留raw，仅一次受影响恢复，不改bench/环境/驱动。前两轮数学直接复用是由这组新组合假设支持，不读取旧团队优化kernel，也不忽略失败记录。

控制：originalv28黑盒与parent81，两个目标原native4候选样本各，formal全14，allpositives一次fixedrisk，archive exact source；当前双目标profile与资源，externalOJ依然待验证，不提升main。
