import ast,json
from pathlib import Path
p=Path('/root/tilelang-metax/race_tests/nsa');v='v057_codex_power_s1_proven_bounds_sc-16g-2'
a=ast.parse((p/'experiments/v049_codex_power_s1_cache_entry_sc-16g-2/s1_kernel.py').read_text()).body[-1]
b=ast.parse((p/'experiments'/v/'s1_kernel.py').read_text()).body[-1]
b.name=a.name;b.decorator_list=a.decorator_list
b.body=[x for x in b.body if not (isinstance(x,ast.Assert) and ast.unparse(x.test)=='seq_len % block_size == 0')]
assert ast.dump(a)==ast.dump(b)
(p/'rep'/v/'helper_body_identity.json').write_text(json.dumps({'normalized_C6_helper_AST_equals_own_v049':True,'only_changes':'factory name/header, safe-memory pass config, host divisibility assertion','C12_dependency':'unchanged own v056'},indent=2)+'\n');print('C6 body identity PASS')
