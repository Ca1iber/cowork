# v013: promote the best validated independent NSA kernel

Parent: ea2ec21d6 on codex-power; user's starting commit: ffa68b684e3876df2821fe34c9959493c2ca065a. This is packaging and final verification, not a new optimization experiment.

Evidence: v010 is the best local OJ-ready source. It passes the exact naive_nsa reference on all 14 official cases and 56/56 paired comparisons; only case12 code changed from v007 and only case6 code changed from the original ffa path in v007. Case6 full 14-case median improved from 220.618 to 159.747 us; case12 from v007 123.589 to v010 116.459 us. v011 and v012 were falsified and remain archived separately.

Decision: copy exact v010 submission source to race_tests/nsa/submission.py, then verify source SHA, exact imports, all 14 official cases and generated-code rules for the actual root file. Preserve the original ffa source in v000 artifacts. External OJ cannot be inferred from local results and will be reported as pending.

Submission annotation: both the root file and v013 archive now begin with `# codex-power v013`; the rest is the exact measured v010 source. This is a comment-only change.
