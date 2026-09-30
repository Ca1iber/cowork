import ast,difflib,hashlib,json
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v034_codex_power_s8_kpair_prefetch_sc-16g-2'
base=(root/'submission.py').read_text();assert hashlib.sha256(base.encode()).hexdigest()=='32ff3c0f147d4382a10718724dbea7b970baf2a30d36b98f908bd2b6a698c8d5'
own=(root/'experiments/v032_codex_power_cooperative_q_sc-16g-2/candidate.py').read_text();f=next(x for x in ast.parse(own).body if isinstance(x,ast.FunctionDef) and x.name=='_make_multiblock_register_qk')
start=min(x.lineno for x in f.decorator_list)-1
helper=''.join(own.splitlines(True)[start:f.end_lineno]).replace('def _make_multiblock_register_qk(','def _make_power_s8_kprefetch(',1).replace('k_local = T.alloc_local(4, dtype)','k_local = T.alloc_local(8, dtype)',1)
a=helper.index('                    for chunk in T.serial(4):');b=helper.index('                    if is_causal:',a)
loop="                    for chunk_pair in T.unroll(2):\n                        for sub_chunk in T.unroll(2):\n                            for element in T.vectorized(4):\n                                row = lane_id % 16\n                                feature = (chunk_pair * 2 + sub_chunk) * 16 + (lane_id // 16) * 4 + element\n                                k_local[sub_chunk * 4 + element] = k_shared[row, feature]\n                        for sub_chunk in T.unroll(2):\n                            T.tvm_mfma(\n                                '16x16x16f16', 'row', 'row',\n                                'float16x4', 'float16x4', 'float32x4',\n                                k_local.data, sub_chunk, q_local.data, chunk_pair * 2 + sub_chunk, scores.data, 0,\n                                dtype='float32x4',\n                            )\n"
helper=helper[:a]+loop+helper[b:]
(root/'experiments'/id/'s8_kernel.py').write_text('# codex-power v034\nimport tilelang\nimport tilelang.language as T\nfrom tilelang.layout import make_swizzled_layout\n\n'+helper+'\n')
old=ast.parse(base);r=next(x for x in old.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel')
s4=next(x for x in r.body if isinstance(x,ast.If) and ast.unparse(x.test).startswith('S == 4 and'))
inject='    if S == 8 and D == 64 and block_size == 16 and HQ // H == 16:\n        key = (B, seq_len, H, HQ, D, S, block_size, bool(is_causal))\n        kernel = _power_s8_kernels.get(key)\n        if kernel is None:\n            kernel = _make_power_s8_kprefetch(B, seq_len, H, HQ, D, S, block_size, bool(is_causal))\n            _power_s8_kernels[key] = kernel\n        kernel(q, k, v, block_indices, output)\n        return\n'
lines=base.splitlines(True);idx=s4.end_lineno
source=(''.join(lines[:idx])+inject+''.join(lines[idx:])).replace('# codex-power v033','# codex-power v034',1)+'\n_power_s8_kernels = {}\n\n'+helper+'\n'
new=ast.parse(source);nr=next(x for x in new.body if isinstance(x,ast.FunctionDef) and x.name=='run_kernel')
body=[x for x in nr.body if not(isinstance(x,ast.If) and ast.unparse(x.test).startswith('S == 8 and'))]
assert ast.dump(ast.Module(body=body,type_ignores=[]))==ast.dump(ast.Module(body=r.body,type_ignores=[]))
p=Path('/tmp/nsa_power_v034_kpair.py');p.write_text(source)
(root/'experiments'/id/'source_diff.patch').write_text(''.join(difflib.unified_diff(base.splitlines(True),source.splitlines(True),fromfile='shared_root_v033',tofile=str(p))))
(root/'rep'/id/'source_identity.json').write_text(json.dumps({'parent_sha256':hashlib.sha256(base.encode()).hexdigest(),'candidate_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'unchanged_fallback_body_AST':True,'candidate_path':str(p)},indent=2)+'\n')
print('candidate ready',p)
