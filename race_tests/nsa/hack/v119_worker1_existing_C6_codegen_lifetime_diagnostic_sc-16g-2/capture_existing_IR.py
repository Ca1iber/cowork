from pathlib import Path
import json,hashlib,subprocess,datetime,os
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v119_worker1_existing_C6_codegen_lifetime_diagnostic_sc-16g-2')
m=json.loads((r/'diagnostic_source_manifest.json').read_text());p=json.loads((r/'diagnostic_execution_plan.json').read_text())
assert p['phase']=='leader_GO_v119_existing_IR_once'
for label,x in m['existing_inputs'].items():
 f=Path(x['path']);assert f.is_file() and hashlib.sha256(f.read_bytes()).hexdigest()==x['sha256'],label
assert Path(m['existing_inputs']['old_resource_gate_exit']['path']).read_text().strip()=='1'
assert Path(m['existing_inputs']['existing_resource_actual_exit']['path']).read_text().strip()=='0'
res=json.loads(Path(m['existing_inputs']['existing_resource_result']['path']).read_text());assert res['MT']==90 and res['ST']==24 and res['staticmax']==5 and res['stack']==0
cmd=p['existing_IR_argv'];assert cmd[0]==m['tools']['compiler']['path'] and cmd[-1]==m['existing_inputs']['existing_candidate_CPP']['path']
assert hashlib.sha256(Path(cmd[0]).read_bytes()).hexdigest()==m['tools']['compiler']['sha256']
d=r/'SDK';d.mkdir(exist_ok=False);assert not Path(cmd[-2]).exists()
(r/'first_IR_command.json').write_text(json.dumps({'argv':cmd,'CPP_SHA':m['existing_inputs']['existing_candidate_CPP']['sha256'],'old118_resource_gate':1,'no_gate_repair':True,'NSA_attention_calls':0,'fullrefs':0},indent=2)+chr(10))
with (d/'IR.log').open('w') as log:
 child=subprocess.Popen(cmd,stdout=log,stderr=subprocess.STDOUT);(d/'IR.pid').write_text(str(child.pid)+chr(10));rc=child.wait()
(d/'IR_actual.exit').write_text(str(rc)+chr(10));(d/'IR_wait.json').write_text(json.dumps({'SDK_pid':child.pid,'original_Popen_wait':rc,'UTC':datetime.datetime.now(datetime.timezone.utc).isoformat()},indent=2)+chr(10))
assert rc==0 and Path(cmd[-2]).is_file()
(d/'IR_identity.json').write_text(json.dumps({'path':cmd[-2],'sha256':hashlib.sha256(Path(cmd[-2]).read_bytes()).hexdigest(),'bytes':Path(cmd[-2]).stat().st_size,'first_existing_CPP_IR':True,'old118_gate1_unchanged':True},indent=2)+chr(10))
print('FIRST_EXISTING_IR_WAIT',child.pid,rc,flush=True)
