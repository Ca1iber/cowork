# v004: fresh re-profile after three failed S8 tile/warp versions

Starting branch: codex-power, parent commit 78177bee1. Kernel source remains the exact historical ffa68b684e3876df2821fe34c9959493c2ca065a:race_tests/nsa/submission.py, SHA-256 462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1. Machine: sc-16g-2 / C500 16G sGPU.

Trigger: v001, v002 and v003 failed to beat the baseline on case12 despite correct outputs, and larger/more parallel tiles exposed higher fragment/shared/synchronization costs. AKO4ALL requires a fresh incumbent profile and a different evidence-supported family after three unsuccessful versions.

Measure: capture a fresh environment and clock snapshot; rerun exact project-native reference and warmup10/repeat50 timing for case6 and case12; mcTracer both kernels; mcProfiler case6; synchronized physical HBM case6; compare against v000. Select the next target from end-to-end time and observed resource/traffic data. Do not edit the kernel or claim improvement in this re-profile version.
