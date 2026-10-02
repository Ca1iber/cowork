from pathlib import Path
import ast,hashlib,json,difflib
root=Path('/root/tilelang-metax/race_tests/nsa');v='v100_worker1_s8_pair_iteration_sc-16g-2';e=root/'experiments'/v;r=root/'rep'/v
parent=root/'submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py';parent_text=parent.read_text();assert hashlib.sha256(parent.read_bytes()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0'
own_helper=root/'experiments/v077_codex_power_s8_output_pair_sc-16g-2/s8_kernel.py';old=own_helper.read_text();assert hashlib.sha256(own_helper.read_bytes()).hexdigest()=='6cab13e3b158003e6fc0abceb3bace5579a7816bc0a0836c573e04118dec5895'
start=old.index('            for selected in T.unroll(');end=old.index('            denominator[0] += T.shfl_xor',start)
oldloop=old[start:end]
qkstart=oldloop.index('                    T.sync_warp()');qkend=oldloop.index('                    block_maximum[0] =',qkstart)
qk=oldloop[qkstart:qkend].replace('                    T.fill(scores, 0)\n','                    for element in T.unroll(4):\n                        scores[inner * 4 + element] = 0\n').replace('scores[element]','scores[inner * 4 + element]').replace('scores.data, 0,','scores.data, inner,')
qk=''.join('    '+line+'\n' for line in qk.splitlines())
commonstart=oldloop.index('                    block_maximum[0] =');commonend=oldloop.index('                    T.sync_warp()',commonstart)
common=oldloop[commonstart:commonend].replace('for element in T.unroll(4):\n                        block_maximum','for element in T.unroll(8):\n                        block_maximum').replace('for element in T.vectorized(4):\n                        probabilities','for element in T.vectorized(8):\n                        probabilities').replace('for element in T.unroll(4):\n                        partial_sum','for element in T.unroll(8):\n                        partial_sum')
pv=oldloop[commonend:].replace('probabilities.data, 0,','probabilities.data, inner,');pv=''.join('    '+line+'\n' for line in pv.splitlines())
loop="""            for pair in T.unroll(selected_blocks // 2, annotations={"pragma_unroll_explicit": False, "pragma_unroll_factor": 1}):
                T.fill(scores, -T.infinity(accum_dtype))
                for inner in T.unroll(2):
                    block_starts[inner] = Indices[batch_id, token, kv_head, pair * 2 + inner] * block_size
                    valid[inner] = block_starts[inner] >= 0 and block_starts[inner] <= token
                    if valid[inner]:
                        block_start = block_starts[inner]
"""+qk+"""                if valid[0] or valid[1]:
"""+common+"""                    for inner in T.unroll(2):
                        if valid[inner]:
                            block_start = block_starts[inner]
"""+''.join('    '+line+'\n' for line in pv.splitlines())
s=old[:start]+loop+old[end:];s=s.replace('# codex-power v077','# codex-power v100').replace('_make_power_s8_output_pair','_make_power_s8_pair_iteration').replace('scores = T.alloc_local(4, accum_dtype)','scores = T.alloc_local(8, accum_dtype)').replace('probabilities = T.alloc_local(4, dtype)','probabilities = T.alloc_local(8, dtype)').replace('            output_fetch = T.alloc_local(8, dtype)\n','            output_fetch = T.alloc_local(8, dtype)\n            block_starts = T.alloc_local(2, T.int32)\n            valid = T.alloc_local(2, T.bool)\n')
ast.parse(s);(e/'s8_pair_kernel.py').write_text(s)
helper='\n\n'+s[s.index('@tilelang.jit'):];text=parent_text.replace('# codex-power v084','# codex-power v100',1)+helper+'\n_power_install_lazy_code((4,1024,1,16,64,8,16,True), _make_power_s8_pair_iteration)\n'
source=Path('/tmp/nsa_power_v100_pair_iteration.py');source.write_text(text);pt=ast.parse(parent_text);ct=ast.parse(text);assert ast.dump(ast.Module(body=ct.body[:len(pt.body)],type_ignores=[]),include_attributes=False)==ast.dump(pt,include_attributes=False)
(e/'source_diff.patch').write_text(''.join(difflib.unified_diff(parent_text.splitlines(True),text.splitlines(True),fromfile=str(parent),tofile=str(source))))
(r/'source_identity.json').write_text(json.dumps({'candidate_path':str(source),'candidate_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'parent_source':str(parent),'parent_sha256':hashlib.sha256(parent.read_bytes()).hexdigest(),'parent_AST_prefix_exact':True,'new_dispatch_cases':[12],'other13keys_math_exact_parent':True,'helper_origin':str(own_helper),'helper_origin_sha256':hashlib.sha256(own_helper.read_bytes()).hexdigest(),'mechanism':'pair QK scores -> one online softmax rescale -> two PV, same global transfers'},indent=2)+'\n');print('BUILT',hashlib.sha256(source.read_bytes()).hexdigest())
