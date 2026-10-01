# v068 scripts

Sources: original v28 from git 39ff49e7b:race_tests/nsa/submission.py, own v064 S8 helper, own v060 S1 helper. Shared official_case.json, reference.py and v000 native runner are referenced by path/hash; no copied benchmark bodies.

- build_candidate.py: creates self-contained /tmp/nsa_power_v068_proven_bounds.py with original v28 prefix and code-object cache. C6 helper unchanged from v060; only C12 denominator reduction placement changes.
- prove_deferred_denominator.py: exact-real induction, lane group and numerical risk diagnostics. Simulation is not native correctness.
- prove_bounds.py: unchanged official access bounds.
- export_codegen.py / run_codegen.sh: selected C12 source and host metadata export.
- run_stage.sh / run_llvm.sh: static OJ validator, resources, optimized LLVM, native selected screen. Initial auto-unrolled debugging evidence is preserved separately; final normal TileLang factor1 annotations keep the runtime loop.
- run_pair_case12.py / run_pair_stage.sh: full native naive_nsa, W10/R50, four variants, 16 checks.
- run_pair_all14.py / run_all14_stage.sh: native three-variant B-I-C-C-I-B x2 for all 14 official cases, 168 checks. No garbage-collection, allocator or timing changes.
- analyze_results.py / analyze_all14.py: retain all observations, report medians/ranges without waiving regressions.
- export_all14.py / run_export_all14.sh: metadata/source only, after native jobs finish. No executed attention or correctness claim.
- run_mcprof.sh / analyze_profile.py: separate instrumented C12 captures, counts2, candidate/v064/original v28. Require waves and output-write footprint consistency before comparing counters.
- sample_mx_smi.py: concurrent read-only summary samples for the profile job. Raw achieved waves are not occupancy; static max warps are not achieved occupancy.

No external OJ submission is performed. Main race_tests/nsa/submission.py remains original v28.

- run_pair_risk.py / run_risk_stage.sh / analyze_risk.py: one prespecified full-reference confirmation of off-case2/4/8/9/11/14. Positive observations remain regression risks; no repeated screening.
- analyze_codegen_all14.py: verifies all fallback CPP byte identities and strict source validation against 28 generated CPP files. Source identity does not waive timing/OJ requirements.
- run_archive_native.sh: full14 native checks from exact archived candidate SHA, W10/R50; no reduced reference.
- run_final_evidence.sh: strict sequential native-completed guard -> source export -> profile -> archived full14.
- close_version.py: gated archive checks, SHA inventory and exact scoped staging only; commit is separate.
