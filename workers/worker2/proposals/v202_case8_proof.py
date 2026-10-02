from pathlib import Path
import ast,json,hashlib,datetime,importlib.metadata
root=Path('/root/tilelang-metax');src=root/'race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py'
s=src.read_text();assert hashlib.sha256(s.encode()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0'
tree=ast.parse(s);n=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='_make_power_s1_case4_dense')
env={'__builtins__':{}}
for f in n.body:
 if isinstance(f,ast.FunctionDef) and f.name in ['qk_slot','out_slot','v_slot']:
  exec(compile(ast.Module(body=[f],type_ignores=[]),'parent_slot_only','exec'),env)
domains={}
for name in ['qk_slot','out_slot','v_slot']:
 values=[env[name](row,col) for row in range(16) for col in range(64)]
 assert len(set(values))==1024 and set(values)==set(range(1024))
 domains[name]={'points':1024,'min':min(values),'max':max(values),'bijection':True}
vector_records=[]
for group in [0,1]:
 offset=group*1024
 for name in ['qk_slot','out_slot']:
  for row in range(16):
   for col in range(0,64,4):
    p=env[name](row,col);touches=[offset+p+e for e in range(4)]
    assert touches==[offset+env[name](row,col+e) for e in range(4)]
    assert min(touches)>=offset and max(touches)<offset+1024 and (2*touches[0])%8==0
    vector_records.append({'group':group,'kind':name,'touches':touches})
 for col in range(64):
  for row in range(0,16,2):
   touches=[offset+env['v_slot'](row+e,col) for e in range(2)]
   assert touches[1]==touches[0]+1 and (2*touches[0])%4==0
   assert min(touches)>=offset and max(touches)<offset+1024
   vector_records.append({'group':group,'kind':'v_producer4B','touches':touches})
# All possible fragment4half V loads; originalv_slot(row,col) is contiguous along row4.
for group in [0,1]:
 offset=group*1024
 for col in range(64):
  for row in range(0,16,4):
   touches=[offset+env['v_slot'](row+e,col) for e in range(4)]
   assert touches==list(range(touches[0],touches[0]+4)) and (2*touches[0])%8==0
   assert min(touches)>=offset and max(touches)<offset+1024
   vector_records.append({'group':group,'kind':'v_consumer8B','touches':touches})
tokens={(pair*2+group):(pair,group) for pair in range(2048) for group in range(2)}
assert set(tokens)==set(range(4096))
lane_roles=[{'thread':tid,'group':tid//64,'lane':tid%64} for tid in range(128)]
for tid in range(128):
 for delta in [16,32]:
  src_lane=(tid%64)^delta
  src_tid=(tid//64)*64+src_lane
  assert src_tid//64==tid//64
pointset={(group,tid%16,chunk*16+(tid//16)*4+e) for group in range(2) for tid in range(64) for chunk in range(4) for e in range(4)}
assert len(pointset)==2048 and pointset=={(g,h,d) for g in range(2) for h in range(16) for d in range(64)}
cases=json.loads((root/'race_tests/nsa/official_case.json').read_text());case=cases[7];assert [case[k] for k in ['B','SEQ_LEN','H','HQ','D','S','block_size','is_causal']]==[2,4096,1,16,64,1,16,True]
libs={}
for p in (root/'build/lib').glob('*.so'):libs[p.name]=hashlib.file_digest(p.open('rb'),'sha256').hexdigest()
record={'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'kind':'proposal_math_only_no_kernel_edit_compile_attention_native','source_commit':'189ab5f4d56af37f558732c2dc0241aeb47e5b22','parent_source_sha256':hashlib.sha256(s.encode()).hexdigest(),'shape':case,'software':{'torch':importlib.metadata.version('torch'),'MACA_expected':'3.7.1.5','prebuilt_libraries':libs},'slot_domains':domains,'shared_partition_half_ranges':[[0,1024],[1024,2048]],'scalar_partition_disjoint':True,'vector_touch_records':len(vector_records),'all_actual_pack_touches_inside_partition':True,'vector_relative_alignment':{'qk_output_Vconsumer_bytes':8,'Vproducer_bytes':4},'token_pair_map':{'queries_per_batch':4096,'pair_ctas_per_batch':2048,'last_pair_tokens':[4094,4095],'bijection':True,'inverse':'pair=token//2;group=token%2'},'lane_roles':lane_roles,'shuffle_xor16_32_preserves_query_group_width64':True,'output_points_per_cta':2048,'full_global_output_elements_factorized':8388608,'output_payload_bytes':16777216,'cta_count':[8192,4096],'dispatched_waves_expected':[8192,8192],'native_or_gpu_runs':0,'hypothesis_not_approved':True}
Path('/root/cowork/workers/worker2/proposals/v202_case8_vector_touches.json').write_text(json.dumps(vector_records,indent=2)+'\n')
out=Path('/root/cowork/workers/worker2/proposals/v202_case8_two_query_cta_proof.json');out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(record,indent=2)+'\n')
print('PROPOSAL_PROOF',json.dumps({k:v for k,v in record.items() if k not in ['lane_roles','software']},indent=2))
