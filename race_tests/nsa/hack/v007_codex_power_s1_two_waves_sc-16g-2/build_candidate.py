import ast
from pathlib import Path

root = Path('/root/tilelang-metax/race_tests/nsa')
id = 'v007_codex_power_s1_two_waves_sc-16g-2'
source = (root / 'submission/v006_codex_power_s1_direct_output_sc-16g-2/submission.py').read_text()
needle = '    use_direct_output = selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16\n'
assert source.count(needle) == 1
source = source.replace(needle, needle + '    use_two_wave = use_direct_output\n', 1)
needle = '    threads = 64\n'
assert source.count(needle) == 1
source = source.replace(needle, '    threads = 128 if use_two_wave else 64\n', 1)
needle = '            scores_half = T.alloc_fragment([groups, block_tokens], dtype)\n'
assert source.count(needle) == 1
source = source.replace(needle, '            if use_two_wave:\n                scores_half = T.alloc_shared([groups, block_tokens], dtype)\n            else:\n                scores_half = T.alloc_fragment([groups, block_tokens], dtype)\n', 1)
path = root / 'experiments' / id / 'candidate.py'
path.write_text(source)
tree = ast.parse(source)
imports = [ast.unparse(node) for node in tree.body if isinstance(node, (ast.Import, ast.ImportFrom))]
assert imports == ['import tilelang', 'import tilelang.language as T', 'from tilelang.layout import make_swizzled_layout']
assert not any(isinstance(node, ast.ClassDef) for node in tree.body)
print(path, len(source), imports)
