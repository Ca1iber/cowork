# v121 C12双warp源码及导出检查失败（sc-16g-2）

## 1. 上版本遗留问题

v120 C6 Num16/V4原屏测相对共同v84慢11.941452%，已拒绝。本版从最佳CB13出发，仅新C12 factory，保留其他13case，未继承失败C6。

## 2. 问题原因分析

两warp各处理4个selected，源上可减少每warp串行路径，但增加shared、CTA同步和FP32合并成本；没有已验证调度瓶颈或MT降低保证。真实生成代码又产生Max/Den共享别名，暴露跨warp读后覆写风险。

## 3. 本版本解决方案

header121，完整CB13 18ASTprefix，精确C12 key追加。Score16/P16每warp，统一globalmax，同actual F16-rounded P用于den/PV，group Num/Den以FP32合并，emptyNaN不变。原be756漏外层JIT装饰器，仅source检查未执行heavy；rev02 738仅恢复父C12 exactJIT/四passconfigs，body参数不变，旧源码审包保留。

## 4. 具体落地策略

source-only validator0、索引及完整向量证明、4CTA无if祖先。批准唯一onefreshP/C导出2pairs4files，JITKernel hook各1且0NSA/reference。原5+23+4/28/OOM13/unknown1GiB/600/.5/1s守卫保持。真实metadata0，随后CPUgeometrygate1，controller/supervisor/launcher原wait1，未续跑resource/IR/native。

## 5. Benchmark 对比

本版candidate/fullinclusive refs均0，native0，无新延迟或正确性结果，不混旧版本样本。其他13源码一致不能作为性能豁免，generatedother13未导出。

## 6. Profile 指标变化

父host=[1024,4,64,1,1,2048]、CPP388504原字节匹配。候选host=[1024,4,128,1,1,10368]与预声明10496不符；candidate CPP42c055实际4CTA。CPP98写Max float槽1536..1567，100 CTA，101读两个warp Max；144 Den写完全相同槽，146才下一CTA。fastwave可在另一wave101读取前覆写Max，不能以源码独立buffers或146晚屏障豁免。Num从float1568开始。无新resourceSDK/IR/MC/trace，不能认定物理资源或实测数值损坏。87份wholeCG样本峰25617113088B/OOM13，峰非未来上界。

## 7. 实验总结

failed_codegen_geometry_and_crosswarp_alias_risk，原stage2及四层1保留，不修改geometry门槛继续。源共享总量预测被实际allocator别名反证，并有具体跨warp读后覆写风险；还没有native correctness或速度结论。所有自有进程terminal，source738/main429保持，无推广/补测。后续必须新独立源方案解决共享别名，需leader分派与审查。
