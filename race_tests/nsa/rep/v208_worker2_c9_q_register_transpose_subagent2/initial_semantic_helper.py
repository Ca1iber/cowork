from pathlib import Path
import json,re,ast,hashlib,functools
root=Path('/root/tilelang-metax');v='v208_worker2_c9_q_register_transpose_subagent2';r=root/'race_tests/nsa/rep'/v
records=json.loads((r/'compiled_metadata_identity.json').read_text());p=Path(records[1]['device_path']);cpp=p.read_text();ls=p.with_suffix('.ll').read_text().splitlines()
start=next(i for i,s in enumerate(ls) if s.startswith('define ') and '@native_sparse_attention_kernel(' in s);end=next(i for i in range(start,len(ls)) if ls[i]=='}');body=ls[start:end+1]
defs={}
for s in body:
 m=re.match(r'\s*(%[\w.]+) = (.*)',s)
 if m:defs[m[1]]=m[2].split(', !dbg')[0].split(' #10')[0]
class Bits(tuple):pass
class Vector(tuple):pass
rawnames=[q for q in defs if q.startswith('%q_local.') and 'copyload' in q and defs[q].startswith('load <4 x half>')];assert len(rawnames)==4
rawnames.sort(key=lambda q:next(i for i,s in enumerate(ls) if s.lstrip().startswith(q+' =')))
def bitsop(op,a,b,width):
 if not isinstance(a,Bits) and not isinstance(b,Bits):
  if op=='and':return a&b
  if op=='or':return a|b
  if op=='xor':return a^b
  if op=='add':return a+b
  if op=='shl':return a<<b
  if op=='lshr':return (a%(1<<width))>>b
 def asbits(x):return x if isinstance(x,Bits) else Bits((x>>i)&1 for i in range(width))
 if op in ['shl','lshr']:
  x=asbits(a);return Bits(([0]*b+list(x))[:width] if op=='shl' else (list(x)[b:]+[0]*b)[:width])
 x,y=asbits(a),asbits(b);out=[]
 for xa,xb in zip(x,y):
  if op=='and':
   if xa==0 or xb==0:out.append(0)
   elif xa==1:out.append(xb)
   elif xb==1 or xa==xb:out.append(xa)
   else:raise AssertionError(('nonlinearand',xa,xb))
  elif op=='or':
   if xa==0:out.append(xb)
   elif xb==0 or xa==xb:out.append(xa)
   else:raise AssertionError(('overlappingor',xa,xb))
  else:raise AssertionError(('symbolicunsupported',op))
 return Bits(out)
@functools.lru_cache(None)
def value(name,lane):
 if not name.startswith('%'):return int(name)
 if name in rawnames:
  chunk=rawnames.index(name);return Vector(Bits((lane%16,(lane//16)*16+chunk*4+e,bit) for bit in range(16)) for e in range(4))
 s=defs[name]
 if '@llvm.mxc.thread.id.x' in s:return lane
 if '@llvm.mxc.block.id.x' in s:return 0
 if '@llvm.mxc.mbcnt.lo' in s:
  assert '(i32 -1, i32 0)' in s;return min(lane,32)
 if '@llvm.mxc.mbcnt.hi' in s:return lane
 m=re.search(r'@llvm.mxc.bsm.bpermute\(i32 (%[\w.]+), i32 (%[\w.]+)\)',s)
 if m:
  address=value(m[1],lane);assert address%4==0 and 0<=address//4<64
  return value(m[2],address//4)
 m=re.match(r'(and|or|xor|shl|lshr|add)(?: (?:disjoint|nuw|nsw))* i(\d+) (%[\w.]+|-?\d+), (%[\w.]+|-?\d+)',s)
 if m:return bitsop(m[1],value(m[3],lane),value(m[4],lane),int(m[2]))
 m=re.match(r'icmp (eq|ne|ult|slt) i\d+ (%[\w.]+|-?\d+), (%[\w.]+|-?\d+)',s)
 if m:
  a,b=value(m[2],lane),value(m[3],lane);return a==b if m[1]=='eq' else a!=b if m[1]=='ne' else a<b
 m=re.match(r'select i1 (%[\w.]+), (?:i\d+|half) (%[\w.]+|-?\d+), (?:i\d+|half) (%[\w.]+|-?\d+)',s)
 if m:return value(m[2] if value(m[1],lane) else m[3],lane)
 m=re.match(r'(trunc|zext)(?: (?:nuw|nsw|nneg))* i(\d+) (%[\w.]+) to i(\d+)',s)
 if m:
  a=value(m[3],lane);width=int(m[4])
  return Bits((list(a)+[0]*width)[:width]) if isinstance(a,Bits) else a%(1<<width)
 m=re.match(r'bitcast (.+?) (%[\w.]+) to (.+)',s)
 if m:
  a=value(m[2],lane);flat=Bits(x for q in a for x in q) if isinstance(a,Vector) else a;target=m[3]
  if target.startswith('<'):
   z=re.match(r'<(\d+) x (half|i\d+)>',target);assert z;w=16 if z[2]=='half' else int(z[2][1:]);return Vector(Bits(flat[i*w:(i+1)*w]) for i in range(int(z[1])))
  assert target.startswith('i');return flat
 m=re.match(r'extractelement <\d+ x i\d+> (%[\w.]+), i\d+ (\d+)',s)
 if m:return value(m[1],lane)[int(m[2])]
 m=re.match(r'insertelement <(\d+) x i\d+> (%[\w.]+|poison), i\d+ (%[\w.]+), i\d+ (\d+)',s)
 if m:
  a=[None]*int(m[1]) if m[2]=='poison' else list(value(m[2],lane));a[int(m[4])]=value(m[3],lane);return Vector(a)
 raise AssertionError(('unsupportedactualIR',name,s))
qmma=[s for s in body if 'call contract' in s and '@llvm.mxc.mma.f32.16x16x16f16' in s][:4]
qnames=[]
for s in qmma:
 names=re.findall(r'<4 x half> (%[\w.]+)',s);assert len(names)==2;qnames.append(names[1])
for lane in range(64):
 for chunk,q in enumerate(qnames):
  got=value(q,lane);want=Vector(Bits((lane%16,chunk*16+(lane//16)*4+e,bit) for bit in range(16)) for e in range(4));assert got==want,(lane,chunk)
allb=[i+1 for i,s in enumerate(ls) if 'call noundef i32 @llvm.mxc.bsm.bpermute' in s]
branch=next(i+1 for i,s in enumerate(ls) if 'br i1' in s)
qb=[i for i in allb if i<branch];assert len(qb)==8 and len(allb)==12
name=r'(%[\w.]+)';addressproof=[]
for i in qb:
 m=re.search(r'@llvm\.mxc\.bsm\.bpermute\(i32 '+name+r', i32 '+name+r'\)',ls[i-1]);assert m;addr,word=m.groups()
 m=re.match(r'shl i32 '+name+r', 2',defs[addr]);assert m;cond=m[1]
 m=re.match(r'select i1 '+name+r', i32 '+name+r', i32 '+name,defs[cond]);assert m;cmp,xor,lanevar=m.groups()
 m=re.match(r'xor i32 '+re.escape(lanevar)+r', (16|32)',defs[xor]);assert m;delta=int(m[1])
 m=re.match(r'icmp slt i32 '+re.escape(xor)+r', '+name,defs[cmp]);assert m;bound=m[1]
 m=re.match(r'add nsw i32 '+name+r', 64',defs[bound]);assert m;basevar=m[1]
 assert re.match(r'and i32 '+re.escape(lanevar)+r', -64',defs[basevar])
 m=re.search(r'@llvm\.mxc\.mbcnt\.hi\(i32 -1, i32 '+name+r'\)',defs[lanevar]);assert m;lowvar=m[1];assert '@llvm.mxc.mbcnt.lo(i32 -1, i32 0)' in defs[lowvar]
 addressproof.append({'IR_line':i,'xor':delta,'full_lo_hi_mask':[-1,-1],'width64_defuse':True})
assert [q['xor'] for q in addressproof]==[16]*4+[32]*4
assert not any('alloca ' in s or 'addrspace(5)' in s for s in body)
phase=ls[start:branch-1];assert not any(s.strip().startswith('br ') or 'fptoui' in s or 'fptosi' in s or 'addrspace(3)' in s for s in phase)
assert 'float numerator[16];' in cpp and cpp.count('__syncwarp();')==6
output=[]
for d in records:
 cp=Path(d['device_path']);ct=cp.read_text();it=cp.with_suffix('.ll').read_text();mmas=it.count('call contract <4 x float> @llvm.mxc.mma.f32.16x16x16f16');assert mmas==8
 globals={name:next(s.strip() for s in ct.splitlines() if '*(uint4*)' in s and name+' +' in s) for name in ['Q','K','V','Output']}
 launch=[]
 for slot in range(5,11):
  ms=re.findall(r'\['+str(slot)+r'\]\.v_int64\) = \(\(int64_t\)(\d+)\)',Path(d['host_path']).read_text());assert ms;launch.append(int(ms[-1]))
 assert launch==[8192,1,64,1,1,2048]
 res=(r/(d['variant']+'_resource.log')).read_text();mt,st,ss=re.search(r'Used\s+(\d+) MTregisters,\s*(\d+) STregisters,\s*(\d+) bytes shared mem',res).groups();stack=int(re.search(r'(\d+) bytes stack frame',res)[1]);mx=int(re.search(r'staticMaxWarps/PEU\s*:\s*(\d+)',res)[1]);assert stack==0 and mx>=8
 assert hashlib.sha256(Path(d['source_path']).read_bytes()).hexdigest()==d['source_sha256']
 output.append({'variant':d['variant'],'MT':int(mt),'ST':int(st),'staticmax':mx,'not_actual_occupancy':True,'stack':stack,'dynamic_shared_bytes':2048,'launch':launch,'global_CPP_uint4_expr':globals,'warp_sync_count':ct.count('__syncwarp();'),'IR_MMA_count':mmas,'IR_SHA':hashlib.sha256(it.encode()).hexdigest(),'sourceSHA':d['source_sha256']})
assert output[0]['warp_sync_count']==7 and output[1]['warp_sync_count']==6
for k in ['K','V','Output']:assert output[0]['global_CPP_uint4_expr'][k]==output[1]['global_CPP_uint4_expr'][k]
qline=output[1]['global_CPP_uint4_expr']['Q'];expr=re.search(r'\*\(uint4\*\)\(Q \+ (.*)\);',qline)[1].replace('((int)threadIdx.x)','lane').replace('((int)blockIdx.x)','token')
a=ast.parse(expr,mode='eval');assert not any(isinstance(q,(ast.Call,ast.Attribute,ast.Subscript)) for q in ast.walk(a));assert {q.id for q in ast.walk(a) if isinstance(q,ast.Name)}=={'lane','token','part'}
for token in [0,8191]:
 seen=[]
 for lane in range(64):
  for part in range(2):
   pos=eval(compile(a,str(p),'eval'),{'__builtins__':{}},{'lane':lane,'token':token,'part':part});assert pos==token*1024+(lane%16)*64+(lane//16)*16+part*8 and pos%8==0;seen+=list(range(pos,pos+8))
 assert sorted(seen)==list(range(token*1024,(token+1)*1024))
summary={'status':'SEMANTIC_GATES0_PENDING_LEADER_NATIVE_REVIEW','resource_rows':output,'actual_new_Qstage_bpermutes':8,'original_max_den_bpermutes':4,'total_kernel_bpermutes':12,'Qstage_address_defuse':addressproof,'actual_QK_operand_symbolic_bits_verified':16384,'QK_operand_SSA':qnames,'actual_ir_bit_mapping_all1024_Q_values_original':True,'Qshared_stage_absent_before_firstKsync':True,'globalQ_new2uint4_perlane_formula_alignment_coverage_proved':True,'KVOutput_globalperlane_CPP_expr_identical':True,'Num16_8MMA_and_remaining6warpsync':True,'no_FPnumeric_transport_or_private_spill':True,'coalescing_models_not_actual_transactions':True,'final_ISA_width_and_runtime_performance':'UNAVAILABLE_no_native_or_decoder','attention_reference_native':[0,0,0],'no_auto_native':True}
(r/'metadata_mechanism_gate_semantic.json').write_text(json.dumps(summary,indent=2)+'\n');(r/'resource_ir_summary_semantic.json').write_text(json.dumps(output,indent=2)+'\n');print('QactualIR16384bits/1024values gate0;42MT20ST->44MT26ST;stack0/max8;0attention/ref/native')
