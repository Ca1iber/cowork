# v082 hypothesis before kernel edits

Observed evidence：v081 C3正式12.25728us、parent80 12.24192us，固定风险确认仍+0.083573%。本轮fresh parent81 C3 probe counts2，256waves/约1MiB输出scope一致；shared效率35.24%，conflict7.16，load43.67/43.81，MTE10.45/10.34，MMA1.49/1.47。资源52MT/20ST/stack0/static maxwarps8；actual host动态shared8192B。小grid仅256waves，不能单凭低duty判定唯一瓶颈。
Verified bottleneck：已观察shared冲突；未验证它在端到端中的占比，不能声称其他供给/launch约束已排除。
Current hypothesis：S1/BS16/G16仅需16key与16queryheads。以正常16x16x16 f16 MFMA在D128上8轮QK/8轮PV，两个64feature panel保持自建64布局的位排列，再做单block全局max与同一FP16 P分母，有机会减少shared占用/冲突。
Proposed mechanism：只新增exact C3 factory与lazy key，保留整份parent81 AST/既有dispatch。shared2048half=4096B，q_local32half、numerator32float，score/P4，V producer每64feature panel2row×8col，4B shared store，4row8B consumer，输出4个512half段。其他全部kernel body精确parent81。
Predicted metrics：shared8192→4096B；冲突下降、MMA/MTE供给改善，官方C3端到端下降。MT可能超过52、静态maxwarps可能降低，不等同实测occupancy，也不保证提速。
Falsifier：完整naive_nsa/W10R50不正确或时延不改善，OJ源/生成码违规，coords/fragment覆盖不全，其他case正式/唯一风险出现正差则不宣称无退化。S1FP16 P scale256与den-consumedP保持一致，不能用实数proof替代浮点参考。
Risks：128features的新坐标、mfma vectoroffset范围、因扩大局部数组而寄存器/编译内存增加。仅TileLang合法原语，无async/外源/手写generalbuiltin/torch compute/数据cache，warm后必须actualJITKernel。旧团队优化kernel不读取，原v28仅黑盒控制；本轮D128从自建panel设计重新推导。

Main remains originalv28; exact parent81 and current branch156ae29cd already verified; formal all14/no regression/OJ gate unchanged.
