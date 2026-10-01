#!/bin/bash
set -u
cd /root/tilelang-metax
id=v080_codex_power_s1_d64_dispatch_sc-16g-2
r=race_tests/nsa/rep/$id
h=race_tests/nsa/hack/$id
while [ ! -f "$r/archive_recovery.exit" ];do
 if ! kill -0 171290 2>/dev/null;then echo 1 > "$r/evidence_after_recovery.exit";exit 1;fi
 sleep 2
done
if [ "$(cat "$r/archive_recovery.exit")" != 0 ];then echo 1 > "$r/evidence_after_recovery.exit";exit 1;fi
bash "$h/run_mcprof.sh" > "$r/profile_stage.log" 2>&1 &
profile_pid=$!;echo "$profile_pid" > "$r/profile.pid"
/opt/conda/bin/python "$h/sample_mx_smi.py" "$profile_pid" > "$r/mx_smi_sampler.log" 2>&1 &
sampler_pid=$!
wait "$profile_pid";profile_code=$?;wait "$sampler_pid";sampler_code=$?
echo "$profile_code" > "$r/profile_stage.exit";echo "$sampler_code" > "$r/mx_smi_sampler.exit"
/opt/conda/bin/python "$h/analyze_profile.py" > "$r/profile_analysis.log" 2>&1
code=$?;echo "$code" > "$r/profile_analysis.exit"
if [ "$code" != 0 ];then echo "$code" > "$r/evidence_after_recovery.exit";exit "$code";fi
/opt/conda/bin/python "$h/capture_resources.py" > "$r/resources_stage.log" 2>&1
code=$?;echo "$code" > "$r/resources.exit";echo "$code" > "$r/evidence_after_recovery.exit";exit "$code"
