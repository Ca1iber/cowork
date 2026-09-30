import ast
from pathlib import Path

root = Path('/root/tilelang-metax/race_tests/nsa')
id = 'v001_codex_power_s8_onepass_sc-16g-2'
source = (root / 'submission.py').read_text()
assert source.startswith('import tilelang\nfrom tilelang import language as T\n')
source = source.replace(
    'import tilelang\nfrom tilelang import language as T\n',
    'import tilelang\nimport tilelang.language as T\nfrom tilelang.layout import make_swizzled_layout\n',
    1,
)
helper = (root / 'hack' / id / 'onepass_function.txt').read_text()
assert source.count('def run_kernel(') == 1
source = source.replace('def run_kernel(', helper + '\n\ndef run_kernel(', 1)
needle = '    kernel = _make_native_sparse_attention(\n'
assert source.count(needle) == 1
source = source.replace(
    needle,
    '    factory = _make_s8_onepass if (S == 8 and block_size == 16 and D == 64 and HQ // H == 16) else _make_native_sparse_attention\n'
    '    kernel = factory(\n',
    1,
)
path = root / 'experiments' / id / 'candidate.py'
path.write_text(source)
tree = ast.parse(source)
imports = [ast.unparse(node) for node in tree.body if isinstance(node, (ast.Import, ast.ImportFrom))]
assert imports == ['import tilelang', 'import tilelang.language as T', 'from tilelang.layout import make_swizzled_layout'], imports
assert not any(isinstance(node, ast.ClassDef) for node in tree.body)
print(path, len(source), imports)
