import ast,difflib
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v031_codex_power_output_relay_swizzle_sc-16g-2'
p=root/'experiments/v030_codex_power_v_microtile_transpose_sc-16g-2/candidate.py'
s=p.read_text().replace('# codex-power v030','# codex-power v031',1)
pos=s.index('def _make_multiblock_register_qk');end=s.index('_compiled_kernels =',pos)
part=s[pos:end]
needle='            T.annotate_layout({\n'
layout='                output_shared: T.Layout(\n                    [groups, dim],\n                    lambda row, col: (row, ((col // 8) ^ (row % 8)) * 8 + col % 8),\n                ),\n'
assert part.count(needle)==1;part=part.replace(needle,needle+layout,1)
s=s[:pos]+part+s[end:]
out=root/'experiments'/id/'candidate.py';out.write_text(s)
(out.parent/'source_diff.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(True),s.splitlines(True),fromfile=str(p),tofile=str(out))))
a,b=ast.parse(p.read_text()),ast.parse(s)
for n in ('_make_native_sparse_attention','run_kernel'):
 assert ast.dump(next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name==n))==ast.dump(next(x for x in b.body if isinstance(x,ast.FunctionDef) and x.name==n))
print('only multiblock output relay layout changed')
