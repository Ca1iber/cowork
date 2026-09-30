import ast,difflib
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v028_codex_power_adaptive_normalizer_sc-16g-2'
p=root/'experiments/v026_codex_power_multiblock_warp_sync_sc-16g-2/candidate.py'
s=p.read_text().replace('# codex-power v026','# codex-power v028',1)
pos=s.index('def _make_multiblock_register_qk');end=s.index('_compiled_kernels =',pos)
part=s[pos:end]
part=part.replace('            T.fill(block_max, -T.infinity(accum_dtype))','            T.fill(previous_max, -T.infinity(accum_dtype))',1)
part=part.replace('                    T.copy(block_max, previous_max)\n','',1)
old='                    for head in T.Parallel(groups):\n                        rescale[head] = T.exp2(\n                            previous_max[head] * scale - block_max[head] * scale\n                        )\n'
new='                    for head in T.Parallel(groups):\n                        if (block_max[head] - previous_max[head]) * scale > 7.0:\n                            rescale[head] = T.exp2((previous_max[head] - block_max[head]) * scale)\n                            previous_max[head] = block_max[head]\n                        else:\n                            rescale[head] = 1.0\n'
assert part.count(old)==1;part=part.replace(old,new,1)
part=part.replace('scores[head, offset] * scale - block_max[head] * scale','(scores[head, offset] - previous_max[head]) * scale + 8.0',1)
part=part.replace('                        denominator[head] = denominator[head] * rescale[head] + block_sum[head]','                        if rescale[head] != 1.0:\n                            denominator[head] *= rescale[head]\n                        denominator[head] += block_sum[head]',1)
part=part.replace('                        output_acc[head, feature] *= rescale[head]','                        if rescale[head] != 1.0:\n                            output_acc[head, feature] *= rescale[head]',1)
part=part.replace('previous_max','normalizer')
s=s[:pos]+part+s[end:]
out=root/'experiments'/id/'candidate.py';out.write_text(s)
(out.parent/'source_diff.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(True),s.splitlines(True),fromfile=str(p),tofile=str(out))))
a,b=ast.parse(p.read_text()),ast.parse(s)
for n in ('_make_native_sparse_attention','run_kernel'):
 assert ast.dump(next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name==n))==ast.dump(next(x for x in b.body if isinstance(x,ast.FunctionDef) and x.name==n))
assert 'normalizer[head]' in s and 'if rescale[head] != 1.0:' in s
print('adaptive normalizer candidate; S1/host AST identical to v026')
