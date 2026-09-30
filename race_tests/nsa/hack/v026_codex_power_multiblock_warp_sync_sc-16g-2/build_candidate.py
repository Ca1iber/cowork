import ast,difflib
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v026_codex_power_multiblock_warp_sync_sc-16g-2'
p=root/'experiments/v025_codex_power_s2_s4_register_qk_sc-16g-2/candidate.py'
s=p.read_text().replace('# codex-power v025','# codex-power v026',1)
pos=s.index('def _make_multiblock_register_qk')
config_pos=s.rfind('        tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,',0,pos)
s=s[:config_pos]+s[config_pos:].replace('        tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,','        tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True,\n        tilelang.PassConfigKey.TL_DISABLE_THREAD_STORAGE_SYNC: True,',1)
pos=s.index('def _make_multiblock_register_qk');end=s.index('_compiled_kernels =',pos)
part=s[pos:end]
part=part.replace('                    T.copy(K[batch_id, block_start:block_start + block_size, kv_head, :], k_shared)\n','                    T.sync_warp()\n                    T.copy(K[batch_id, block_start:block_start + block_size, kv_head, :], k_shared)\n                    T.sync_warp()\n',1)
part=part.replace('                        v_shared,\n                    )\n                    T.gemm(','                        v_shared,\n                    )\n                    T.sync_warp()\n                    T.gemm(',1)
part=part.replace('            for head, feature in T.Parallel(groups, dim):\n                output_acc[head, feature] /= denominator[head]','            T.sync_warp()\n            for head, feature in T.Parallel(groups, dim):\n                output_acc[head, feature] /= denominator[head]',1)
part=part.replace('            T.copy(output_acc, output_shared)\n            T.copy(','            T.copy(output_acc, output_shared)\n            T.sync_warp()\n            T.copy(',1)
s=s[:pos]+part+s[end:]
out=root/'experiments'/id/'candidate.py';out.write_text(s)
(out.parent/'source_diff.patch').write_text(''.join(difflib.unified_diff(p.read_text().splitlines(True),s.splitlines(True),fromfile=str(p),tofile=str(out))))
a,b=ast.parse(p.read_text()),ast.parse(s)
for n in ('_make_native_sparse_attention','run_kernel'):
 assert ast.dump(next(x for x in a.body if isinstance(x,ast.FunctionDef) and x.name==n))==ast.dump(next(x for x in b.body if isinstance(x,ast.FunctionDef) and x.name==n))
print('only multiblock synchronization changed')
