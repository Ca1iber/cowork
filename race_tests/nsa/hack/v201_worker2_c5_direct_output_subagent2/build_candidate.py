from pathlib import Path
import ast,hashlib,json,difflib
root=Path('/root/tilelang-metax');v='v201_worker2_c5_direct_output_subagent2'
r=root/'race_tests/nsa/rep'/v;x=root/'race_tests/nsa/experiments'/v
parent=root/'race_tests/nsa/submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py'
s=parent.read_text();assert hashlib.sha256(s.encode()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0'
tree=ast.parse(s);node=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='_make_power_s1_case4_dense')
lines=s.splitlines(keepends=True);start=min([node.lineno,*[n.lineno for n in node.decorator_list]])-1
helper=''.join(lines[start:node.end_lineno])
helper=helper.replace('_make_power_s1_case4_dense','_make_worker2_c5_direct_output',1)
unused='    def out_slot(row, col):\n        return row * 64 + ((col // 8) ^ (row % 8)) * 8 + (((col // 4) % 2) ^ ((row // 8) % 2)) * 4 + col % 4\n'
assert helper.count(unused)==1;helper=helper.replace(unused,'')
alloc='            output_fetch = T.alloc_local(8, dtype)\n';assert helper.count(alloc)==1;helper=helper.replace(alloc,'')
tailstart=helper.rindex('            T.sync_warp()\n            for chunk in T.unroll(4):')
assert 'shared[out_slot' in helper[tailstart:] and helper[tailstart:].count('T.sync_warp()')==2
newtail='''            for chunk in T.unroll(4):
                for element in T.vectorized(4):
                    Output[batch_id, token, kv_head * groups + lane % 16, chunk * 16 + (lane // 16) * 4 + element] = numerator[chunk * 4 + element]
    return native_sparse_attention
'''
helper=helper[:tailstart]+newtail
assert helper.count('T.sync_warp()')==5 and 'output_fetch' not in helper and 'out_slot' not in helper
(x/'c5_direct_output_kernel.py').write_text(helper)
candidate='# codex-power v201\n'+s.split('\n',1)[1]
assert candidate.split('\n',1)[1]==s.split('\n',1)[1]
candidate+='\n\n'+helper+"\n_power_install_lazy_code((4,1024,1,16,64,1,16,True), _make_worker2_c5_direct_output)\n"
p=Path('/tmp/nsa_worker2_v201_c5_direct_output.py');p.write_text(candidate);ast.parse(candidate)
patch=''.join(difflib.unified_diff(s.splitlines(keepends=True),candidate.splitlines(keepends=True),fromfile=str(parent),tofile=str(p)))
(x/'source_diff.patch').write_text(patch)
points={(lane%16,chunk*16+(lane//16)*4+e) for lane in range(64) for chunk in range(4) for e in range(4)}
assert len(points)==1024 and points=={(head,d) for head in range(16) for d in range(64)}
for head,d in points:
 lane=head+16*((d%16)//4);chunk=d//16;e=d%4
 assert (lane%16,chunk*16+(lane//16)*4+e)==(head,d)
 assert (2*(head*64+chunk*16+(lane//16)*4))%8==0
for b in range(4):
 for t in range(1024):
  base=(b*1024+t)*16*64
  assert base%1024==0 and base*2%8==0
proof={'candidate_sha256':hashlib.sha256(candidate.encode()).hexdigest(),'parent_sha256':hashlib.sha256(s.encode()).hexdigest(),'base_body_prefix_byte_exact':True,'original_top_AST_nodes_equal':ast.dump(ast.Module(body=ast.parse(candidate).body[:len(tree.body)],type_ignores=[]),include_attributes=False)==ast.dump(tree,include_attributes=False),'only_appended_installer_key':[4,1024,1,16,64,1,16,True],'local_unique_output_points':1024,'shape':[16,64],'full4096query_tiles_disjoint_factorized':True,'total_output_elements':4194304,'output_payload_bytes':8388608,'8B_vector_start_alignment_relative_to8BalignedOutput':True,'inverse':'lane=head+16*((dim%16)//4);chunk=dim//16;e=dim%4','query_tile_global_offset':'((batch*1024+token)*16+head)*64+dimension;headKV0','preserved_math_through_normalization':True,'source_sync_count':5,'no_hardware_sector_assumption':True}
assert proof['original_top_AST_nodes_equal']
(r/'source_identity.json').write_text(json.dumps(proof,indent=2)+'\n')
print('CANDIDATE_SHA',proof['candidate_sha256'],'HELPER_BYTES',len(helper))
