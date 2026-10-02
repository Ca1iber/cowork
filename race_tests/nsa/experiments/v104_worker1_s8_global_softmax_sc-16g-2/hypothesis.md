# v104 worker1：仅C12全QK→一次global softmax→全PV，提案待审

## Observed evidence / 观察

当前exact parent84 S8 factory Score4/P4、Num16；runtime selected8循环每块QK→maximum/shfl→Num与den rescale→PV。近期自身valid C12 profile/resource(v100，按path/hash引用)：80MT22ST/max6/dyn2KiB/stack0，shared100%/conflict0、WGload50.42/50.39、MTE74.88/75.11/MMA12.92/12.96/L2 87.43，4096waves/write8MiB+320B必要scope。未确认dominant瓶颈，MTE不是HBM带宽。v100 paironline失败、v103少Num寄存器仍慢的反例不豁免。

## Hypothesis / 单一机制

仅C12固定8选择块，两阶段dataflow：全QK先保存Score32/lane，跨所有128keys一次maximum，生成F16 P32乘256并计算同actualroundedP完整den，再按selected0..7做PV到Num16。不保留running-max/rescale更新，Num不在QK阶段初始化/live。保持原Q/K16B、V8B producer和最终packed16B输出、2KiB staging坐标、causal/index/每输出key顺序，other13 parent不动。不声称buffer少或资源一定减。

## Numerical / 数值与有效范围

Globalmax改变旧online FP16P量化路径，必须原fullnaive_nsa/1e-2验证，不调整输入/容差。den只由同P32转F32逐slot累加，再原xor32/16归约；不沿用旧running-den。Score32先-inf，invalid slot不读K/V、对应P0；全空时用uniform has_valid避免-inf减-inf，最终emptyall行为与parent/reference一致。有效block_start>=0且<=token、seq%16==0保证完整16行global bounds，mask token>=start+quarter4+e原样。

## Loop / lifetime / sync风险

Score32/P32动态selected索引可使private stack/spill；拟选择维8固定fully-unroll，MFMA score/P offsets常量，chunk仍4/原vector宽度。代码膨胀/地址计算/Score与P峰值live/资源恶化均有风险，不以source声明证明无spill。Num16只在全部QK/P/den完成后初始化；但actualcompiler liveness仍须资源与生成代码核验。

Q/K共享2KiB复用：Q读后/前块K读后到下一K写前的warp sync保留。P仅local32不进共享。PV每块V写前sync保护此前K/V读，写后sync保护Vreader，最终Output写前/读前同步原样。各自原global宽度/地址/必要值保持，但K全部先于V的时序可能改变cache/调度，不称真实HBM流量不变。

## Falsifiers / 固定停止线

先peer设计意见后leader GO，未经GO不edit/native。原source/generatedstrict gate/完整naive_nsa1e-2失败即拒绝。metadata0attention检查Score32/P32/Num16、constant offsets/unroll、完整causal/invalidcoverage、actual Q/K16B、V8B、Output16B与2KiB staging，stack>0、staticmax<4或MT>128停止native前拒绝；不以unroll意图推断实际code或动态lifetime，不adaptive改kernel直到通过。

过门禁后唯一C12现成run_variant singlesource/freshproc B28-P84-C104-C104-P84-B28两轮，各source4原fullrefs，总12；seed0/F16/causal/W10R50/tolerance不改，2sRSS/HWM/child/cgroup监控。任何OOM/nonzero/innerKilled/hash变/错误CSV stop保留prefix，无retry；全部terminal0后median不快于84拒绝，overlap/任round正差不称stable。screen后先leaderreview，不能自动formal/扩大dispatch/OJpromote。

## Peer request

已直接向worker2征询量化/den一致性、invalid未初始化、unroll8/code-size/dynamicstack、同步保护和固定测量设计；意见是建议，未替其启用或编辑计划。当前proposal/native/source均未开始。

实际宽度已核验parent CPP：Q31/K56行uint4、V145行uint2、Output199行uint4。旧proposal简写所有QKV16B不准确，已在edit前纠正，不顺便更改V8B producer。

## Slot count / raw index补充

现有run_kernel没有独立block_counts参数。native reference的count由合法sorted prefix与SEQ_LEN sentinel padding编码；在此明确输入契约下j<count等价于合法slot过滤，不能编造未传入count或用host Torch推算。选择loop固定j<8，先raw idx>=0、idx<seq_len/BS、idx<=token//BS，valid内再乘BS，防止sentinel/非法巨大idx乘法溢出后误读；每keycausal mask原样。

uniform has_valid保护globalmax/P计算，无效P0/den0，Num0在PV前初始化；all-empty最终沿用parent/reference的NaN，不擅改0输出。实际数值异常/quantization以原完整naive_nsa门禁判，不能把数学等价当FP16位等价。

## Peer实际审阅与leader GO

worker2五条advisory已到：真实prefix/sentinel契约、rawidx合法先于乘BS；globalmax改变FP16P，不声称bit等价，den/PV同一actual P32且key0..7顺序；invalidScore-inf/P0/无K/V读，uniformhas_valid保护emptyall而不改最终NaN；actualunroll/offset/code量/MT/ST/max/stack及Score/P/Num真实live核验；QK读→V写/逐V读→下一V写/最后V读→O写/O写→globalgather同步必须留。已纳入自身计划，未改peer代码或计划。

leader已明确GO仅C12，资源门禁stack0/staticmax>=4/MT<=128，unroll8constant offsets与初始化/边界/同步/strictcode未过即停止native，不修改kernel凑好资源。过门禁仅一次既定C12原native4C/12total，无adaptive重试或自动formal。
