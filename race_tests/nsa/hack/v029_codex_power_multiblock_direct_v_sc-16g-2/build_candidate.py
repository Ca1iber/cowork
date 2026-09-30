import ast,difflib
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v029_codex_power_multiblock_direct_v_sc-16g-2'
p=root/'experiments/v028_codex_power_adaptive_normalizer_sc-16g-2/candidate.py'
s=p.read_text().replace('# codex-power v028','# codex-power v029',1)
pos=s.index('def _make_multiblock_register_qk');end=s.index('_compiled_kernels =',pos)
part=s[pos:end].replace('            v_shared = T.alloc_shared([block_size, dim], dtype)','            v_local = T.alloc_local(4, dtype)',1)
start=part.index('                v_shared: T.Layout(');stop=part.index('                scores: T.Fragment(',start)
part=part[:start]+part[stop:]
needle='            T.annotate_layout({\n'
layouts='                scores_half: T.Fragment(\n                    [groups, block_size],\n                    forward_thread_fn=lambda row, col: row + 16 * (col // 4),\n                    forward_index_fn=lambda row, col: col % 4,\n                ),\n                output_acc: T.Fragment(\n                    [groups, dim],\n                    forward_thread_fn=lambda row, col: row + 16 * ((col % 16) // 4),\n                    forward_index_fn=lambda row, col: col % 4 + 4 * (col // 16),\n                ),\n'
part=part.replace(needle,needle+layouts,1)
start=part.index('                    T.copy(\n                        V[');stop=part.index('            T.sync_warp()\n            for head, feature',start)
new="                    for feature_tile in T.unroll(4):\n                        for element in T.serial(4):\n                            row = (lane_id // 16) * 4 + element\n                            feature = feature_tile * 16 + lane_id % 16\n                            v_local[element] = V[batch_id, block_start + row, kv_head, feature]\n                        T.tvm_mfma(\n                            '16x16x16f16', 'row', 'row',\n                            'float16x4', 'float16x4', 'float32x4',\n                            v_local.data, 0, scores_half.data, 0, output_acc.data, feature_tile,\n                            dtype='float32x4',\n                        )\n"
part=part[:start]+new+part[stop:]
assert 'v_shared' not in part
s=s[:pos]+part+s[end:]
out=root/'experiments'/id/'candidate.py';out.write_text(s)
(out.parent/'source_diff.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(True),s.splitlines(True),fromfile=str(p),tofile=str(out))))
a,b=ast.parse(p.read_text()),ast.parse(s)
for n in ('_make_native_sparse_attention','run_kernel'):
 assert ast.dump(next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name==n))==ast.dump(next(x for x in b.body if isinstance(x,ast.FunctionDef) and x.name==n))
print('direct V candidate; S1/host AST identical')
