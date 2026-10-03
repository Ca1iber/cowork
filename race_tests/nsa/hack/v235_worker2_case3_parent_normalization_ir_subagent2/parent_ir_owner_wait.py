from pathlib import Path
import json,subprocess,hashlib
import bounded_utils as U
from parent_ir_export_once import preflight
root=U.root;r=U.r;h=U.h
m=json.loads((r/'parent_ir_launch_manifest.json').read_text())
for q in m['fixed_inputs']:assert hashlib.sha256(Path(q['path']).read_bytes()).hexdigest()==q['sha256']
proof=preflight()[1]
with (r/'parent_IR_owner_once.guard').open('x') as f:f.write(proof.__repr__())
rows=[];owner=U.info(__import__('os').getpid())
for stage,argv in [('backend',['/opt/conda/bin/python','-S','-u',str(h/'run_bounded_once.py'),'backend']),('scoped_stats',['/opt/conda/bin/python','-S',str(h/'audit_parent_normalization_ir.py')])]:
 with (r/(stage+'_owner.log')).open('wb') as log:
  p=subprocess.Popen(argv,cwd=root,stdout=log,stderr=subprocess.STDOUT,start_new_session=True);record={'stage':stage,'owner_identity':owner,'identity':U.info(p.pid),'argv':argv,'originalPopen':True};(r/(stage+'_originalPopen_handle.json')).write_text(json.dumps(record,indent=2)+'\n');print('PARENT_IR_ORIGINAL_HANDLE',json.dumps(record),flush=True)
  while True:
   try:code=p.wait(timeout=30);break
   except subprocess.TimeoutExpired:print('PARENT_IR_SAME_HANDLE',stage,p.pid,flush=True)
 record['actualwait']=code;rows.append(record);(r/(stage+'_originalPopen_wait.json')).write_text(json.dumps(record,indent=2)+'\n');(r/'parent_IR_chain_results.json').write_text(json.dumps(rows,indent=2)+'\n');print('PARENT_IR_STAGE_WAIT',stage,code,flush=True)
 if code!=0:break
chaincode=0 if len(rows)==2 and all(x['actualwait']==0 for x in rows) else 1
(r/'parent_IR_chain.exit').write_text(str(chaincode)+'\n');raise SystemExit(chaincode)
