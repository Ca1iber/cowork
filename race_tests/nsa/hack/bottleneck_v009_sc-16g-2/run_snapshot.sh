#!/bin/bash
set -u
cd /root/tilelang-metax || exit 1
out=race_tests/nsa/rep/bottleneck_v009_sc-16g-2
date -u > "$out/snapshot_utc.txt"
git rev-parse HEAD > "$out/git_head.txt"
git branch --show-current > "$out/git_branch.txt"
sha256sum race_tests/nsa/submission/v009_nested_metaclass_sc-16g-2/submission.py race_tests/nsa/official_case.json race_tests/nsa/test_tilelang_nsa_fwd.py > "$out/input_sha256.txt"
for args in "--summary" "--show-hwinfo" "--show-memory" "--show-clock" "--show-hbm-bandwidth" "--show-ap-usage" "sgpu --show-mode" "sgpu --show-sched-class" "sgpu --show-timeslice" "sgpu --show-remain"; do
    tag=$(printf '%s' "$args" | tr ' -' '__')
    mx-smi $args -i 0 > "$out/mxsmi_$tag.txt" 2>&1 || true
done
(cd /opt/mcProfiler-ubuntu18.04 && mcProfiler version) > "$out/mcprofiler_version.txt" 2>&1
