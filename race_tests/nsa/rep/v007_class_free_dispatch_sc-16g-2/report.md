# v007 无 class 定义的分流候选

OJ 对 v005/v006 的实际错误是 `Class definitions are not allowed in user code`，出现在 `triton_sandbox` 加载源码时；此前两版没有进入 OJ 数值校验。v007 把顶层 `_ManualMacaQK` 改为普通辅助函数，保持 v006 的分流条件和 QK/PV 算法。根目录原始 `submission.py` 未修改。

- v006 源码 SHA-256：`cf19f92faf1f4474c4b0053f4c251495d277ca3019c404b8597087df288794a6`。
- v007 源码 SHA-256：`2c1033a8cfd5dd071946004b71a24fd8b002302cda461c55807e65d9e849f2be`。
- AST 检查：没有 `ClassDef`；OJ 静态源码检查和全部 14 份生成设备源码检查通过。
- 官方本地 14 case：第一次因容器达到 32 GiB 主机内存限额被 OOM kill（退出 137），未产生正确性结果；监测内存后重跑，14/14 PASS，warmup 10、repeat 50，平均 0.0823 ms。首次中断不能算数值失败。
- 生成代码：与 v006 相比，12 个官方形状的 host/device 源码逐字相同；case 11、12 的 host 源码相同，device 源码仅交换了 max/sum 归约 shared 暂存偏移，QK/PV 指令路径相同。

完整候选仅在 `submission/v007_class_free_dispatch_sc-16g-2/submission.py`。`generated_code.tar.gz` SHA-256 为 `c8a251a28bf9d942f4b1c13c898af9d29509d38521caebb4cf70d95ae18b0e82`。本版本没有提交到在线 OJ；用户随后指出已通过的 `AC.txt` 在 `run_kernel` 内部定义类，因此下一版将尝试该结构。暂停时的边界输入探针未完成，不作为 v007 正确性证据。
