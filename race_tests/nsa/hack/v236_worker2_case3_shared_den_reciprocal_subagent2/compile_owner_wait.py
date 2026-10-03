from pathlib import Path
import json,os,subprocess,time
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v236_worker2_case3_shared_den_reciprocal_subagent2';h=root/'race_tests/nsa/hack/v236_worker2_case3_shared_den_reciprocal_subagent2'
def info(pid):
 p=Path('/proc')/str(pid);f=(p/'stat').read_text().rsplit(') ',1)[1].split();return {'pid':pid,'ppid':int(f[1]),'pgid':int(f[2]),'starttime_ticks':int(f[19]),'exe':os.readlink(p/'exe')}
owner=info(os.getpid());rows=[]
for name,argv in [('metadata',['/opt/conda/bin/python','-S',str(h/'run_bounded_once.py'),'metadata']),('generated_geometry',['/opt/conda/bin/python','-S',str(h/'generated_geometry_gate.py')]),('backend',['/opt/conda/bin/python','-S',str(h/'run_bounded_once.py'),'backend']),('semantic_normalization',['/opt/conda/bin/python','-S',str(h/'audit_compiled_normalization.py')])]:
 with (r/(name+'_owner.log')).open('w') as log:
  p=subprocess.Popen(argv,cwd=root,stdout=log,stderr=subprocess.STDOUT,start_new_session=True);d=info(p.pid);record={'owner':owner,'stage':name,'argv':argv,'identity':d,'originalPopen_held':True};(r/(name+'_originalPopen_handle.json')).write_text(json.dumps(record,indent=2)+'\n');print('COMPILE_ORIGINAL_HANDLE',json.dumps(record),flush=True)
  while True:
   try:code=p.wait(timeout=30);break
   except subprocess.TimeoutExpired:
    q=r/(name+'_observation/live_stage.json');print('SAME_COMPILE_HANDLE',name,q.read_text() if q.exists() else 'running',flush=True)
 record['actualwait']=code;rows.append(record);(r/(name+'_originalPopen_wait.json')).write_text(json.dumps(record,indent=2)+'\n');(r/'compile_chain_results.json').write_text(json.dumps(rows,indent=2)+'\n');print('COMPILE_STAGE_ACTUALWAIT',name,code,flush=True)
 if code!=0:break
chaincode=0 if len(rows)==4 and all(x['actualwait']==0 for x in rows) else 1
(r/'compile_chain.exit').write_text(str(chaincode)+'\n')
raise SystemExit(chaincode)
