#!/bin/bash
set -u
cd /root/tilelang-metax
id=v082_codex_power_s1_d128_dense_sc-16g-2
r=race_tests/nsa/rep/$id
h=race_tests/nsa/hack/$id
while [ ! -f "$r/formal_all14.exit" ];do
 if ! kill -0 185837 2>/dev/null;then echo 'missingformalterminal' > "$r/post_formal_error.txt";echo 1 > "$r/post_formal.exit";exit 1;fi
 sleep 2
done
if [ "$(cat "$r/formal_all14.exit")" != 0 ];then echo 1 > "$r/post_formal.exit";exit 1;fi
for stage in risk;do
 bash "$h/run_${stage}.sh" > "$r/${stage}_stage.log" 2>&1
 code=$?;echo "$code" > "$r/${stage}.exit"
 if [ "$code" != 0 ];then echo "$code" > "$r/post_formal.exit";exit "$code";fi
done
/opt/conda/bin/python - <<'ARCHIVE'
from pathlib import Path
import hashlib,subprocess
p=Path('race_tests/nsa');v='v082_codex_power_s1_d128_dense_sc-16g-2';r=p/'rep'/v;s=p/'submission'/v;raw=Path('/tmp/nsa_power_v082_d128_dense.py').read_bytes();assert hashlib.sha256(raw).hexdigest()=='6d8b91f405043ddc4e26e515a54e894cb5e64b1c5c2a5fb9cb8428148f204616';assert (r/'formal_static42.exit').read_text().strip()=='0';s.mkdir(exist_ok=True);(s/'submission.py').write_bytes(raw);(s/'submission.sha256').write_text(hashlib.sha256(raw).hexdigest()+'  submission.py\n');x=subprocess.run(['/opt/conda/bin/python',str(p/'hack/validate_oj_submission.py'),str(s/'submission.py')],capture_output=True,text=True);(s/'oj_import_validation.txt').write_text(x.stdout+x.stderr);assert x.returncode==0
ARCHIVE
code=$?;echo "$code" > "$r/archive_static.exit"
if [ "$code" != 0 ];then echo "$code" > "$r/post_formal.exit";exit "$code";fi
bash "$h/run_archive_native.sh" > "$r/archive_native_stage.log" 2>&1
code=$?;echo "$code" > "$r/archive_native_all14.exit"
if [ "$code" != 0 ];then echo "$code" > "$r/post_formal.exit";exit "$code";fi
bash "$h/run_mcprof.sh" > "$r/profile_stage.log" 2>&1 &
profile_pid=$!;echo "$profile_pid" > "$r/profile.pid"
/opt/conda/bin/python "$h/sample_mx_smi.py" "$profile_pid" > "$r/mx_smi_sampler.log" 2>&1 &
sampler_pid=$!
wait "$profile_pid";profile_code=$?;wait "$sampler_pid";sampler_code=$?
echo "$profile_code" > "$r/profile_stage.exit";echo "$sampler_code" > "$r/mx_smi_sampler.exit"
/opt/conda/bin/python "$h/analyze_profile.py" > "$r/profile_analysis.log" 2>&1
code=$?;echo "$code" > "$r/profile_analysis.exit"
if [ "$code" != 0 ];then echo "$code" > "$r/post_formal.exit";exit "$code";fi
/opt/conda/bin/python "$h/capture_resources.py" > "$r/resources_stage.log" 2>&1
code=$?;echo "$code" > "$r/resources.exit";echo "$code" > "$r/post_formal.exit";exit "$code"
