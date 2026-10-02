import ast,re,itertools
from pathlib import Path

def expressions(line,tag):
 result=[];offset=0
 while True:
  i=line.find(tag,offset)
  if i<0:break
  pos=i+len(tag)
  while line[pos].isspace():pos+=1
  if line[pos]=='[':begin=pos+1;end=line.index(']',begin);expr=line[begin:end]
  else:
   assert line[pos]=='+';pos+=1
   while line[pos].isspace():pos+=1
   assert line[pos]=='(';begin=pos;depth=0;end=pos
   while end<len(line):
    depth+=(line[end]=='(')-(line[end]==')');end+=1
    if depth==0:break
   expr=line[begin:end]
  result.append(expr);offset=end
 return result

def touches(expr,tids,width,loops):
 expr=expr.replace('((int)threadIdx.x)','tid').replace('(int)threadIdx.x','tid').replace('/','//');tree=ast.parse(expr,mode='eval');allowed=(ast.Expression,ast.BinOp,ast.UnaryOp,ast.Name,ast.Load,ast.Constant,ast.Add,ast.Sub,ast.Mult,ast.FloorDiv,ast.Mod,ast.BitAnd,ast.BitOr,ast.BitXor,ast.LShift,ast.RShift,ast.USub,ast.UAdd)
 assert all(isinstance(x,allowed) for x in ast.walk(tree));names=sorted({x.id for x in ast.walk(tree) if isinstance(x,ast.Name)}-{'tid'});assert all(x in loops for x in names),names;code=compile(tree,'actual_shared_affine','eval');out=set()
 for tid in tids:
  for values in itertools.product(*(range(loops[x]) for x in names)):
   val=eval(code,{'__builtins__':{}},dict(zip(names,values),tid=tid));assert isinstance(val,int);out.update(range(val,val+width))
 return out

def audit_actual_shared(cpp,actual_bytes):
 s=Path(cpp).read_text();loops={n:int(k) for n,k in re.findall(r'for \(int (\w+) = 0; \1 < (\d+); \+\+\1\)',s)};sets={k:set() for k in ['MaxW','MaxR','DenW','DenR','NumW','NumR','Half']};sites=[]
 for lineno,line in enumerate(s.splitlines(),1):
  floats=expressions(line,'((float*)buf_dyn_shmem)') if '((float*)buf_dyn_shmem)' in line else []
  if floats:
   if '= maximum[0];' in line:kind='MaxW';tids=[x for x in range(128) if (x%64)<16];width=1
   elif 'maximum[0] = max(' in line:kind='MaxR';tids=range(128);width=1
   elif '= denominator[0];' in line:kind='DenW';tids=[x for x in range(128) if (x%64)<16];width=1
   elif 'denominator[0] = ' in line:kind='DenR';tids=range(64);width=1
   elif '= *(float4*)(numerator' in line:kind='NumW';tids=range(64,128);width=4
   elif 'float4 v__' in line:kind='NumR';tids=range(64);width=4
   else:raise AssertionError(('unrecognized F32shared site',lineno,line))
   for expr in floats:sets[kind].update(touches(expr,tids,width,loops))
   sites.append({'line':lineno,'kind':kind,'expressions':floats,'vector_float_width':width})
  if '((half_t*)buf_dyn_shmem)' in line:
   width=8 if '*(uint4*)' in line else 4 if '*(uint2*)' in line else 2 if '*(uint*)' in line else 1
   for expr in expressions(line,'((half_t*)buf_dyn_shmem)'):sets['Half'].update(touches(expr,range(128),width,loops))
 assert len(sets['MaxW'])==len(sets['DenW'])==32 and sets['MaxR']==sets['MaxW'] and sets['DenR']==sets['DenW']
 assert not sets['MaxW']&sets['DenW'];assert len(sets['NumW'])==1024 and sets['NumR']==sets['NumW'];assert not sets['NumW']&(sets['MaxW']|sets['DenW'])
 fbytes={4*x+b for x in sets['MaxW']|sets['DenW']|sets['NumW'] for b in range(4)};hbytes={2*x+b for x in sets['Half'] for b in range(2)};assert len(sets['Half'])==3072 and not fbytes&hbytes;assert min(fbytes|hbytes)>=0 and max(fbytes|hbytes)<actual_bytes
 return {'actual_exported_CPP_affine_addresses':True,'Max_Den_Num_KV_disjoint_fullvectors':True,'actual_hostshared_bytes':actual_bytes,'ranges':{k:{'min_index':min(v),'max_index':max(v),'unique_elements':len(v)} for k,v in sets.items()},'actual_F32shared_sites':sites,'not_runtime_or_numerical_proof':True}
