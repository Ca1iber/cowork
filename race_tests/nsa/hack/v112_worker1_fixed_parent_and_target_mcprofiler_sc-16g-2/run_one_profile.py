from pathlib import Path
import json,sys,subprocess,hashlib,os,datetime,shutil
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v112_worker1_fixed_parent_and_target_mcprofiler_sc-16g-2');plan=json.loads((r/'execution_plan.json').read_text());assert plan['phase']=='leader_GO_fixed3_profiler_once';m=json.loads((r/'source_manifest.json').read_text());job=plan['jobs'][int(sys.argv[1])-1]
for x in list(m['sources'].values())+list(m['tools'].values()):assert Path(x['path']).is_file() and hashlib.sha256(Path(x['path']).read_bytes()).hexdigest()==x['sha256']
d=Path(job['output_dir']);d.mkdir(exist_ok=False);(d/'raw').mkdir();(d/'actual_command.json').write_text(json.dumps(job,indent=2)+chr(10));logpath=d/'mcprofiler.log'
with logpath.open('w') as log:
 p=subprocess.Popen(job['profiler_command'],cwd=job['cwd'],stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True);(d/'SDK.pid').write_text(str(p.pid)+chr(10));(d/'SDK.pgid').write_text(str(os.getpgid(p.pid))+chr(10))
 for line in p.stdout:log.write(line);log.flush();print(line,end='',flush=True)
 code=p.wait()
(d/'SDK_actual.exit').write_text(str(code)+chr(10));raw=logpath.read_text(errors='replace');paths=[line.partition('[info] output path is: ')[2].strip() for line in raw.splitlines() if line.startswith('[info] output path is: ')];report=Path(paths[-1]) if paths else None
if report and (report/'report.txt.json').is_file():shutil.copytree(report,d/'report_bundle')
result={'UTC':datetime.datetime.now(datetime.timezone.utc).isoformat(),'SDK_pid':p.pid,'actual_CLI_waitcode':code,'report_original_dir':str(report) if report else None,'fullreference_checks':0};(d/'SDK_wait_result.json').write_text(json.dumps(result,indent=2)+chr(10));assert code==0 and 'killed' not in raw.lower() and 'out of memory' not in raw.lower();assert (d/'report_bundle/report.txt.json').is_file();print('FIXED_PROFILE_CLI_ACTUAL0',job['index'],flush=True)

from counter_audit import audit_job
audit=audit_job(job);print("COUNTER_AUDIT",job["index"],audit["complete"],audit["errors"],flush=True);raise SystemExit(0 if audit["complete"] else 1)
