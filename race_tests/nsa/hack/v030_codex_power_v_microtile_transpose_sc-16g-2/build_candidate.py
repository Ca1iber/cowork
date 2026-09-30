import ast,difflib
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v030_codex_power_v_microtile_transpose_sc-16g-2'
p=root/'experiments/v028_codex_power_adaptive_normalizer_sc-16g-2/candidate.py'
s=p.read_text().replace('# codex-power v028','# codex-power v030',1)
pos=s.index('def _make_multiblock_register_qk');end=s.index('_compiled_kernels =',pos)
part=s[pos:end]
part=part.replace('            v_shared = T.alloc_shared([block_size, dim], dtype)','            v_shared = T.alloc_shared([block_size, dim], dtype)\n            v_tile_local = T.alloc_local(16, dtype)\n            v_column_local = T.alloc_local(4, dtype)',1)
old='lambda row, col: (row, ((col // 8) ^ (2 * (row // 4))) * 8 + col % 8)'
new='lambda row, col: (col // 4 + 16 * (col % 4), ((row // 4) ^ (col // 16) ^ (col % 4)) * 4 + row % 4)'
assert part.count(old)==1;part=part.replace(old,new,1)
start=part.index('                    T.copy(\n                        V[');stop=part.index('                    T.sync_warp()',start)
newcopy='                    row_base = (lane_id // 16) * 4\n                    feature_base = (lane_id % 16) * 4\n                    for tile_row in T.unroll(4):\n                        for tile_col in T.vectorized(4):\n                            v_tile_local[tile_row * 4 + tile_col] = V[\n                                batch_id, block_start + row_base + tile_row, kv_head, feature_base + tile_col\n                            ]\n                    for tile_col in T.unroll(4):\n                        for tile_row in T.unroll(4):\n                            v_column_local[tile_row] = v_tile_local[tile_row * 4 + tile_col]\n                        for tile_row in T.vectorized(4):\n                            v_shared[row_base + tile_row, feature_base + tile_col] = v_column_local[tile_row]\n'
part=part[:start]+newcopy+part[stop:]
s=s[:pos]+part+s[end:]
out=root/'experiments'/id/'candidate.py';out.write_text(s)
(out.parent/'source_diff.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(True),s.splitlines(True),fromfile=str(p),tofile=str(out))))
a,b=ast.parse(p.read_text()),ast.parse(s)
for n in ('_make_native_sparse_attention','run_kernel'):
 assert ast.dump(next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name==n))==ast.dump(next(x for x in b.body if isinstance(x,ast.FunctionDef) and x.name==n))
print('cooperative V microtile; S1/host AST identical')
