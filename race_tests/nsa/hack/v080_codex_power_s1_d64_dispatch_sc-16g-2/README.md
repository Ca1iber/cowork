# v080
build_candidate.py: immutablev28prefix+76/77/79kernelhelpers,8lazycode dispatches;first_call compiles/releasesnoinput,then replaces_key entry,hotcalls directJITKernel. 3OJimports/header80.
prove_dispatch_domain.py:8B/L/H domains/79coordinateproof bypath/hash,no numerical changes.
run_target_case/run_target_screen/analyze_target_screen:sevennewshapes,eachfresh3sourceprocess/originalv000 naive_nsa W10R50,B-I-C-C-I-B x2,28candidate/84controls refs,actualclosure/hotcache assertions.
run_formal_case/run_formal_all14/analyze_formal_all14:all14 freshcaseprocess,unchangednative beforemetadata;samecase3sourceexportAFTERtiming,noattention;56candidate/168wholechecks. Preservedsourcehashes/rawdecimals,4fallbacks exactv28 andunchangedparentcases exact79,noidentitywaiver.


## 正式与关闭命令

- `run_formal_all14.sh`：14个独立case进程，分别调用原native测试；每case三个源码，B-I-C-C-I-B重复两轮。原seed、输入、完整naive_nsa、warm10/repeat50及容差不变。
- `run_formal_case.py`：先native计时和完整参考，后同进程导出三个实际JITKernel的device/host；后段hook仅metadata，未执行attention、未计参考次数。
- `analyze_formal_all14.py`：Decimal统计，42份device源验证；原fallback与parent路径源码逐字节比对，不豁免正差。
- `run_risk.sh` / `analyze_risk.py`：首轮任一对照正差的全部case固定一次复测，所有数据保留，不追加选择性重测。
- `run_post_formal.sh`：等待formal终态后串行风险、归档、exactsource原生全14、case8 profiler和resource；等待脚本不重启原任务。
- `run_archive_native.sh`：每case独立进程调用共享run_variant的现有NSA_CASES入口，再合并14行；避免编译对象累积。只改外部编排，没有修改native函数。
- `run_mcprof.sh` / `analyze_profile.py`：独立profiler counts2，精确v080/parent79源码，case8，保留bundle与四样本原始数据，核查8192waves和16MiB输出作用域。
- `sample_mx_smi.py`：profile任务存活期间只读mx-smi状态，不推算per-kernel吞吐/occupancy。
- `capture_resources.py`：七新增目标device CPP依次mxcc resource-usage，保存原始输出和实际设备对象。
- `finish_report.py` / `close_version.py`：七节中文报告、来源计数、manifest、所有文件SHA、仅本版本四目录精确stage。合并CSV与逐caseCSV不重复计数。

依赖为仓库已有TileLang、torch、MXMACA/mxcc/mcProfiler及shared native wrapper；没有安装依赖或修改GPU设置。首次懒构建缓存只捕获shape key，全部attention数据每次重算；warm后缓存实际JITKernel。三已有helper以路径/哈希引用，不复制归档全源码到experiments。


## 归档OOM现场与恢复

初次归档case13以137结束，初始12项PASS与失败现场保留于rep，未改正式/风险数据。`run_archive_recovery.sh`仅对13重试一次，14首次执行；同一归档SHA与原native/W10R50/full naive_nsa不变。`monitor_recovery_memory.py`只读/proc与cgroup，记录峰值和OOM计数，不调GPU、不杀非本任务进程。恢复成功后合并初始1–12与恢复13–14，原137不覆盖，新archive_recovery.exit单独作为gate。`run_evidence_after_recovery.sh`在恢复终态后串行profiler与资源捕获。
