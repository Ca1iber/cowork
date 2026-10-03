from pathlib import Path
import json,re,hashlib,collections
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v235_worker2_case3_parent_normalization_ir_subagent2'
m=json.loads((r/'parent_ir_command_manifest.json').read_text());o=json.loads((r/'backend_observation/result.json').read_text());w=json.loads((r/'parent_C3_IR_SDK_original_wait.json').read_text());assert o['gate']==0 and o['actualwait']==0 and w['actualwait']==0
p=Path(m['output']);data=p.read_bytes();assert data and hashlib.sha256(data).hexdigest()==w['output_SHA'];text=data.decode();heads=[x for x in re.finditer(r'^define .*$',text,re.M) if '@native_sparse_attention_kernel(' in x.group()];assert len(heads)==1
start=heads[0].start();end=text.index('\n}',start)+2;body=text[start:end];offset=text[:start].count('\n')+1
fdiv=[];rcp=[];groups=collections.Counter();flags=collections.Counter();fpops=collections.Counter()
for i,line in enumerate(body.splitlines(),offset):
 q=re.search(r'=\s*(fdiv|fmul|fadd|fsub)\b',line)
 if q:fpops[q[1]]+=1
 if re.search(r'=\s*fdiv\s',line):
  match=re.search(r'=\s*fdiv\s+((?:\w+\s+)*)float\s+([^,]+),\s*([^,!]+)',line);rec={'line':i,'instruction':line.strip(),'scalar_parse_available':bool(match)}
  if match:
   rec.update(flags=match[1].split(),numerator=match[2].strip(),denominator=match[3].strip());groups[rec['denominator']]+=1;flags.update(rec['flags'])
  fdiv.append(rec)
 if re.search(r'\bcall\b',line) and re.search(r'@(.*?(?:rcp|recip).*?)\(',line,re.I):rcp.append({'line':i,'instruction':line.strip()})
result={'gate':0,'scope':'exact existing parent C3 kernel optimized LLVM representation only; no finalISA cost or speed inference','input_CPP_SHA':m['input_CPP_SHA'],'IR_SHA':hashlib.sha256(data).hexdigest(),'kernel_header':heads[0].group(),'kernel_floating_opcode_counts':dict(fpops),'fdiv_count':len(fdiv),'fdiv':fdiv,'common_denominator_groups':dict(groups),'fdiv_flags_counts':dict(flags),'rcp_or_recip_named_call_count':len(rcp),'rcp_or_recip_named_calls':rcp,'flags_from_stock_command':m['common_semantic_flags'],'finalISA_shared_rcp':'UNAVAILABLE','new_candidate_source_attention_fullrefs_native_profile':[0,0,0,0,0],'instruction_count_is_not_bottleneck':True}
(r/'parent_C3_normalization_IR_stats.json').write_text(json.dumps(result,indent=2)+'\n');(r/'parent_C3_normalization_IR_stats.exit').write_text('0\n');print(json.dumps({k:result[k] for k in ['gate','IR_SHA','fdiv_count','common_denominator_groups','fdiv_flags_counts','rcp_or_recip_named_call_count','finalISA_shared_rcp']}),flush=True)
