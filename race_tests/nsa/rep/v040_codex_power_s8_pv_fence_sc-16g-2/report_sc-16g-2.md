# power v040 PV fence / sc-16g-2

## 1. 上版本遗留问题

v039 case12为93.307us，v28约83.7us。候选每pair首PV存在可能冗余的fence。

## 2. 问题原因分析

每个有效pair先执行至少一个QK pre-fence，覆盖prior-pair V读取；其间无V读取，且生成K/V范围分离。预测可删首PV pre-fence，第二PV仍需保护first PV读取。

## 3. 本版本解决方案

仅which==1保留PV pre-fence，其他计算/同步不变。

## 4. 具体落地策略

lowering K[0,2048)、V[2048,4096)相同，安全依据存shared_separation_proof.json。编译72MT/30ST、stack0/max7、shared4608。头v040、三imports、static PASS，fallback AST不变。

## 5. Benchmark 对比

native case12、naive_nsa、W10R50，93.384us PASS。parent93.307us，+0.077us/+0.08%为跨轮screen，不能判为显著回退；v28 rollback83.702us，慢11.57%。未paired/full14 candidate/OJ。

## 6. Profile 指标变化

LLVM barrier.warp静态call35→31，变化实际进入IR；conditional validity影响动态数量，非ISA数量。资源不变，LLVM已存档。无新mcProfiler/mcTracer，因为screen失败；baseline profile参考v039。ISA不可用，无新增Roofline。

## 7. 实验总结

rejected。省去4次fence没有可见收益，不能靠它解决相对v28的差距。主文件保留原v28。转向先计算并缓存每block稳定的FP16概率，再统一PV；后置output accumulator初始化以缩短Q/output同时存活，实际收益与精度仍需验证。
