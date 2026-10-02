# v128 C6 V4 消费者独立预算编译诊断（sc-16g-2）

## 1. 上版本遗留问题

v127 首次准入 wholeCG=5447409664 B 超过原 5GiB 上限 78700544 B，未创建 metadata child，四层原 wait1。该失败不修改。源码 cfeb/header127 仅将当前 C6 hybrid 的 Voperand16 改4，Num32 与其他13个 case 保持 CB13；此前后端、正确性和时延均未知。

## 2. 问题原因分析

本次独立重新分配 6GiB baseline +22GiB additional 工程估计 +4GiB reserve=32GiB，运行 wholeCG 28GiB 停止线、未知1GiB/身份/OOM13/600s 等规则不变；这不是未来峰值上界或历史 OOM 根因证明。首次外层纯-S预检把 path→SHA 字典值错读成对象，TypeError 发生在任何 Popen 之前。自动审批随后拒绝恢复；leader独立核十个启动标记 absent 后明确授权修复该外层预检和首次实际启动，审批通过。原错误与拒绝记录保留。

## 3. 本版本解决方案

引用 immutable v127 submission，不复制或编辑完整 source，不改 header127。五阶段仅 metadata、CPU审计、candidate resource、首次 O3IR、CPU观察。源码期预测是缩短 V 操作数活跃范围；实际资源仍100MT22ST/max4，寄存器下降预测未获得支持。

## 4. 具体落地策略

原 case6=(8,1024,1,16,128,1,32,True)，实际 grid1024×8/64threads/shared8192。父CB13保留 Num32/P8/Score8。每个 key_tile→plane→chunk 中先完整读4half再对应PV MFMA，每输出仍先key0后key1。全部global Q/K/V/Out 16B、producer/layout/math/output/sync保持。parent与candidate导出2pairs/4files；原 SDK resource一次、首 IR一次，六个actual wait文件均0，所有五stage exit0。

## 5. Benchmark 对比

本版 native/reference/profile/OJ 为 UNAVAILABLE（未授权、未运行），0 NSA attention、0 fullrefs。不能声明正确性、速度、14case不退化或推广。旧125 C12+4.760673%、旧127准入1保持独立，不混入本版结果。

## 6. Profile 指标变化

| 指标 | parent C6 | candidate127 本次 | 解释 |
|---|---:|---:|---|
| MT |100|100|未下降|
| ST |22|22|不变|
| staticmax |4|4|静态上限，不是运行occupancy|
| stack |0|0|无stack|
| dynamic shared B |8192|8192|host实际量|

无新 mcProfiler。IR 32MFMA/0alloca/0AS5；16个half4 shared-load均紧接其对应PV MFMA，例如1149→1150、1230→1231，编译顺序支持流式表达，但不证明物理寄存器活跃范围改变。其他物理资源/ISA/占用率/运行时延 UNAVAILABLE。

## 7. 实验总结

固定一次编译诊断完成，OOM13不增；96个0.5s采样的wholeCG峰值 26289766400 B仅是观测下界，不是未来上界。新增预算只支持本次完成。保持 sourcecfeb，不重试/清cache/editor/未知进程/改limit；实际CPP/IR已交leader人工审核，未获native授权。共享路径和其他13case源码未改，源码相同不作为性能免责。
