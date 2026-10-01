# codex-power v080：S1 D64验证布局的dispatch扩展

## 1. 上版本遗留问题

79 C4全14比77快14.072%，119候选参考覆盖14项，profile100%/0；其他非目标仍有正差。factory断言支持G16/D64/S1/BS16/causal以及L倍数16，七个未启用形状可测，不能仅凭C4推断所有形状收益。

## 2. 问题原因分析

大型S1 D64形状可能受旧shared layout/feed约束；小形状host提交跨度也影响时间。新dispatch会产生更多编译对象，32GiB容器曾OOM。代码缓存惰性构建/独立case进程仅用于控制构建与状态，不能缓存输入或改计时。

## 3. 本版本解决方案

仅扩展8个exactkey（2/4/5/7/8/9/13/14），kernel源码精确79；C6精确76、C12精确77，未支持1/3/10/11回原始v28。首次调用编译factory(*key)，替换_KERNEL_CACHE为真实JITKernel并执行全部数据；参考首调/warm后计时仍原入口直接kernel。无内容/预处理缓存、无extra热wrapper。

## 4. 具体落地策略

原v28前缀/入口AST不变，三个helper原路径/hash引用。所有B/H映射与L倍数16有效block16行有界，G16的1024slot/operand/fragment证明79沿用。实际case断言初始closure仅key、调用后缓存为JITKernel，tensor_args不保留。3OJimports、header v080，无class新增/async/外源/手写generalbuiltin/torch compute。

选定七新形状采用每case独立进程三版本，仍调用原v000::_run_one_case/完整naive_nsa/W10R50/seed/容差，4候选参考每shape，共28候选/84整组。只称screen，非全14结论。正式14case沿同一进程隔离策略，native先执行、三源码metadata捕获后执行，不运行attention或计参考；不把后段export代价混入计时。
## 5. Benchmark 对比

sc-16g-2；正式逐case独立进程，原始naive_nsa、seed0、F16、causal、warmup10/repeat50及容差完全保留。每case B-I-C-C-I-B两轮，各版本4样本。下表单位us，负差表示更快。首轮与唯一风险复测所有原始样本都归档，不以device CPP相同豁免正差。

| case | v28 | parent79 | v080 | 相对v28 | 相对79 |
|---|---:|---:|---:|---:|---:|
| 1 | 9.041920 | 8.957440 | 8.944640 | -1.076% | -0.143% |
| 2 | 9.108480 | 9.134080 | 8.678400 | -4.722% | -4.989% |
| 3 | 12.032000 | 12.026880 | 12.014080 | -0.149% | -0.106% |
| 4 | 12.633600 | 10.767360 | 10.982400 | -13.070% | +1.997% |
| 5 | 31.424000 | 31.193600 | 24.450560 | -22.191% | -21.617% |
| 6 | 157.342720 | 94.095364 | 94.115839 | -40.184% | +0.022% |
| 7 | 31.293440 | 31.303680 | 25.292800 | -19.175% | -19.202% |
| 8 | 52.129280 | 52.062722 | 40.104960 | -23.066% | -22.968% |
| 9 | 52.503040 | 52.057600 | 40.762880 | -22.361% | -21.697% |
| 10 | 12.421120 | 12.431360 | 12.456959 | +0.289% | +0.206% |
| 11 | 23.316480 | 23.531520 | 23.564800 | +1.065% | +0.141% |
| 12 | 83.645439 | 72.575998 | 72.558078 | -13.255% | -0.025% |
| 13 | 11.345920 | 11.340800 | 9.932800 | -12.455% | -12.415% |
| 14 | 20.075520 | 20.149760 | 15.920640 | -20.696% | -20.988% |

固定风险复测：选择首轮相对v28或79任一正差的所有case，规则及列表在risk_selection.json，原native每case再4候选/12全组；不再追加挑选有利结果的复测。

| case | v28 | parent79 | v080 | 相对v28 | 相对79 |
|---|---:|---:|---:|---:|---:|
| 4 | 13.352960 | 11.409920 | 11.407360 | -14.571% | -0.022% |
| 6 | 157.186560 | 94.451198 | 93.977599 | -40.213% | -0.501% |
| 10 | 12.001280 | 11.724800 | 11.750400 | -2.090% | +0.218% |
| 11 | 23.411200 | 23.349760 | 23.372799 | -0.164% | +0.099% |

精确候选完整参考检查共114次，覆盖14项；含两个对照共314次。屏测28候选/84全组，正式56/168，风险16/48, 归档字节一致源码14/14。合并CSV与逐case原始CSV为同一组数据，计数只用合并文件，metadata捕获不计参考检查。

执行脚本：hack/v080_codex_power_s1_d64_dispatch_sc-16g-2/run_formal_all14.sh、run_risk.sh、run_archive_native.sh；均保留原native::_run_one_case内部逻辑，进程隔离只是外层编排。

## 6. Profile 指标变化

使用mcProfiler counts2、per-kernel、case8（B2/L4096/H1/HQ16/D64/S1/BS16），warm10+20 profiler driver与原生benchmark分开（profiler requires_grad=False，native=True；不声称运行时等价），不把profile运行作为正式时延。

| 指标（两样本平均） | parent79 | v080 |
|---|---:|---:|
| waves | 8192.0000 | 8192.0000 |
| read_bytes | 18831584.0000 | 18878496.0000 |
| write_bytes | 16777584.0000 | 16777568.0000 |
| l2_hit_pct | 48.0350 | 47.9300 |
| shared_nonconflict_pct | 35.8750 | 100.0000 |
| conflict_cycles | 6.8000 | 0.0000 |
| load_latency_cycles | 102.3500 | 50.6350 |
| mte_pct | 50.9600 | 68.4600 |
| mma_pct | 4.9400 | 6.8050 |

四样本dispatched waves应为8192、输出字节约16777216；scope检查仅必要条件，不能保证排除其他启动。Achieved waves保留为原始计数，不能叫实际occupancy。七新增形状mxcc resource报告在resources/，不从static max warps推算实测占用。所有42份正式device CPP进行OJ严格检查，case1/3/10/11精确v28，其他原路径精确parent79；源码一致只用于排除意外改核，不豁免时延变化。

当前case8全局流量与L2命中率基本相同，shared nonconflict由35.875%到100%、conflict由6.8到0、load latency由102.35到50.635；与23.066%正式本地提速方向一致，支持访存布局与供给改善，不足以将全收益独占归因于bank冲突。七新增目标全部42MT/20ST、stack0、static maxwarps8；mxcc的0 shared是静态shared，实际host传入动态shared2048B，不能写成零总shared。编译min-blocks被MACA忽略的warning保留，不以launch_bounds的第二参数推算占用。

mcTracer前期timeout124且仅header，本版未再次重试，未获得timeline；可用ISA解码工具仍缺失；sGPU实际计算/带宽roof未标定，因此不伪造Roofline点或物理四分之一屋顶。mx-smi为profile阶段只读状态采样，不能作为逐kernelAP占用或HBM吞吐。

归档初次在case13以137结束，cgroup OOM计数从6到8、历史峰值达到32GiB。initial_archive_exit137保留完整失败现场。仅case13做一次不改源码、不改native的重试，case14为首次执行；成功后使用1–12初始PASS和13–14恢复PASS合并归档14项。监控只读/proc与cgroup，不能把该无对照归档时延作为正式速度结论。archive_native_all14.exit原137保留，archive_recovery.exit独立记录恢复结果。

## 7. 实验总结

七个新增S1 D64目标在屏测及正式全量中改善，C6/C12使用既有独立TileLang实现，本版仅扩展代码dispatch及lazy编译。全14正确性通过；外部OJ成绩仍待测，不能用本地速度替代OJ各case无退化要求。保留正式及风险所有正差；本版归档为inconclusive/OJ-pending，不替换主submission.py的原始v28。下一步先对照OJ完整14分数确认风险，再针对未优化D32/D128或S2/S4路径做独立证据支持的实验。
