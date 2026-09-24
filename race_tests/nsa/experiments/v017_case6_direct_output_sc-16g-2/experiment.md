# v017 case6 输出直写路径
起点：本地 v016，v009 仍是 OJ 已接受版。v016 将 case6 shared 无冲突比例提高到 92.45%，但 case6 仅快约 3.35%；生成代码仍有 output_acc→output_shared→Output 的 shared 往返和最终同步。
假设：BS32 下直接从 output_acc fragment 写全局 Output，或先 cast 到 half fragment 再写，可移除最终 shared 读写和同步，缩短剩余 kernel 时间。
机制：仅替换 BS32 输出路径，其余形状保持 v016；比较 direct fragment copy、half fragment copy、逐元素 T.Parallel store。QK/PV/softmax 及输入语义不变。
预测：输出 shared 往返和至少一处同步从 case6 设备代码消失，原测试入口正确，case6 时间低于 v016。
证伪：编译或数值失败；global store 变窄/不合并，导致耗时上升；设备代码无预期变化。
风险：fragment 布局与全局张量布局不兼容，编译失败；直接 store 失去 v016 的 coalesced uint4 写入。
