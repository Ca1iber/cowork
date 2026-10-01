import ast,json
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v056_codex_power_s8_proven_bounds_sc-16g-2'
a=ast.parse((p/'experiments/v050_codex_power_s8_online_local_sc-16g-2/s8_kernel.py').read_text()).body[-1]
b=ast.parse((p/'experiments'/v/'s8_kernel.py').read_text()).body[-1]
b.name=a.name;b.decorator_list=a.decorator_list
b.body=[x for x in b.body if not (isinstance(x,ast.Assert) and ast.unparse(x.test)=='seq_len % block_size == 0')]
assert ast.dump(a)==ast.dump(b)
(p/'rep'/v/'helper_body_identity.json').write_text(json.dumps({'normalized_helper_AST_equals_own_v050':True,'only_changes':'factory name/header, safe-memory pass config, host compile-domain divisibility assert','all_math_layout_sync_MMA_and_explicit_guards':'unchanged'},indent=2)+'\n')
print('body identity proof PASS')
