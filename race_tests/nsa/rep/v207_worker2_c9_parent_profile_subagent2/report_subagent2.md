# v207：case9 父版 mcProfiler 有限诊断

## 1. 范围与来源
只有parent84/4c674c79，官方case9(1,8192,1,16,64,1,16,True)。原driverSHA573cb367与officialJSON85f2c34a固定。mcProfiler实际文件SHA8b668655...，既有版本3.8.1.4/标识575f5a9f6d另列；版本标识不是文件SHA。没有candidate、新kernel、fullreference或nativebenchmark。

## 2. 计划与协议差异
一次perf_exec、counts2/custom/per-kernel、固定十metrics，原mctx driver seed0/F16 gradFalse，initial1+warm10+profile20。原native是gradTrue/fullnaive/W10R50/不同indices生成，不能把profile计数当native公平计时。两reportrecords非两独立native进程。原v200 C9parent+576范围失败保持，residual0..512不变。

## 3. 实际进程与终态
Observer171830、stable-Schild171831、CLI171836真实自然exit0，313samples/165.757s/OOM3->3，无timeout/termination/innerKilled。观测exactdriver9 PIDs171987/172401/172726与三个PROFILE_DONE(case9calls20)，因此存在tool多pass/replay；总GPUattentionlaunch不可得，不猜31乘replay数量。只有此次oneCLI，无补采集。

## 4. 两条真实 per-kernel 数据
记录1/2均文件名native_sparse_attention_kernel，全部十metrics numeric/isErrorfalse。两者Achieved/Dispatched均8192，写16,777,536B，对16,777,216B必要output residual+320/+320通过原范围。
L2命中47.3174/47.3797%；GlobalRead19,312,320/19,273,280B；WGload50.3483/50.0785cycles；conflict0/0，non-conflict100/100%；MTE68.7889/71.4424%，MMA6.85746/7.12198%。完整精度留profile_audit.json/rawdump，没有只选好点。

## 5. Scope限制
Source4c/immutablecase9driver/已有真实host8192x1,64threads,dyn2KiB一致；但本report umd_data为空，没有直接runtimegrid字段，标UNAVAILABLE，不称完整exclusive scope通过。新的two numeric/wave/payload必要范围有效，不修复旧+576。Aggregate report261,522waves与539MB写入含其它work，不能代替target两条per-kernel。GlobalRead不是已校准HBM，WGload不是DRAM延迟，waves不是occupancy；MTE/MMA不能证明单一瓶颈。

## 6. 观察与工程边界
同cooperative lock/2GiB前后双admission/unknownRSS1GiB/0.5s全CG与allthreadchildren/28GiB-OOM-failure-300s stop，仅verifiedownedidentity/已观察ancestry可signal。此次observedwholepeak22,635,466,752B，OOM集合[3]；正常ownexit依据Popen，priorabort不清。只核对owned且exactdriver的argv，不存cmdline，不读陌生env/marker、不动未知进程/limits/GPU。采样、namespace、共享页收费限制及未来峰值未知保持。

## 7. 结论与闭环
关闭为有限有效parentC9诊断，0fullrefs/0nativebench/0newkernel。该证据可为下一自己的C9机制提供受限依据，不是优化胜利或OJ/no-reg证明。无新compiler/trace/profile复采。四NSA目录报告/脚本/原raw及hash闭环；submission目录为空且无伪造新header。Peer仅交流建议，不修改worker1计划/代码。所有已知ownedPID已终态，shared6hash不变。
