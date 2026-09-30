# codex-power v000 exact historical baseline

Starting commit: ffa68b684e3876df2821fe34c9959493c2ca065a. Branch: codex-power. Target: sc-16g-2 / C500 16G sGPU. Source: race_tests/nsa/submission.py, SHA-256 462d505fe28efb0a0140feb1a1a4ca00df24b31d89f08beef2478c18685ca0b1.

The starting commit's test_tilelang_nsa_fwd.py does not invoke the submission entry, skips the reference on large cases, and uses warmup=3. Its official_case.json and reference.py have the same hashes as the later v28 branch, but the later project-native test runner invokes run_kernel, checks every official case against naive_nsa, and uses warmup=10/repeat=50. For trustworthy baseline measurements this experiment uses an exact copy of that v28 test runner in hack/, loaded by run_variant.py without editing its _run_one_case. The copy SHA-256 is 6ebdb82ab43a844a908aeb33c08e2b4a6cf2b7385a20f903f123875b53534568.

The historical baseline source uses `from tilelang import language as T`, which does not meet the user's final exact import spelling. Treat it as measurement-only; candidates must pass the user's three-import gate plus the AKO4ALL OJ static and generated-code gates.
