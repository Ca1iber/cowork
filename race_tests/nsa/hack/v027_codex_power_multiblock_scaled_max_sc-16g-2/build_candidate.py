import ast,difflib
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v027_codex_power_multiblock_scaled_max_sc-16g-2'
p=root/'experiments/v026_codex_power_multiblock_warp_sync_sc-16g-2/candidate.py'
s=p.read_text().replace('# codex-power v026','# codex-power v027',1)
pos=s.index('def _make_multiblock_register_qk');end=s.index('_compiled_kernels =',pos)
part=s[pos:end]
needle='                    T.reduce_max(scores, block_max, dim=1, clear=True)\n'
assert part.count(needle)==1
part=part.replace(needle,needle+'                    for head in T.Parallel(groups):\n                        block_max[head] *= scale\n',1)
part=part.replace('previous_max[head] * scale - block_max[head] * scale','previous_max[head] - block_max[head]',1)
part=part.replace('scores[head, offset] * scale - block_max[head] * scale','scores[head, offset] * scale - block_max[head]',1)
part=part.replace('previous_max','previous_scaled_max').replace('block_max','scaled_max')
s=s[:pos]+part+s[end:]
out=root/'experiments'/id/'candidate.py';out.write_text(s)
(out.parent/'source_diff.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(True),s.splitlines(True),fromfile=str(p),tofile=str(out))))
a,b=ast.parse(p.read_text()),ast.parse(s)
for n in ('_make_native_sparse_attention','run_kernel'):
 assert ast.dump(next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name==n))==ast.dump(next(x for x in b.body if isinstance(x,ast.FunctionDef) and x.name==n))
print('scaled max state candidate; S1 and host AST identical')
