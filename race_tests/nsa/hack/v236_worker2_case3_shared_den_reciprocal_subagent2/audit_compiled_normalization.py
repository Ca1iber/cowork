from pathlib import Path
import json,re,hashlib,collections
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v236_worker2_case3_shared_den_reciprocal_subagent2';assert json.loads((r/'backend_observation/result.json').read_text())['gate']==0
records=json.loads((r/'backend_commands_results.json').read_text());assert len(records)==2 and all(x['actualwait']==0 for x in records)
parent,candidate=json.loads((r/'compiled_metadata_identity.json').read_text());cpp=Path(candidate['device_path']);ir=cpp.with_suffix('.ll');text=ir.read_text();heads=[x for x in re.finditer(r'^define .*$',text,re.M) if '@native_sparse_attention_kernel(' in x.group()];assert len(heads)==1;start=heads[0].start();end=text.index('\n}',start)+2;body=text[start:end];offset=text[:start].count('\n')+1
fdiv=[];rcp=[];muls=[]
for i,line in enumerate(body.splitlines(),offset):
 q=re.search(r'^\s*(%[-A-Za-z0-9_.]+)\s*=\s*fdiv\s+((?:\w+\s+)*)float\s+([^,]+),\s*([^,!]+)',line)
 if q:fdiv.append({'line':i,'SSA':q[1],'flags':q[2].split(),'numerator':q[3].strip(),'denominator':q[4].strip(),'instruction':line.strip()})
 q=re.search(r'^\s*(%[-A-Za-z0-9_.]+)\s*=.*\bcall\b.*\bfloat\s+@[^ (]*(?:rcp|recip)[^ (]*\(',line,re.I)
 if q:rcp.append({'line':i,'SSA':q[1],'instruction':line.strip()})
 q=re.search(r'^\s*(%[-A-Za-z0-9_.]+)\s*=\s*fmul\s+((?:\w+\s+)*)float\s+([^,]+),\s*([^,!]+)',line)
 if q:muls.append({'line':i,'SSA':q[1],'flags':q[2].split(),'operands':[q[3].strip(),q[4].strip()],'instruction':line.strip()})
recip=[x for x in fdiv if x['numerator'] in ['1.000000e+00','1.0','0x3FF0000000000000']]+rcp;assert len(recip)==1 and len(fdiv)+len(rcp)==1,'reciprocal_not_one_FP32_operation';shared=recip[0]['SSA'];norm=[x for x in muls if shared in x['operands']];assert len(norm)==32,'Num32_does_not_consume_shared_reciprocal'
alloca=re.findall(r'^\s*%[-A-Za-z0-9_.]+\s*=\s*alloca\b',body,re.M);private=re.findall(r'addrspace\(5\)',body);assert not alloca and not private
mma=[line for line in body.splitlines() if re.search(r'\bcall\b',line) and 'llvm.mxc.mma' in line];warps=[line for line in body.splitlines() if re.search(r'\bcall\b',line) and 'llvm.mxc.barrier.warp' in line];shfl=[line for line in body.splitlines() if re.search(r'\bcall\b',line) and 'llvm.mxc.bsm.bpermute' in line];assert len(mma)==16 and len(warps)==7 and len(shfl)==4
result={'gate':0,'sourceSHA':candidate['source_sha256'],'candidate_CPP_SHA':candidate['device_sha256'],'IR_SHA':hashlib.sha256(ir.read_bytes()).hexdigest(),'FP32_shared_reciprocal':recip,'Num32_output_multiply':norm,'output_multiply_flags':dict(collections.Counter(f for x in norm for f in x['flags'])),'Num32_actualCPP':bool(re.search(r'float numerator\[32\];',cpp.read_text())),'MMA':len(mma),'warp_sync':len(warps),'bpermute':len(shfl),'actual_alloca_AS5':[0,0],'outside_normalization_CPP_host_same':json.loads((r/'normalization_CPP_regions.json').read_text())['outside_byte_exact'],'finalISA_cost':'UNAVAILABLE','numeric_latency':'UNAVAILABLE_notrun','other13_devicecode':'UNAVAILABLE_notexported'};assert result['Num32_actualCPP'];(r/'metadata_normalization_semantic_gate.json').write_text(json.dumps(result,indent=2)+'\n');(r/'metadata_normalization_semantic_gate.exit').write_text('0\n');print(json.dumps({k:result[k] for k in ['gate','IR_SHA','MMA','warp_sync','bpermute','actual_alloca_AS5','numeric_latency']}),flush=True)
