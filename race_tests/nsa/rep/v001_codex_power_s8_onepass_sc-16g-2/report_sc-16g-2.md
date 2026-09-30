# codex-power v001：S8 128-token 单次 QK/PV 的失败筛选（sc-16g-2）

## 1. 起点和假设

父提交为 codex-power v000 基线 `eb4a08f9fff739138de3f15efc4a9e807b69ad18`，根内核仍是用户指定的 `ffa68b684e3876df2821fe34c9959493c2ca065a` 原始实现。case12（B4/N1024/H1/HQ16/D64/S8/BS16）原参考通过，官方 event 延迟 **124.155 µs**，mcTracer 设备中位 **120.576 µs**。起点源码按 8 个块串行执行 QK、online softmax 和 PV。假设把八块合成一个 128-token tile，减少重复归约和同步，会缩短设备时间；原先预测目标低于 100 µs，正确性、资源和计时为可证伪门槛。

## 2. 本版实现

仅对 S8/BS16/D64/G16 编译期形状使用独立函数：逐块把被选 K/V 放入连续 shared 区域，对无效块写零；一次 QK GEMM 后依原 causal 与 sentinel 规则掩码；对 128 列一次 softmax，再一次 PV GEMM 写输出。其余形状使用起点的原有计算路径。新源码从起点源码与本版 `onepass_function.txt` 直接构造，没有复制此前优化内核。候选 SHA-256 为 `99ae44c34ec1992e4fe81dce8bc7f9d096f286a47ea9edb5fac0fd50ef735254`。

## 3. 导入与正确性

候选文件恰好使用 `import tilelang`、`import tilelang.language as T`、`from tilelang.layout import make_swizzled_layout` 三条导入，无顶层 class。源码与目标形状生成设备 C++ 的 AKO4ALL 静态检查均通过。用原生 `_run_one_case` 的完整 `naive_nsa` 参考比较，case12 **PASS**；同一调用随后 warmup 10、repeat 50。源码和日志见 `experiments/` 与 `rep/`。

## 4. 性能筛选

| case12 入口 | 原参考 | 延迟 |
|---|---|---:|
| v000 原始串行基线 | PASS | 124.155 µs |
| v001 128-token 单次 QK/PV | PASS | 674.616 µs |

v001 慢 **5.43 倍**，与预测方向相反，已在项目原生目标形状测试中证伪。没有把此屏蔽测试当作全量官方或 OJ 成绩。

## 5. 生成代码与资源诊断

MXCC 资源报告：case12 的 MT/ST registers 从原始基线 **73/28** 增为 **109/56**，静态最大 warps/PEU 从 **6 降到 4**，两版都为 0B stack。v001 为每 CTA 分配约 36 KB Q/K/V/输出 shared；大 scores fragment 给每线程 32 个 FP32 score。生成设备 C++ 中 QK 仍有 4×8 的 MFMA 循环，PV 仍有 8×4 循环；把八块并成一个 TileLang `T.gemm` 调用没有消除底层矩阵指令工作。shared 载入仍按 8 个块的循环逐次执行，外加较大的寄存器占用与 128 列 softmax。单凭这些数据不能精确拆分 550 µs 回退，但资源和生成代码支持“大 tile 昂贵、未真正让八块数据读取同时执行”的诊断。

## 6. 未采集证据及限制

因为第一轮原生 case12 屏蔽测试已经比基线慢 443%，本版停止在可复验的性能失败处；全 14 项正式计时、mcTracer、mcProfiler、持续 HBM 和外部 OJ 都未采集，见 `UNAVAILABLE_FULL_PROFILE.md`。没有填写推测数值。当前工具链的 MXCC `-S` 不可用，后端 ISA 未验证。提交目录只保存 `UNAVAILABLE.md`，不会把这个失败候选作为 OJ 可提交结果。

## 7. 结论和下一步

**v001 作为失败实验封存，不修改根目录 `submission.py`。** case12 数值正确且导入合规，但大 tile 使目标延迟升为 5.43 倍。下一版若继续同一数学方向，应降低每 tile 的块数、控制 scores fragment 和 shared 生命周期，再检查生成代码的 MFMA 循环与资源；若仍无法减少设备时间，应换成不同的块并行分解。每个版本继续先写假设、全参考校验，再给出正式端到端结论。
