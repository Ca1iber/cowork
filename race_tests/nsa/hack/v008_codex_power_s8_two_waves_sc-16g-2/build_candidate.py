import ast
from pathlib import Path

root = Path('/root/tilelang-metax/race_tests/nsa')
id = 'v008_codex_power_s8_two_waves_sc-16g-2'
source = (root / 'submission/v007_codex_power_s1_two_waves_sc-16g-2/submission.py').read_text()
needle = '    use_two_wave = use_direct_output\n'
assert source.count(needle) == 1
replacement = (
    '    use_s8_two_wave = selected_blocks == 8 and block_size == 16 and dim == 64 and groups == 16\n'
    '    use_two_wave = use_direct_output or use_s8_two_wave\n'
)
source = source.replace(needle, replacement, 1)
path = root / 'experiments' / id / 'candidate.py'
path.write_text(source)
tree = ast.parse(source)
imports = [ast.unparse(node) for node in tree.body if isinstance(node, (ast.Import, ast.ImportFrom))]
assert imports == ['import tilelang', 'import tilelang.language as T', 'from tilelang.layout import make_swizzled_layout']
assert not any(isinstance(node, ast.ClassDef) for node in tree.body)
print(path, len(source), imports)
