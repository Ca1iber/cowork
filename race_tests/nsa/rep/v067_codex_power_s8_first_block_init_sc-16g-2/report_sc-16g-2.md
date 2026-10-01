# codex-power v067 first selected zero-state specialization / sc-16g-2

## 1. 上版本遗留问题

v064 runtime loop是当前C12候选，group2/group4增量未形成足以替换current的证据。main原v28不变。初始N0/Z0/M-inf仍在第一次valid selected迭代执行通用max/alpha/rescale，检验状态代数方向。

## 2. 问题原因分析

有限FP16 dot64在FP32范围内，valid branch至少key0 causal，max finite。first newM=max(-inf,bM)=bM，alpha=exp2(-inf)=0，旧N/Z本来0。可省1alpha exp与17zero-state multiplies，但peeled code/state增长和compiler自动unroll可能抵消收益。

## 3. 本版本解决方案

编辑前hypothesis/initial-state/order证明。actual selected0独立body保留valid guard/fullQK/mask/P/PV，仅替换5个通用anchor/scaling AST nodes为M=blockmax。首块invalid留下原初始状态，原body处理selected1..7，未假设index0有效或硬编码输入数据。剩余bodyAST与normalized整helper可恢复v064，C6 own v060及layouts/PV/output/masks/sync/proven bounds/2048B arena不变。cache只code objects，数据每次调用执行。

## 4. 具体落地策略

最初ordinary剩余7loop被LLVM自动完全unroll成64staticMMA，80MT/28ST，screen78.459us PASS；完整不同SHA/debug源码/CPP/host/LLVM/resource/raw保留。现有TileLang annotations explicitFalse/unroll_factor1经正常MACA lowering生成pragma unroll1，无foreign source或manual builtin。最终LLVM保持selected1..7backedge及unroll.disable，staticMMA16=first8+loop8，实际8selected工作/顺序未减。最终IR字节120738，v06485579。82MT/30ST、stack0/private alloca0/shared2048B/compiler max5，非actual occupancy。native完整验证初始化语义；source/selected generated静态通过，首行# codex-power v067。

## 5. Benchmark 对比

官方shape/input/seed0/完整naive_nsa/W10R50不变。debug1次screen不同SHA单独记录，不与最终gate混合。最终screen76.488us PASS；四方同process对称16/16 reference PASS：v2883.5815us、currentv06475.686us、trialv06178.3385us、candidate76.680us。对current慢1.313%，对v28仍快8.257%，继承已有收益不是本轮增量成功。candidate最小76.657高于current最大75.725，拒绝不依赖样本排除或时段比较。所有raw观察保留，不追逐更好重测。

最终SHA selected17完整reference checks；未跑all14/OJ/new profile，目标失败。exact archive与被测tmp同字节/hash且selected静态通过，不宣称其他case已测或不退化。

## 6. Profile 指标变化

不追加mcProfiler/mcTracer：初始化算术省去、actual remaining-loop和完整native已验证，目标慢1.313%，aggregate counter不能解除接受gate。v064此前consistent诊断按path引用，不当新source67实测。完整保存initial_auto_unrolled snapshot和最终CPP/host/optimizedLLVM/resources；first arithmetic omission/backedge/state-order是结构事实，不推定独占runtime贡献。

更高ST/更多代码与省去少量算术同时发生，贡献未独立量化，compiler max5不是occupiedwarps。ISA工具缺失、actual sGPU roof未标定，不制作虚假Roofline，GPU/benchmark/official inputs/reference不变。使用的是现有TileLang unroll_factor annotation及normal codegen，没有foreign-code/pragma injection。未假设首index valid，无数据预计算或跨调用tensor内容cache。

## 7. 实验总结

rejected_target_incremental_performance。首状态代数和17最终完整selected reference合规，但更少首次算术不足以建立端到端收益，保留v064。source SHA3a28e138ac4f74fff705123aeee3708287456ced79fb78b7fb4f148082187b5f，首行# codex-power v067。不同SHA的auto-unrolled debug只1次screen独立记录，不混入最终benchmark。未跑all14/OJ/newprofile，不宣称全局不退化。main原v2842911561...及独立v064575f2fa0...均不变。debug与最终全部证据闭环后才进入下一轮。
