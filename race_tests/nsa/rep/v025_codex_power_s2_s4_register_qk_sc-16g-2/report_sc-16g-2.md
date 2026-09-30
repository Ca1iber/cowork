# v025 S2/S4 寄存器 QK / sc-16g-2

## 1. 上版本遗留问题

v024 case10/11/12仍慢于v28。case11 为28.053us，v28为23.445us。

## 2. 问题原因分析

generic每个selected块重读Q的shared操作数；S8路径缓存16个half Q寄存器。寄存器压力是主要风险。

## 3. 本版本解决方案

.20260922032734.db .20260924064155.db .agents .clang-format .editorconfig .git .git_commit.txt .gitattributes .github .gitignore .gitmodules .pre-commit-config.yaml .pymarkdown .pytest_cache .vscode 3rdparty CMakeLists.txt CODE_OF_CONDUCT.md CONTRIBUTING.md LICENSE README.md THIRDPARTYNOTICES.txt VERSION __pycache__ benchmark build cmake docker docs examples format.sh images maint profiler.log pyproject.toml race_tests requirements-dev.txt requirements-lint.txt requirements-test-cuda.txt requirements-test-maca.txt requirements-test-metal.txt requirements-test-rocm.txt requirements-test.txt requirements.txt src testing tilelang version_provider.py -QK路径到S2/S4，保留S8和S1原路径。

## 4. 具体落地策略

_make_multiblock_register_qk支持S2/4/8，run_kernel按相同D64/BS16/G16分发。case12生成代码字节相同。无异步或外部代码，精确三imports和版本注释。

## 5. Benchmark 对比

warmup10/repeat50，naive_nsa，ABCCBA；目标配对12/12 PASS，加两次screen PASS。

|case|v28us|v024us|v025us|vs parent|vs v28|
|--:|--:|--:|--:|--:|--:|
|10|12.396|12.643|12.913|+2.13%|+4.17%|
|11|23.962|28.475|25.085|-11.90%|+4.69%|

.20260922032734.db .20260924064155.db .agents .clang-format .editorconfig .git .git_commit.txt .gitattributes .github .gitignore .gitmodules .pre-commit-config.yaml .pymarkdown .pytest_cache .vscode 3rdparty CMakeLists.txt CODE_OF_CONDUCT.md CONTRIBUTING.md LICENSE README.md THIRDPARTYNOTICES.txt VERSION __pycache__ benchmark build cmake docker docs examples format.sh images maint profiler.log pyproject.toml race_tests requirements-dev.txt requirements-lint.txt requirements-test-cuda.txt requirements-test-maca.txt requirements-test-metal.txt requirements-test-rocm.txt requirements-test.txt requirements.txt src testing tilelang version_provider.py 14及OJ；不声称全量无退化。

## 6. Profile 指标变化

case11 compiler：v02460MT/26ST，v02570MT/26ST；零stack，staticMaxWarps8降7。这是静态资源上界。Q寄存器复用消除逐块Q LDS，S4约12%局部收益，S2反而约2%退化。未新采mcProfiler/mcTracer/Roofline，因为目标配对仍失败；case12引用v023/v024字节相同的profile。ISA不可用。

## 7. 实验总结

S4改善，S2退化，最终门禁失败，没有替换提交稿。下一步测试单64线程warp的显式同步，生成代码中四个CTA barrier/selected块以及最终输出barrier需要分辨真实数据依赖。
