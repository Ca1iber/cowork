# v206：case5 V 共享写入分组（拒绝）

## 1. 版本与范围
开发父提交ff293bcf，数学父v084/4c674c79。仅官方case5 (4,1024,1,16,64,1,16,True)，实际host[1024,4]/64threads/dynamic2048B。候选与归档SHA d1a58e61691db44287bd25e6b2aca80eaef2a173c925d3921d64a0645671b626，header206。公共submission仍原v28/42911561；其他13个key父源码前缀保持。

## 2. 假设与peer
保留Num16及原每lane两次V uint4读取，原2row8col来源不变。lane xor8伙伴交换opposite column half，用四uint32 shuffle重构4row4col，将Vshared source8x4B改为4x8B。同2048B/query共享payload，额外1024B/query逻辑寄存器交换，非HBM或shared流量。额外pack/shuffle/MT和未校准bank风险均预登记；不由指令计数减少推断收益。worker1只提供并审核建议，没有修改其代码或计划。

## 3. 索引、位模式与源码
父14个topAST节点完整，只有新factory与准确C5 installer。反向撤ownership替换及v_column/recv两声明后整个factory AST等于父版，Num16/QKPden/PV/原globalfetch/Vconsumer/output/7sync不变。1024元素坐标逐一等于原消费者，256个4half向量连续且8B齐/边界0..1023。uint16 bitreinterpret→uint32零扩移位OR→四full64mask/width64/xor8→uint16拆分bitreinterpret；不是float→int数值转换。L1024合法block最大V行1023，uniform blockguard包全部shuffle。

## 4. 实际编译与解析门禁
source/generated两份validator0。双factory metadata0，79samples/40.3739s/OOM3不变；四首次SDK resource/O3IR命令全0，backend13samples/6.6508s。实际parent8i32 Vsharedstore→candidate4i64，新增四mxc.bsm.bpermute，逐address/payload SSA验证xor8、full lo/hi masks、width64、两半word位拼装和八Half提取；无V阶段lane branch/FP数值transport、kernel无alloca/addrspace5。actualCPP globalQ/K/V/Output四uint4 perlane表达式字面相同，Num16/8MMA/7warp保持。资源42MT20ST→46MT20ST，均stack0/staticmax8/dyn2KiB；staticmax不是实测occupancy。最终ISA事务宽度/实时bank冲突未校准。
三个只读parser exit1完整保存：全phase XOR混入地址XOR；裸trunc漏nuw；全phase OR混入地址OR。曾误称高trunc被删，实际四truncnuw存在，analysis_correction_trunc_nuw.json独立纠正。最终semantic parser仅按四payload/address与八真实提取的def-use验证，真实exit0。未重跑源码/编译/GPU。

## 5. 完整固定selectedscreen
唯一B28-P84-C206-C206-P84-B28 ×2，原full naive_nsa/seed0/F16 requires_grad/1e-2/W10R50与runner6输入hash不变，freshprocess每job/no postexport。12 jobs全部terminal0/原CSV PASS/no abort/OOM3保持；raw computed12与clean accepted12一致，candidate4 fullrefs。不是全14case/no-regression/OJ验证。
原值µs：B[31.324,30.643,30.684,46.720]；P[24.760,24.668,24.689,24.637]；C[25.887,26.291,31.416,25.851]。C median26.089 vsP24.6785，慢5.715501347%；rounds慢5.563648%/16.099015%。allC高于allP，无范围交叠；C31.416/B46.720高点保留。50 Python调用eventspan可能含hostenqueue空隙，只比较同机同新协议。

## 6. 内存与证据边界
sameflock/wholeCG双admission<=2GiB/无unownedRSS>1GiB、0.5s采样、28GiB/OOM/unknown/nonzero/600s stop，只verifiedownidentity/observedancestry可终止。12次observedwholepeak22,745,837,568B，全部OOM集合[3]，无termination；采样/namespace/RSS重复收费限制保留，不证明历史OOM原因或未来安全。bank32/64与subgroup8/16/32/64只是模型，部分32bank假设反向，不作为物理事实。慢因没有归于bank、MT或单一组件。

## 7. 拒绝与闭环
rejected_target_median_not_faster。正确性及四8B物化不能替代性能；按原median门禁拒绝，不追加profile/full14/样本、不扩其它key、不改main。归档只保存失败候选。shared_inputs_final、accepted_native_counts、native_memory_summary与archive_sha256关联四目录实际证据；原parser失败及错误分析不覆盖。后续换其它case/机制需新独立计划审阅。
