import ast
from pathlib import Path

root = Path('/root/tilelang-metax/race_tests/nsa')
id = 'v012_codex_power_s8_direct_output_sc-16g-2'
source = (root / 'submission/v010_codex_power_s8_register_qk_sc-16g-2/submission.py').read_text()
start = source.index('def _make_s8_register_qk(')
end = source.index('def run_kernel(', start)
before, helper, after = source[:start], source[start:end], source[end:]
assert helper.count('            output_shared = T.alloc_shared([groups, dim], dtype)\n') == 1
helper = helper.replace('            output_shared = T.alloc_shared([groups, dim], dtype)\n', '')
old = '''            T.copy(output_acc, output_shared)
            T.copy(
                output_shared,
                Output[batch_id, token, kv_head * groups:(kv_head + 1) * groups, :],
            )
'''
new = '''            T.copy(
                output_acc,
                Output[batch_id, token, kv_head * groups:(kv_head + 1) * groups, :],
            )
'''
assert helper.count(old) == 1
helper = helper.replace(old, new)
source = before + helper + after
path = root / 'experiments' / id / 'candidate.py'
path.write_text(source)
imports = [ast.unparse(n) for n in ast.parse(source).body if isinstance(n, (ast.Import, ast.ImportFrom))]
assert imports == ['import tilelang', 'import tilelang.language as T', 'from tilelang.layout import make_swizzled_layout']
assert 'output_shared' not in helper
print(path, len(source), imports)
