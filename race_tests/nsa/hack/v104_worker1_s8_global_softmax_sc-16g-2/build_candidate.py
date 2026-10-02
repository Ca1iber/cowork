from pathlib import Path
import ast,hashlib,json,difflib
p=Path('/root/tilelang-metax/race_tests/nsa');v='v104_worker1_s8_global_softmax_sc-16g-2';e=p/'experiments'/v;r=p/'rep'/v;parent=p/'submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py';base=parent.read_text();assert hashlib.sha256(parent.read_bytes()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0';pt=ast.parse(base);f=next(x for x in pt.body if isinstance(x,ast.FunctionDef) and x.name=='_make_power_s8_output_pair');lines=base.splitlines(True);start=min([f.lineno]+[x.lineno for x in f.decorator_list]);old=''.join(lines[start-1:f.end_lineno]);a=old.index('            T.fill(numerator, 0)');b=old.index('            denominator[0] += T.shfl_xor',a);loop=old[a:b]
qstart=loop.index('                    T.sync_warp()');qend=loop.index('                    block_maximum[0] =',qstart);q=loop[qstart:qend].replace('                    T.fill(scores, 0)\n','                    for element in T.unroll(4):\n                        scores[selected * 4 + element] = 0\n').replace('scores[element]','scores[selected * 4 + element]').replace('scores.data, 0,','scores.data, selected,')
pvstart=loop.index('                    T.sync_warp()',loop.index('                    denominator[0] += partial_sum[0]'));pv=loop[pvstart:].replace('probabilities.data, 0,','probabilities.data, selected,')
guard="""                raw_index = Indices[batch_id, token, kv_head, selected]
                if raw_index >= 0 and raw_index < seq_len // block_size and raw_index <= token // block_size:
                    block_start = raw_index * block_size
"""
replacement="""            T.fill(scores, -T.infinity(accum_dtype))
            T.fill(probabilities, 0)
            has_valid[0] = 0
            denominator[0] = 0
            for selected in T.unroll(8):
"""+guard+"""                    has_valid[0] = 1
"""+q+"""            if has_valid[0]:
                maximum[0] = -T.infinity(accum_dtype)
                for element in T.unroll(32):
                    maximum[0] = T.max(maximum[0], scores[element])
                maximum[0] = T.max(maximum[0], T.shfl_xor(maximum[0], 32, width=64, mask=0xFFFFFFFFFFFFFFFF))
                maximum[0] = T.max(maximum[0], T.shfl_xor(maximum[0], 16, width=64, mask=0xFFFFFFFFFFFFFFFF))
                for selected in T.unroll(8):
                    for element in T.vectorized(4):
                        probabilities[selected * 4 + element] = T.exp2((scores[selected * 4 + element] - maximum[0]) * scale + 8.0)
                for element in T.unroll(32):
                    denominator[0] += probabilities[element].astype(accum_dtype)
                denominator[0] += T.shfl_xor(denominator[0], 32, width=64, mask=0xFFFFFFFFFFFFFFFF)
                denominator[0] += T.shfl_xor(denominator[0], 16, width=64, mask=0xFFFFFFFFFFFFFFFF)
            T.fill(numerator, 0)
            for selected in T.unroll(8):
"""+guard+pv
end=old.index('            for chunk in T.unroll(4):',b);s=old[:a]+replacement+old[end:];s=s.replace('_make_power_s8_output_pair','_make_power_s8_global_softmax').replace('selected_blocks in (2, 4, 8)','selected_blocks == 8').replace('scores = T.alloc_local(4, accum_dtype)','scores = T.alloc_local(32, accum_dtype)').replace('probabilities = T.alloc_local(4, dtype)','probabilities = T.alloc_local(32, dtype)')
for name in ['new_maximum','block_maximum','rescale','partial_sum']:s=s.replace('            '+name+' = T.alloc_local(1, accum_dtype)\n','')
s=s.replace('            output_fetch = T.alloc_local(8, dtype)\n','            output_fetch = T.alloc_local(8, dtype)\n            has_valid = T.alloc_local(1, T.int32)\n');ast.parse(s);(e/'s8_global_softmax_kernel.py').write_text('# codex-power v104\nimport tilelang\nimport tilelang.language as T\nfrom tilelang.layout import make_swizzled_layout\n\n'+s+'\n')
text=base.replace('# codex-power v084','# codex-power v104',1)+'\n\n'+s+'\n_power_install_lazy_code((4,1024,1,16,64,8,16,True), _make_power_s8_global_softmax)\n';source=Path('/tmp/nsa_power_v104_global_softmax.py');source.write_text(text);ct=ast.parse(text);assert ast.dump(ast.Module(body=ct.body[:len(pt.body)],type_ignores=[]),include_attributes=False)==ast.dump(pt,include_attributes=False)
(e/'source_diff.patch').write_text(''.join(difflib.unified_diff(base.splitlines(True),text.splitlines(True),fromfile=str(parent),tofile=str(source))));(e/'helper_diff.patch').write_text(''.join(difflib.unified_diff(old.splitlines(True),s.splitlines(True),fromfile='parent84 S8factory',tofile='s8_global_softmax_kernel.py')))
(r/'source_identity.json').write_text(json.dumps({'candidate_path':str(source),'candidate_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'parent_sha256':hashlib.sha256(parent.read_bytes()).hexdigest(),'parent_AST_prefix_exact':True,'dispatch_cases':[12],'other13keys_math_exact_parent':True,'score_slots':32,'P_slots':32,'Num_slots':16,'has_valid_uniform_indices_only':True,'premultiply_raw_index_guard':True,'full_selected_unroll_requested':8,'global_widths_preserved':{'Q':16,'K':16,'V':8,'Output':16}},indent=2)+'\n');print('BUILT',hashlib.sha256(source.read_bytes()).hexdigest())
