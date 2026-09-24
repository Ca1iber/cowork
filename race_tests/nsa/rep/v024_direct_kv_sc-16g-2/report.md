# v024 case6/12 V global→local 直载：严重退化

## 上版本遗留问题
v023 本地 case6/case12 分别约0.157/0.089 ms，已通过 K global→local 直载与 case6 输出 swizzle 降低 K shared 中转和输出 bank conflict。PV 仍使用 V global→shared→local 路径，MTE Duty 相对 MMA Duty 高。

## 问题原因分析
v023 的 V shared 阶段除暂存外，还将连续全局 V 读取重新排布成 MFMA B operand 所需的 lane/register 布局。直接按 MFMA B fragment 的 lane 布局读全局 V 时，每线程 local_id 对应不同 V 行，不能形成原有的每线程连续向量读。

## 本版本解决方案
仅在 v023 的两个 directK 形状增加手写 PV k_pack=1，使用与 QK score store 兼容的 scores_half fragment 布局，按 V 的全局地址直接装入 pv_b_local 并调用 T.tvm_mfma；不再分配 v_shared。其它形状保持 v023，causal/sentinel/输出语义不变。源码补丁位于 experiments/v024_direct_kv_sc-16g-2/，复现脚本和原始数据分别在 hack/rep 同名目录。

## 具体落地策略
候选 /tmp/nsa_v024/submission_direct_kv.py 从 v023 SHA-256 eb4fdfd7cc0814443109a6674a14c3efe3fbe5f1d17ae6e198a6e866093e9fd2 生成，静态 OJ 源码检查通过。调用共享 test_tilelang_nsa_fwd.py::_run_one_case 的官方 case6/12，warmup10/repeat50，原 reference atol/rtol=1e-2。没有做完整14 case，因为两个目标均严重退化；未创建 submission/v024。

## Benchmark 对比
| 路径 | case6 ms | case12 ms | 数值 |
|---|---:|---:|---|
| v023 先前同机三轮中位数 | 0.157041 | 0.088760 | PASS |
| v024 V 直载目标快筛 | 0.197985 | 0.134774 | PASS |

两形状分别约慢26%与52%，幅度远大于本地计时波动。

## Profile 指标变化
未对严重退化的候选继续做 mcProfiler。generated_code.tar.gz 显示 case6 静态同步由 v023 的5降为3、动态 shared 从8448 B降至4352 B；case12 同步也由5降为3。与此同时，原 V→shared 阶段的全局 uint4 向量读取变成多个跨行的标量 V 读取，尽管减少 shared/sync，性能大幅退化。case12 动态 shared 仍为2560 B，说明输出/归约缓冲仍占资源。

## 实验总结
V shared 在当前 PV MFMA 数据流中是必要的访问重排，不能简单套用 K 直载。v024 被拒绝，v023 保持本地最佳候选，线上 OJ 仍未验证。若要获得更大提升，下一步应探索能同时保持全局 V 合并访问与计算片段布局的新 query/KV tile 数据流，而非继续删除单个 shared buffer。
