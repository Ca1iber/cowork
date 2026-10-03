from pathlib import Path
import json,hashlib,re
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v136_worker1_c12_max4x8_balanced_sc-16g-2');m=json.loads((r/'compile_source_manifest.json').read_text());ir=r/'SDK/candidate136.ll';x=next(x for x in json.loads((r/'metadata_pair.json').read_text())['records'] if x['variant']=='candidate136');dev=Path(x['device_path']);assert hashlib.sha256(dev.read_bytes()).hexdigest()==x['device_SHA'];res=json.loads((r/'SDK/resource_result.json').read_text());assert (r/'SDK/IR_actual.exit').read_text().strip()=='0';lines=ir.read_text().splitlines();entries=[i for i,l in enumerate(lines) if l.startswith('define ') and '@native_sparse_attention_kernel(' in l];assert len(entries)==1;start=entries[0];end=next(i for i in range(start+1,len(lines)) if lines[i].strip()=='}');body=lines[start:end+1]
MMA=[{'line':i,'text':l} for i,l in enumerate(body,start+1) if 'call' in l and '@llvm.mxc.mma.f32.16x16x16f16' in l];alloc=[{'line':i,'text':l} for i,l in enumerate(body,start+1) if re.search(r'^\s*%[^=]+\s*=\s*alloca\b',l)];private=[{'line':i,'text':l} for i,l in enumerate(body,start+1) if 'addrspace(5)' in l];events=[{'line':i,'text':l} for i,l in enumerate(body,start+1) if any(t in l for t in ['addrspace(3)','mma.f32','barrier','phi ','br i1','fptrunc','fdiv'])];cpp=[{'line':i,'text':l} for i,l in enumerate(dev.read_text().splitlines(),1) if any(t in l for t in ['__syncthreads','__syncwarp','partial_maximum','partial_denominator','partial_numerator','probabilities','numerator','warp_id','kv_offset'])]
ok=len(MMA)==64 and not alloc and not private and res['stack']==0 and res['dynamicshared']==next(y['actual_launchargs'][-1] for y in json.loads((r/'device_shape_static_result.json').read_text())['checks'] if y['variant']=='candidate136')
out={'resource':res,'IR_SHA':hashlib.sha256(ir.read_bytes()).hexdigest(),'actual_static_MMA_count':len(MMA),'MMA_call_lines':MMA,'fullvalid_dynamic_model':'singlewarp64MMA source model; recordactualIRcall/loops, notruntimecount','alloca_opcode_lines':alloc,'AS5_lines':private,'mechanical_gate':ok,'actual_math_sync_lifetime_review':'PENDING leader review of actual CPP/IR samecurrentparentScore32max4x8/-infseed/rawvalid/hasvalid/2maxshuffle/P32roundeddenPV/Num16/mathsync;actualmaxDAG/flags/Indicesloads pendingreview; no automaticnative','no_physical_liveness_occupancy_or_latency_claim':True,'fullrefs':0}
defs={};maxops={};pointer_names={'%Indices.coerce','%Indices'}
for i,l in enumerate(body,start+1):
 match=re.match(r'\s*(%[A-Za-z0-9_.$-]+)\s*=\s*(.*)',l)
 if match:
  rhs=match[2];refs=re.findall(r'%[A-Za-z0-9_.$-]+',rhs);defs[match[1]]={'line':i,'text':l,'refs':refs}
  if any(t in rhs for t in ['getelementptr','bitcast ptr','addrspacecast']) and any(x in pointer_names for x in refs):pointer_names.add(match[1])
  if 'call' in rhs and any(t in rhs for t in ['@llvm.maxnum.','@llvm.maximum.','@llvm.maximumnum.','@fmax']):maxops[match[1]]={'line':i,'text':l,'flags':[x for x in ['fast','nnan','ninf','nsz','reassoc','arcp','afn','contract'] if re.search(r'\b'+x+r'\b',rhs)]}
indexloads=[{'line':i,'text':l} for i,l in enumerate(body,start+1) if 'load i32,' in l and any(re.search(re.escape(x)+r'(?![A-Za-z0-9_.])',l) for x in pointer_names)]
memo={};cycles=[]
def maxdepth(name,trail):
 if name in memo:return memo[name]
 if name in trail:cycles.append(name);return 0
 node=defs.get(name)
 if not node:return 0
 value=(1 if name in maxops else 0)+max([maxdepth(x,trail|{name}) for x in node['refs']] or [0]);memo[name]=value;return value
for name in maxops:maxdepth(name,set())
maxrecord={'max_call_sites':len(maxops),'nodes':{k:dict(x,max_only_SSA_depth=memo[k]) for k,x in maxops.items()},'longest_max_only_SSA_depth_including_original_warp2':max([memo[x] for x in maxops] or [0]),'cycle_names':sorted(set(cycles)),'indices_global_i32_load_sites':len(indexloads),'Indices_pointer_SSA_addresses':sorted(pointer_names),'index_loads':indexloads,'vector_intrinsic_is_one_IR_call_not_scalarISA_count':True,'counts_depth_resources_not_preset_decrease_or_latencygate':True,'ISA_cycles_HBM_occupancy':'NOT_MEASURED'}
out['actual_max_Indices_DAG']=maxrecord;out['original_nan_empty_Pround_math_review']='PENDING actualflags/rootreview, source-onlyrationale notdevicepass';(r/'compiled_max_Indices_DAG.json').write_text(json.dumps(maxrecord,indent=2)+chr(10))
for name,data in [('compiled_observation_result.json',out),('compiled_IR_events.json',events),('compiled_CPP_events.json',cpp)]:
 (r/name).write_text(json.dumps(data,indent=2)+chr(10))
(r/'compiled_observation.exit').write_text(str(0 if ok else 1)+chr(10));print('COMPILED_MECHANICAL_OBSERVATION',ok,len(MMA),res,flush=True);raise SystemExit(0 if ok else 1)
