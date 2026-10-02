from pathlib import Path
import json,hashlib,re
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v119_worker1_existing_C6_codegen_lifetime_diagnostic_sc-16g-2');m=json.loads((r/'diagnostic_source_manifest.json').read_text());p=json.loads((r/'diagnostic_execution_plan.json').read_text());ir=Path(p['existing_IR_argv'][-2])
assert (r/'SDK/IR_actual.exit').read_text().strip()=='0';record=json.loads((r/'SDK/IR_identity.json').read_text());assert hashlib.sha256(ir.read_bytes()).hexdigest()==record['sha256']
cpp=Path(m['existing_inputs']['existing_candidate_CPP']['path']);assert hashlib.sha256(cpp.read_bytes()).hexdigest()==m['existing_inputs']['existing_candidate_CPP']['sha256']
text=ir.read_text();raw_lines=text.splitlines();entries=[i for i,line in enumerate(raw_lines) if line.startswith('define ') and '@native_sparse_attention_kernel(' in line];assert len(entries)==1
start=entries[0];end=next(i for i in range(start+1,len(raw_lines)) if raw_lines[i].strip()=='}');lines=raw_lines[start:end+1];line_offset=start;defs={};uses={};instructions=[];block=None
for n,line in enumerate(lines,line_offset+1):
 if re.match(r'^[-a-zA-Z$._0-9]+:',line):block=line.split(':')[0]
 a=re.match(r'^\s*(%[-a-zA-Z$._0-9]+)\s*=\s*(.*)',line)
 refs=re.findall(r'%[-a-zA-Z$._0-9]+',a[2] if a else line)
 if a:defs[a[1]]={'line':n,'block':block,'text':line,'operand_refs':refs}
 for ref in refs:uses.setdefault(ref,[]).append(n)
 if re.search(r'\b(load|store|phi|br|call|alloca|getelementptr)\b',line):instructions.append({'line':n,'block':block,'text':line,'operand_refs':refs})
selected=[x for x in instructions if any(t in x['text'] for t in ['@llvm.mxc.mma.f32.16x16x16f16','addrspace(3)','sync','barrier'])]
needed=set(ref for item in selected for ref in item['operand_refs']);pending=list(needed)
while pending:
 ref=pending.pop()
 for dep in defs.get(ref,{}).get('operand_refs',[]):
  if dep not in needed:needed.add(dep);pending.append(dep)
ssa=[dict(value=ref,**defs[ref],use_lines=uses.get(ref,[]),textual_last_use=max(uses.get(ref,[defs[ref]['line']]))) for ref in sorted(needed) if ref in defs]
cpp_events=[{'line':n,'text':line} for n,line in enumerate(cpp.read_text().splitlines(),1) if any(t in line for t in ['__syncwarp','v_operand','numerator','shared_local_cast','for (int plane','for (int key_tile','if (plane'])]
alloc=[{'line':n,'text':line} for n,line in enumerate(lines,line_offset+1) if re.search(r'^\s*%[^=]+\s*=\s*alloca\b',line)];private=[{'line':n,'text':line} for n,line in enumerate(lines,line_offset+1) if 'addrspace(5)' in line]
summary={'IR':record,'CPP_SHA':m['existing_inputs']['existing_candidate_CPP']['sha256'],'existing_resource_90MT24ST_max5':json.loads(Path(m['existing_inputs']['existing_resource_result']['path']).read_text()),'old118_gate1_retained':Path(m['existing_inputs']['old_resource_gate_exit']['path']).read_text().strip()=='1','static_MMA_calls':sum('call' in l and '@llvm.mxc.mma.f32.16x16x16f16' in l for l in lines),'alloca_opcode_lines':alloc,'AS5_lines':private,'selected_IR_events':len(selected),'SSA_dependency_definitions':len(ssa),'manual_V0_lower_Numclear_V1_finalgather_mapping':'PENDING actual CPP/IR review; full IR retained. Text order/last-use not CFG liveness or final allocator evidence.','ISA_register_mapping':'UNAVAILABLE; SDKobjdump absent','no_native_or_correctness_or_occupancy_claim':True,'NSA_attention_calls':0,'fullrefs':0}
for name,data in [('IR_selected_events.json',selected),('IR_SSA_dependency_observation.json',ssa),('CPP_phase_events.json',cpp_events),('IR_observation_summary.json',summary)]:
 (r/name).write_text(json.dumps(data,indent=2)+chr(10))
(r/'IR_observation.exit').write_text('0'+chr(10));print('CPU_IR_OBSERVATION',summary['static_MMA_calls'],len(ssa),flush=True)
