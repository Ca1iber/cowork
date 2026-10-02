# v081 scripts on sc-16g-2

Branch codex-power-v28-base; start f1c0f5fe6. Original v28 is a black-box control; only independently written own76/77/79 helpers were inspected. Container files edited directly with Python/shell.

- build_candidate.py: exact original prefix/entry AST and own helpers; widen only S8 assertion. Full staged source in /tmp; experiments hold helper, hypothesis, registry, patch.
- prove_s24_domain.py: S2/S4 coordinate bounds, shared bijections, online denominator identity; not native correctness.
- run_case.py, run_target_screen.sh, analyze_targets.py: full naive_nsa, official seed/shapes/tolerance, W10R50 unchanged. B-I-C-C-I-B twice, 4 candidate refs per target. Initial wrapper path error before reference kept in rep.
- relocate_target_codegen.py: move completed target CPP files only; preserve device SHA, captured and archived paths. New phases use separate codegen directories.
- run_formal_all14.sh, analyze_formal_all14.py: 14 process-isolated original case bodies, 4 refs/source/case; 42 generated-device validations. Exact unchanged bodies do not waive time regressions.
- run_risk.sh, analyze_risk.py: select EVERY positive formal delta versus either control; one fixed confirmation, all samples retained.
- cold_import.py, run_cold_imports.sh: one independent process per source after native work; source exec time, process RuMaxRSS, compiled/lazy entry counts. Zero attention/ref calls. Does not prove memory stability.
- run_archive_native.sh: exact archived SHA with existing run_variant NSA_CASES mode, native full14. Merged and per-case CSV files count once.
- run_mcprof.sh, analyze_profile.py: case11 counts2/source, existing warm10+20 profiling driver; independent of native. Check 1024 waves and 2MiB writes; raw achieved waves are not occupancy.
- sample_mx_smi.py: read-only profile-period runtime summaries, not per-kernel throughput/occupancy.
- capture_resources.py: parent/candidate for cases10/11, four actual formal device sources, mxcc resource/ELF/host dynamicshared. Static maxwarps is not measured occupancy.
- run_post_formal.sh: live formal gate, then sequential risk, cold imports, archived native, profiler, resource; no concurrent GPU/compilation workload during native timing.

Submission is self-contained with three allowed imports, no async copy, foreign source, manual general builtins, torch computation or input/result cache. Main remains original v28. External OJ scores pending.
