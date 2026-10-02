# v204：case8 普通 V 读取提前实验（拒绝）

## 1. 版本与范围
机器 subagent2，分支 exp/nsa-worker2-s1-from-v084，开发父提交 9eebae913786。数学父版本是 v084/4c674c79；仅 case8 (2,4096,1,16,64,1,16,True) 追加调度。候选及拒绝归档 SHA256 为 2a93d74b3cb8df2469ded6f8ad24323a1aaeef17c254e628813efd88eeb7a787。公共 submission.py 仍是原 v28/42911561，没有发布候选。

## 2. 可证伪假设与同伴审阅
将同一 V 普通 global 读取写入既有 local v_fetch，提前到 K post-sync 后、QK 前，尝试改变等待位置。worker1 提醒 guard、local-only、K shared 生命周期、寄存器活跃长度与编译未物化风险，已采纳。源码顺序不证明运行重叠；对方仅建议，未修改其代码或计划。

## 3. 实际改动与索引证明
仅移动 fetch_row、fetch_col、vectorized(8 half) 的三条语句。合法 block_start guard、V 地址/数量、原 preV sync 后的 shared 写入、全部七个 warp sync、P 舍入/den/PV/F32 除法转 F16 均保留。反向移动得到原 query branch AST；父版本 14 个 top-level AST 节点完整前缀相等，其他 13 个 dispatch 没有替换。详见 source_identity.json 与 source_diff.patch。

## 4. 正确性与执行门禁
源码/两份生成代码 validator 均 0。唯一双 factory metadata 编译 0；后续两份 SDK resource 与两份 optimized IR 共四条首次命令全部 0。复用 observer raw 标签 oneimport-only 保留：实际 scope 分别是两个 factory 编译和四个 CPU 编译器捕获，attention/reference/native 均 0。
唯一 case8 native 固定 B28-P84-C204-C204-P84-B28 ×2，所有 12 jobs 真正 terminal0，原 naive_nsa 完整参考通过 4 次候选/12 次总计。原 seed0、F16、requires_grad、tol1e-2、W10R50、runner32c/native6eb 未改，无 metadata postexport。不是全 14 case 正确性/非退化证明。

## 5. 原始性能与拒绝
单位 µs：B28 [51.948,51.779,51.487,51.594]；P84 [41.006,40.166,40.330,40.479]；C204 [41.436,41.037,40.556,40.468]。候选中位40.7965，对父40.4045慢0.970188964%；两轮分别慢1.602769%与0.266059%，范围交叠。全部正差与浮点原值保留在 CSV/JSON，没有追加样本。按预登记 median 不赢拒绝。50 次 Python 调用的 event span 可能包含 host enqueue 空隙；此处只比较相同本机新监控协议，不能拿历史/另一物理卡绝对时间混比。

## 6. 编译与内存证据
parent42MT/20ST →candidate44MT/20ST，均 dynamic2048B/stack0/staticmax8/64threads/grid4096x2。staticmax不是实测占用。Parent optimized IR V loads427–457在QK299–305后，candidate307–337在QK339–345前；Vshared475–558仍在preV416/456后、postV560前。两份 CPP 保留每 lane 两次 uint4 V16B 源路径；两份 IR 都 SROA 为16个 i16 load，最终 ISA 事务宽度/指令顺序不可得，不能宣称 runtime overlap。没有新 profile/roof/ISA 解码结果。
全容器 0.5s 监控/非阻塞重任务锁/前后 admission<=2GiB/未知RSS>1GiB拒入/28GiB停止。12 jobs 的观测 cgroup peak22,776,475,648B，OOM3保持不变；采样下界、共享页/namespace/accounting限制保留，单次成功不解释或修复 v202 OOM。原始 admission、owned identity、wait/exit 均落盘，未终止未知进程。

## 7. 结论与闭环
rejected_target_median_not_faster。编译早读确实物化，却没有延迟收益；MT增加不是已证明的唯一慢因。归档只保留实验，不提交主文件、不 formal/profile、不自适应重试、不扩其他 case。一次广泛旧日志读取工具 automatic-review 超时而未执行，未重试；实际编译/native 都只做首次计划。shared_inputs_final.json、accepted_native_counts.json、native_memory_summary.json 和 archive_sha256.json 链接真实文件/hash；所有 owned PID 已终态。后续不同机制需新的独立提案及 leader 审阅。
