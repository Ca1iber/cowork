from pathlib import Path
import ast,json,hashlib,collections
root=Path('/root/tilelang-metax');v='v206_worker2_c5_v_shared4row_subagent2';r=root/'race_tests/nsa/rep'/v
src=root/'race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py'
assert hashlib.sha256(src.read_bytes()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0'
case=json.loads((root/'race_tests/nsa/official_case.json').read_text())[4];key=[case[k] for k in ['B','SEQ_LEN','H','HQ','D','S','block_size','is_causal']];assert key==[4,1024,1,16,64,1,16,True]
f=next(n for n in ast.parse(src.read_text()).body if isinstance(n,ast.FunctionDef) and n.name=='_make_power_s1_case4_dense');node=next(n for n in f.body if isinstance(n,ast.FunctionDef) and n.name=='v_slot');env={};exec(compile(ast.Module([node],[]),str(src),'exec'),env);slot=env['v_slot']
fetch=lambda lane,row,col:((lane//8)*2+row,(lane%8)*8+col)
records=[];new_shared=[];oldshared=[];word_packets=[]
for lane in range(64):
 half=(lane//8)%2;peer=lane^8;assert peer//16==lane//16 and peer^8==lane
 assert (peer//8)%2==1-half
 for row in range(2):
  for pair in range(2):
   sent=[fetch(lane,row,(1-half)*4+pair*2+e) for e in range(2)]
   recv=[fetch(peer,row,(1-(peer//8)%2)*4+pair*2+e) for e in range(2)]
   assert recv==[(((lane//16)*4+(1-half)*2+row),(lane%8)*8+half*4+pair*2+e) for e in range(2)]
   word_packets.append({'lane':lane,'peer':peer,'row':row,'pair':pair,'sent_coordinates':sent,'received_coordinates':recv})
 for col in range(4):
  vec=[];coords=[]
  for row in range(4):
   if row//2==half:coord=fetch(lane,row%2,half*4+col)
   else:coord=fetch(peer,row%2,(1-(peer//8)%2)*4+col)
   expected=((lane//16)*4+row,(lane%8)*8+half*4+col);assert coord==expected
   vec.append(slot(*coord));coords.append(coord);new_shared.append(slot(*coord))
  assert vec==list(range(vec[0],vec[0]+4)) and vec[0]%4==0 and all(0<=i<1024 for i in vec)
  records.append({'lane':lane,'colsite':col,'coordinates':coords,'shared_half_indices':vec,'vector_bytes':8})
 for col in range(8):
  vec=[slot(*fetch(lane,row,col)) for row in range(2)];assert vec==list(range(vec[0],vec[0]+2)) and vec[0]%2==0;oldshared+=vec
assert len(new_shared)==1024 and set(new_shared)==set(range(1024)) and len(set(new_shared))==1024
assert sorted(oldshared)==sorted(new_shared)
# Logical bank models only: no C500 bank count, issue subgroup, or phase schedule calibration.
bank=[]
for banks in [32,64]:
 for subgroup in [8,16,32,64]:
  for kind,sites,width in [('parent',8,1),('proposal',4,2)]:
   maxima=[]
   for site in range(sites):
    for phase in range(width):
     for start in range(0,64,subgroup):
      counts=collections.Counter()
      for lane in range(start,start+subgroup):
       if kind=='parent':row=(lane//8)*2;col=(lane%8)*8+site
       else:row=(lane//16)*4;col=(lane%8)*8+((lane//8)%2)*4+site
       word=slot(row,col)//2+phase;counts[word%banks]+=1
      maxima.append(max(counts.values()))
   bank.append({'hypothetical_banks':banks,'word_bytes':4,'hypothetical_issue_subgroup':subgroup,'kind':kind,'assumed_vector_word_phases':width,'max_logical_bank_multiplicity':max(maxima),'sum_maxima_all_sites_phases_subgroups':sum(maxima),'not_actual_bank_conflicts_or_latency':True})
patterns=[0,1,0x7fff,0x8000,0xffff,0x7c00,0xfc00,0x7e00]
for a in patterns:
 for b in patterns:
  word=a|(b<<16);assert word&0xffff==a and word>>16==b
api=[]
for path,needle in [('tilelang/language/builtin.py','def shfl_xor('),('3rdparty/tvm/python/tvm/tir/op.py','def reinterpret('),('3rdparty/tvm/python/tvm/script/ir_builder/tir/ir.py','reinterpret = _dtype_forward')]:
 p=root/path;ls=p.read_text().splitlines();idx=next(i for i,s in enumerate(ls) if needle in s);api.append({'path':path,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'line':idx+1,'excerpt':ls[idx:idx+23]})
summary={'official_case_number':5,'only_key':key,'parentSHA':hashlib.sha256(src.read_bytes()).hexdigest(),'expected_grid':[1024,4],'producer_global_fetch_design_unchanged_perlane':True,'ownership':'half=(lane//8)%2;peer=lane^8;rowquad=(lane//16)*4;colbase=(lane%8)*8+half*4','packed_exchange':'four uint32 shfl_xor(delta8,width64,fulluint64mask); each sends opposite column half2rows4cols','all_1024_shared_half_elements_exact_once':True,'new_vectors':256,'new_shared_vector_bytes':8,'parent_vectors':512,'parent_shared_vector_bytes':4,'same_shared_payload_bytes':2048,'coordinate_equality_proved1024':True,'all8B_vectors_contiguous4half_bounds_alignment':True,'bitpack_algebra':'a,b in uint16; w=uint32(a)|(uint32(b)<<16); low16=a/high16=b, reinterpreted FP16, not numeric cast','corner_bit_patterns_checked':len(patterns)**2,'max_valid_L1024_Vrow':max(b*16+15 for t in range(1024) for b in range(64) if b*16<=t),'guard':'same uniform0<=block_start<=token; all4shuffles executed bywholewarp insidevalid only','Num_float32_elements_kept':16,'MMA_math_QKPden_Vconsumer_output_design_unchanged':True,'wave64_lane^8_stays_samequery':True,'bank_models_uncalibrated':True,'candidate_created':False,'new_import_compile_attention_native':[0,0,0,0]}
for name,d in [('ownership_proof.json',summary),('shared_vector_touches.json',records),('shuffle_word_coordinates.json',word_packets),('bank_hypotheses.json',bank),('primary_API_sources.json',api)]:(r/name).write_text(json.dumps(d,indent=2)+'\n')
print(json.dumps(summary,indent=2));print('bankhypotheses',len(bank))
