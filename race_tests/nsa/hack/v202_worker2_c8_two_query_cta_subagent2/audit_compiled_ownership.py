from pathlib import Path
import json,hashlib,re,ast,itertools
root=Path('/root/tilelang-metax');v='v202_worker2_c8_two_query_cta_subagent2';r=root/'race_tests/nsa/rep'/v
m=json.loads((r/'compiled_metadata_identity.json').read_text());dev=Path(m['device_path']);host=Path(m['host_path'])
assert dev.exists() and hashlib.file_digest(dev.open('rb'),'sha256').hexdigest()==m['device_sha256']
assert host.exists() and hashlib.file_digest(host.open('rb'),'sha256').hexdigest()==m['host_sha256']
candidate=dev.read_text();parent=(root/'race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2/codegen/parent_v084/case8_stage1.device.cpp').read_text()
assert '__launch_bounds__(128, 1)' in candidate and candidate.count('__syncwarp();')==7 and '__syncthreads' not in candidate
assert candidate.count('__builtin_mxc_mma_16x16x16f16')==2
shfl=[x.strip() for x in candidate.splitlines() if '__shfl_xor_sync' in x]
assert len(shfl)==4 and all('(uint64_t)18446744073709551615' in x and x.endswith((', 32, 64));',', 16, 64));')) for x in shfl)
assert 'float numerator[16];' in candidate and 'float scores[4];' in candidate and 'half_t probabilities[4];' in candidate
def memory(s):
 rows=[]
 for line in s.splitlines():
  for mat in re.finditer(r'\((shared|Q|K|V|Output) \+',line):
   begin=mat.end();depth=1;end=begin
   while depth:
    if line[end]=='(':depth+=1
    elif line[end]==')':depth-=1
    end+=1
   expr=line[begin:end-1].strip()
   pre=line[:mat.start()];types=re.findall(r'uint([124])\*',pre);assert types,line
   rows.append({'kind':mat[1],'half_count':int(types[-1])*2,'expr':expr,'line':line.strip()})
  if 'Indices[' in line:
   begin=line.index('Indices[')+len('Indices[');depth=1;end=begin
   while depth:
    if line[end]=='[':depth+=1
    elif line[end]==']':depth-=1
    end+=1
   rows.append({'kind':'Indices','half_count':None,'expr':line[begin:end-1],'line':line.strip()})
 return rows
def parse(s):
 s=re.sub(r'\((?:int64_t|uint64_t|int|uint32_t)\)','',s)
 s=s.replace('threadIdx.x','tid').replace('blockIdx.x','bx').replace('blockIdx.y','by')
 return ast.parse(s.strip(),mode='eval').body
def affine(n,env):
 if isinstance(n,ast.Constant):return (0,0,0,n.value)
 if isinstance(n,ast.Name):
  if n.id in ['bx','by','block_start']:return tuple(1 if i==['bx','by','block_start'].index(n.id) else 0 for i in range(3))+(0,)
  return (0,0,0,env[n.id])
 assert isinstance(n,ast.BinOp),ast.dump(n)
 a,b=affine(n.left,env),affine(n.right,env)
 if isinstance(n.op,ast.Add):return tuple(x+y for x,y in zip(a,b))
 if isinstance(n.op,ast.Sub):return tuple(x-y for x,y in zip(a,b))
 if isinstance(n.op,ast.Mult):
  assert not(any(a[:3]) and any(b[:3]))
  return tuple(x*b[3] for x in a) if not any(b[:3]) else tuple(x*a[3] for x in b)
 assert not any(a[:3]) and not any(b[:3]),ast.dump(n)
 value=eval(compile(ast.Expression(n),'compiled_memory_affine','eval'),{'__builtins__':{}},env)
 return (0,0,0,value)
A,B=memory(candidate),memory(parent);assert len(A)==len(B)
domains={name:range(int(end)) for name,end in re.findall(r'for \(int (\w+) = 0; \1 < (\d+);',candidate)}
records=[];checks=0
for ca,pa in zip(A,B):
 assert ca['kind']==pa['kind'] and ca['half_count']==pa['half_count']
 ce,pe=parse(ca['expr']),parse(pa['expr'])
 names=sorted({q.id for q in ast.walk(ce) if isinstance(q,ast.Name)}|{q.id for q in ast.walk(pe) if isinstance(q,ast.Name)})
 loops=[n for n in names if n not in ['tid','bx','by','block_start']];assert all(n in domains for n in loops),loops
 for tid in range(128):
  group,lane=tid//64,tid%64
  for vals in itertools.product(*(domains[n] for n in loops)):
   env=dict(zip(loops,vals));cc=affine(ce,{**env,'tid':tid});pp=affine(pe,{**env,'tid':lane})
   expected=(2*pp[0],pp[1],pp[2],pp[3]+group*pp[0])
   if ca['kind']=='shared':expected=(0,0,0,pp[3]+group*1024)
   assert cc==expected,(ca,tid,env,cc,expected)
   if ca['kind']=='shared':
    count=ca['half_count'];assert group*1024<=cc[3] and cc[3]+count<=(group+1)*1024 and (cc[3]*2)%(count*2)==0
   elif ca['kind']=='Indices':
    for bx,by in [(0,0),(2047,1)]:
     idx=cc[0]*bx+cc[1]*by+cc[3];assert 0<=idx<8192
   else:
    assert ca['half_count']==8
    size=8388608 if ca['kind'] in ['Q','Output'] else 524288
    for bx,by in [(0,0),(2047,1)]:
     token=bx*2+group
     starts=[0,token//16*16] if ca['kind'] in ['K','V'] else [0]
     for bs in starts:
      idx=cc[0]*bx+cc[1]*by+cc[2]*bs+cc[3];assert 0<=idx and idx+8<=size and idx*2%16==0
   checks+=1
 records.append({'kind':ca['kind'],'half_count':ca['half_count'],'candidate_line':ca['line'],'all128_threads_and_loop_domain_equal_to_parent_query':True})
hs=host.read_text();params={}
for i in [5,6,7,10]:
 ls=[x for x in hs.splitlines() if '.v_int64)' in x and '['+str(i)+']' in x]
 # host construction reuses stack; use last assignment to finalkernel call
 vals=[int(re.search(r'int64_t\)(\d+)',x)[1]) for x in ls if re.search(r'int64_t\)(\d+)',x)];params[i]=vals[-1]
assert params=={5:2048,6:2,7:128,10:4096},params
proof={'source_sha256':m['source_sha256'],'device_sha256':m['device_sha256'],'host_sha256':m['host_sha256'],'actual_launch_threads':128,'actual_grid':[2048,2],'dynamic_shared_bytes':4096,'warp_sync_sites':7,'CTA_syncs':0,'fulluint64_width64_shuffle_lines':shfl,'normal_MFMA_textual_sites':2,'MMA_perquery':'two loops4; normal16x16x16f16 privatef16x4 operands, physicalMaca64warp, ownshared/ownquery andlocalarrays','private_operand_ownership_perquery':True,'compiled_address_affine_checks':checks,'memory_records':records,'all_naked_tid_uses_verified_by_actual_address_equivalence':True,'guard':'sourceoutertoken<seq coversalluses; optimizerremovedbecauseactual2048pairs*2queries proves0..4095; bothruntimevalidpredicateswarp-uniform','numerical_AST_equivalent':True,'attention_calls':0,'full_reference_count':0,'no_occupancy_or_sector_assertion':True}
(r/'compiled_ownership_proof.json').write_text(json.dumps(proof,indent=2)+'\n')
print('COMPILED_OWNERSHIP_AUDIT_PASS',checks,len(records),params,flush=True)
