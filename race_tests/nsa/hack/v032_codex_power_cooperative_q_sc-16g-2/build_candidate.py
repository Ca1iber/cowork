import ast,difflib
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v032_codex_power_cooperative_q_sc-16g-2'
p=root/'experiments/v031_codex_power_output_relay_swizzle_sc-16g-2/candidate.py'
s=p.read_text().replace('# codex-power v031','# codex-power v032',1)
pos=s.index('def _make_multiblock_register_qk');end=s.index('_compiled_kernels =',pos)
part=s[pos:end]
part=part.replace('            k_shared = T.alloc_shared([block_size, dim], dtype)','            q_shared = T.alloc_shared([groups, dim], dtype)\n            k_shared = T.alloc_shared([block_size, dim], dtype)',1)
part=part.replace('            T.annotate_layout({\n','            T.annotate_layout({\n                q_shared: make_swizzled_layout(q_shared),\n',1)
needle='            lane_id = T.KernelLaunchFrame.Current().get_thread_binding() % 64\n'
copy='            T.copy(\n                Q[batch_id, token, kv_head * groups:(kv_head + 1) * groups, :],\n                q_shared,\n            )\n            T.sync_warp()\n'
part=part.replace(needle,needle+copy,1)
old='                    q_local[chunk * 4 + element] = Q[\n                        batch_id, token, kv_head * groups + head, feature\n                    ]'
new='                    q_local[chunk * 4 + element] = q_shared[head, feature]'
assert part.count(old)==1;part=part.replace(old,new,1)
s=s[:pos]+part+s[end:]
out=root/'experiments'/id/'candidate.py';out.write_text(s)
(out.parent/'source_diff.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(True),s.splitlines(True),fromfile=str(p),tofile=str(out))))
a,b=ast.parse(p.read_text()),ast.parse(s)
for n in ('_make_native_sparse_attention','run_kernel'):
 assert ast.dump(next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name==n))==ast.dump(next(x for x in b.body if isinstance(x,ast.FunctionDef) and x.name==n))
print('Q cooperative staging only; S1 and host AST identical')
