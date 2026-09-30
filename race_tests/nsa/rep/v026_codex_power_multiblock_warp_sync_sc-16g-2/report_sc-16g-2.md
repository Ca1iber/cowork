# v026 显式 warp 同步 / sc-16g-2

## 1. 上版本遗留问题

v025 case11 为25.0855us，v28为23.962us；case12路径与v024相同，仍约100us。

## 2. 问题原因分析

#
CTA barrier，softmax统计量为寄存器，AllReduce<64,16>实例使用shuffle。单个64线程warp可以使用完整warp同步；这是假设，不等于已测到barrier stall主导。

## 3. 本版本解决方案

.20260922032734.db .20260924064155.db .agents .clang-format .editorconfig .git .git_commit.txt .gitattributes .github .gitignore .gitmodules .pre-commit-config.yaml .pymarkdown .pytest_cache .vscode 3rdparty CMakeLists.txt CODE_OF_CONDUCT.md CONTRIBUTING.md LICENSE README.md THIRDPARTYNOTICES.txt VERSION __pycache__ benchmark build cmake docker docs examples format.sh images maint profiler.log pyproject.toml race_tests requirements-dev.txt requirements-lint.txt requirements-test-cuda.txt requirements-test-maca.txt requirements-test-metal.txt requirements-test-rocm.txt requirements-test.txt requirements.txt src testing tilelang version_provider.py helper关闭自动thread-storage sync，明确插入shared读写边界的warp fence。

## 4. 具体落地策略

valid块三次warp fence；输出前后两次。K/V区间独立，block_start条件在64 lanes一致。原生参考、生成代码和LLVM warp barrier通过核验。S1 helper和run_kernel AST不变。65MT/32ST，零stack，staticMax7；旧70MT/28ST max7。

## 5. Benchmark 对比

warmup10/repeat50、ABCCBA、naive_nsa，18/18目标配对PASS，另三次screen通过。

|case|v28us|v025us|v026us|vs parent|vs v28|
|--:|--:|--:|--:|--:|--:|
|10|11.827|12.165|11.566|-4.92%|-2.21%|
|11|23.139|24.724|24.573|-0.61%|+6.20%|
|12|83.382|100.488|97.579|-2.89%|+17.03%|

case11/12仍慢于目标，未新跑全14/OJ，不声称最终无退化。

## 6. Profile 指标变化

cProfiler各两次：v026 MTE56.68-56.77%、MMA9.30-9.32%；v28 MTE62.94-62.98%、MMA11.10-11.11%。相对v023约54.9%/9.05%有小提升，物理流量约17.95MB不变；shared conflict仍1.67。新mcTracer20次中位94.208us，范围93.696-94.976us；65寄存器/4608B shared与编译报告一致。八秒sustain同步mx-smi HBM稳态中位179.699GB/s，原始AP usage已存档；这是kernel观测吞吐，不能当带宽屋顶。Roofline CSV区分请求/物理计数，compute roof未知；matplotlib/ISA工具不可用，未安装。

## 7. 实验总结

case10配对略快于v28，case12局部降低2.89%，但目标仍快17.03%；不推广。LLVM有old/current max缩放临时量，下一步存储缩放后的跨块max状态，验证能否降低寄存器压力；staticMax7不是已测occupancy。
