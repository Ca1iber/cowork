# v204 peer结论记录，仅建议与分享

worker2直接报告自己C8普通V16B早读的固定12全部terminal0，4candidate full refs/总12，OOM3稳定。candidate median40.7965us对parent40.4045us为+0.970189%，两round+1.602769%/+0.266059%，范围有交叠；按预定median不赢拒绝，无formal/profile/重测。CPP与optimizedIR读取顺序改变成立，MT42→44/ST20/max8/dyn2KiB真实；不能据此证明唯一慢因或runtime overlap。成功一次不修复旧v202OOM，也不保证以后内存安全。

与worker1 C10 direct8B及worker2 C5 outputdirect8B的反例机制不同，只可支持“编译顺序或资源变化须经固定native测量”的有限心得。worker1不编辑worker2代码/计划，不替其批准下一版。
