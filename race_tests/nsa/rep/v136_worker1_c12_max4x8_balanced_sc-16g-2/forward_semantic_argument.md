# v136 max4×8 forward 语义论证（SOURCE ONLY）

当前CPP388/CB13factory/SDK5d对应IRde3bc中，32个maxnum.f32链只有contract标志，无nnan/ninf/nsz；使用同T.max与每条−inf seed，未改NaN处理或fastmath标志。LLVM maxnum的NaN与zero规则见[LLVM LangRef](https://llvm.org/docs/LangRef.html#llvm-maxnum-intrinsic)；不能由该接口假定任意树逐bit一致，尤其sNaN/payload/后端zero选择。本提案只承诺原forward数值/NaN分类约束，root明确不要求NaNpayload/异常状态逐bit；完整原naive1e−2不放宽。

## 非NaN值、±inf与组为空

同一操作对非NaN返回较大数值，−inf为数值单位元。每个分组覆盖8slots且seed−inf，四组覆盖0..31一次；逐组归纳再二层合并得到相同数值最大值。全部−inf组返回−inf，不会污染有有限数值的组。±inf比较同序；若最终max+inf，原score+inf的Inf−Inf产生NaN模式不改；若全−inf且has_valid true，原−inf−−inf模式不改。

## ±0内部差异与原P消费者

max对零tie可能选择不同sign，不能说max逐bit一样。唯一原消费者是`(scores[element]−maximum[0])*positive_scale+8`（source1254，IR369..380）：对非零数值减±0数值不变；对±0可能得到±0，但正scale乘积仍±0，随后+8精确同8。原exp2与F16cast输入因此相同，实际P、den与PV不重算或换数组。stdlib模型用actualf32scale、875组边界/混合输入和zero选择组合3500次比较，8448个zero消费检查；这是CPU模型证据，非kernel/ISA正确性测试。

## NaN / sNaN：不作内部max位等价假设

每组−inf seed使qNaN数值忽略模型与原链一致；allqNaN最大值仍−inf。sNaN的内部行为或payload不假定相同。任何没有被原causal mask覆盖的NaN Score仍进入本身的原subtract/exp2（IR369..407），产生NaN P、F16 P，原F32den从同实际P转F32并相加（IR842..932），该lane den为NaN。lane%16定义head；原xor32、xor16均不改head，连续两步覆盖其4quarter，stdlib检查全部64origins。该head所有feature最后除同den（IR2432..2459）为NaN；即使内部max在此head不同，不改变forward NaN分类。其他不含NaN的head用前述值相等路径。这里不承诺NaNpayload/sign/异常flag逐bit相同，不宣称NaN输入device实测已通过。

## empty / roundedP / 其他数学

has_valid来自原rawidx合法/因果guard（非score），source1246/IR1425–1426 false绕max和exp，P0/den0/Num0保持原最终0÷0NaN，不强置0。Score初始化/invalid−inf、原两次maxshuffle、原actualroundedF16P同时用于PV和FP32den、PV selected0..7顺序、Num16/共享/同步/输出全部字面保持。

## 范围与后续否证

四8链+3合并局部max35节点、预计局部依赖10级（8+2），加原warp2预计12级；原local32+warp2为34。新增3比较与4localfloat可能增加live/MT/ST/stack；编译器可能重串行/溢出。所有仅prediction；实际IR/maxnumflags/资源和完整naive及固定benchmark需另leaderGO验证，本版0GPU/import/compile，不假用CPU模型替代native。
