# v127 当前C6 Voperand chunk流式源稿及准入拒绝（sc-16g-2）

## 1. 上版本遗留问题

C12三候选已拒绝。v126 exactP84C6 freshraw shared100/conf0/WG47.4，既有resource100MT22ST/max4/stack0/dyn8192；不预设bank或occupancy瓶颈。

## 2. 问题原因分析

正确父factory为CB13 _make_power_s1_v_hybrid_pack，Num源码fragment16×128/实际CPP32F32，Voperand16half，每key_tile/plane先四chunkload再四MMA。缩operand并融合chunk消费可能减life，但compiler hoist/无物理MT变化或loadMLP降低可反证，非C3factory/不复制旧118。

## 3. 本版本解决方案

sourcecfeb/header127，正确parentJIT与完整18ASTprefix，仅v_operand16→4及每chunk load4→同MMA.data0。Num32/QK/P8roundedden/所有producer/sync/layout/output/global16B字节逆恢复，key/plane/chunk及每feature key0→key1序保持。peer实际建议在edit前收到，sourcevalidator0/4096值1024half4全向量同值顺序证明0。

## 4. 具体落地策略

批准唯一5stage链原Popen，startup16deps/shared6 SHA/AST0。Stage1初次wholeCG5447409664B>旧5GiB cap5368709120（+78700544）准入拒绝；metadata子进程未spawn/all_jobs空，controller/supervisor/launcher/stage原wait1。exactNode tuple匹配/RSS2675756KiB/HWM3611504，OOM13不变，未等待降用量或retry/cleanup未知。

## 5. Benchmark 对比

candidate/inclusive fullrefs均0、native0，source性能/数值未验证。无新的kernel延迟或all14/OJ，不混旧样本。

## 6. Profile 指标变化

新import/metadata/export/resource/IR/profile全部0，不能称V4 backend物化或MT改善。Firstadmission cache1917100032/rss3163258880/mapped52170752/swap746381312，whole收费不等RSS简单相加；不据账项归因旧OOM或操作editor。原预算边界和失败记录保持。

## 7. 实验总结

native_or_compile_admission_refused_no_backend_evidence：源机制已静态记录，prediction仍未验证。自有进程全terminal/四层1/0stagechild，sourcecfeb/main429不改、不重试或放宽旧gate。下一独立128仅预算诊断prepare6GiB+22工程估计+4reserve，runtime28/其他guard保持，需新rootGO，不复活127。
