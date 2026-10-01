# power v042 lane normalizer / sc-16g-2

## 1. 上版本遗留问题

v04190.752us，shared2304、68MT/max7，仍输v28约83.7us。warp reduce workspace256B未实际被AllReduce64访问，block max缓存8FP32/thread有四倍复制。

## 2. 问题原因分析

压缩缓存及去掉workspace可能改善资源；owner分支和broadcast会增加控制流。资源下降不是性能证明。

## 3. 本版本解决方案

max缓存每key-lane组保存2个block max，global max逐block更新所有lane。alpha仅owner组计算，shfl同步广播；max/sum用xor32后xor16，全64lane mask，标准TileLang原语。

## 4. 具体落地策略

local scores4FP32/max2；selected%4决定owner，selected//4决定cache槽。所有collectives位于uniform valid分支，owner分支之后重汇合。source不含手写builtin/injection/async，头v042、三imports。生成shfl及hostshared2048，编译64MT/50ST、stack0/max8，fallback AST保留。

## 5. Benchmark 对比

native official case12/W10R50/naive_nsa。初screen188.477us PASS，不能静默抹掉。因幅度异常做同进程baseline-parent-candidate对称两轮，12/12 PASS：v28 83.5765us、v04189.915us、v04291.0005us。candidate对v28慢8.883%、对parent慢1.207%。188us未复现，原因未确定，不把它当作稳定回退或噪声结论。入口全局run_kernel在native runner172/197行调用，通过test.run_kernel逐次绑定正确variant，benchmark逻辑未改。未全14候选/OJ。

## 6. Profile 指标变化

同次mcProfiler各2有效样本：candidate read9.5789MB/write8.3889MB，base read9.5735/write8.3889；candidate MTE75.91/76.19%、MMA10.06/10.10%，base62.38/62.74%、11.00/11.07%。L2hit87.62% vs91.66%；shared79.59% vs48.42/48.43%，conflict1.07/1.08 vs2.82，loadlat56.4/56.7 vs61.5/62.3。更好shared指标未换来端到端收益。trace20次88.064us，64regs/2048/private0。LLVM sethwreg96→160/gethwreg48→80/bpermute18→26，静态计数不能证明耗时比例。188us仅初screen，未复现，原因未明。ISA不可用，无新Roofline。

## 7. 实验总结

rejected：12/12参考通过，但同轮仍比v28慢8.88%。保存异常screen及全部对照，不把异常归为噪声。主文件保持原v28。下一方向：V producer改2x8 microtile（两次16B load）+packed neighbour exchange，替代4x4的四次8B load；同样字节量，降低issue数量。mask控制本身不是下一版改动，观察实际MTE/寄存器/时延，不能只凭duty断言瓶颈。
