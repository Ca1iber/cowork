# v201 case5 直接输出写回

## 1. 上版本遗留问题

v200 全14原native56通过，但profile仅12raw/10numeric/9scope满足；C8原版2NA/OOM1、C9parent576B残差反证均保留。只用C5四个有效scope记录与actualCPP/resource提出本版有限假设；未确认输出阶段占比。

## 2. 问题原因分析

C5 parent最终输出每query shared写2KiB+读2KiB、两处同步、global每lane2×16B。已验证存在该工作，未验证它是主瓶颈。直接4×8B stridedstore可能增加issue/请求成本，32B是逻辑连续段，不是已校准硬件sector。

## 3. 本版本解决方案

只覆盖C5 key，删最终outputshared staging及2sync，保留Q/K/V及其所有同步、roundedP/den/F32除法到F16转换；other13 keys保持parent完整prefix。无shuffle，不改main/sharednative/reference。

## 4. 具体落地策略

源SHA66ed461e355a69c456f2224b749d425ede38ce6ebba7f22ae1568351b05d6264/header201。1024local输出点完整双射与4096tile全globaloffset分解证明已存source_identity；真实outputptr8B对齐。

独立metadata初始helper API误用JITImpl.__name__，在compile前exit1/0attention0ref/OOM不增；旧脚本/log/1保留。leader批准一次对象identity修复，recovery0/generated0，候选源码未变。actualCPP globaluint2=8B×4、sync7到5、dyn2KiB，资源42MT20ST到36MT22ST/staticmax8同/stack0，ST增加保留，不说实际occupancy改善。

## 5. Benchmark 对比

原run_variant独立每source freshproc，C5 fixedB-P-C-C-P-B两round，fullnaive/W10R50/seed0/gradTrue/原tol不变，无postexport。12job全terminal0，4candidate/12总完整reference全部PASS，OOM1到1；没有native重试。单位us。

| Source | 中位数 | 最小–最大 |
|---|---:|---:|
| baseline_v28 | 30.797000 | 30.659000–31.278000 |
| parent_v084 | 24.747500 | 24.678000–24.791000 |
| power_v201 | 27.330500 | 27.249000–27.356000 |

相对parent84：+10.437418%；相对原v28：-11.255966%。两round相对parent分别+10.646603%、+10.173462%，所有candidate高于所有parent且range不交叠。相对原版仍快不能抵消对共同v084的退化。native事件包住50次Python调用，不能称纯shader时间；2s内存监测不是精确peak/全部child观察。

## 6. Profile 指标变化

本版没有新mcProfiler或mcTracer样本，不把parent计数当candidate新计数。因目标native明确退化，按门禁停止，不追加profile/native或自动formal。actualCPP仍确认机制materialize：sync7到5，output从每lane2×16B packedstore到4×8B stridedstore，保留Q/K/V的16Bglobalproducer与8B/4B shared通路。dyn2KiB不变、stack0、MT42到36、ST20到22、staticmax8不变。资源下降没有带来延迟收益，MTE、LSU请求/实际sector/cache成本未测，不能归因coalescing为唯一原因。ISA和本机校准roof缺失见UNAVAILABLE。

## 7. 实验总结

拒绝：C5比共同v084慢10.437418%，两round一致、所有C高于P。source66ed仅作失败归档；未覆盖main原v28 SHA429、未做新OJ提交或分数声明。other13 parentprefix/AST不变，但没有本版full14 gate，不能称全14通过或提交推荐。

保留原metadata helperAPI错误exit1/0compile0attention0reference，leader批准单次identity修复recovery0，不改candidate；所有native唯一固定12一次完成/OOM不增。代码生成减少WG输出工作、寄存器MT下降同时ST上升，净end-to-end退化，说明这些局部指标不足以支持此机制。后续保持packed16B输出，另选有fresh证据的机制交peer及leaderreview；不把单C5反例机械扩成全部shape禁令。
