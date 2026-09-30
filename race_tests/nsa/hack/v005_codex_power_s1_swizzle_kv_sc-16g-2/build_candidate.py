import ast
from pathlib import Path

root = Path('/root/tilelang-metax/race_tests/nsa')
id = 'v005_codex_power_s1_swizzle_kv_sc-16g-2'
source = (root / 'submission.py').read_text()
assert source.startswith('import tilelang\nfrom tilelang import language as T\n')
source = source.replace(
    'import tilelang\nfrom tilelang import language as T\n',
    'import tilelang\nimport tilelang.language as T\nfrom tilelang.layout import make_swizzled_layout\n',
    1,
)
needle = '    groups = query_heads // kv_heads\n'
assert source.count(needle) == 1
source = source.replace(
    needle,
    needle + '    use_swizzle = selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16\n',
    1,
)
needle = '            output_shared = T.alloc_shared([groups, tile_dim], dtype)\n'
assert source.count(needle) == 1
source = source.replace(
    needle,
    needle + '            if use_swizzle:\n'
    '                T.annotate_layout({k_shared: make_swizzled_layout(k_shared), v_shared: make_swizzled_layout(v_shared)})\n',
    1,
)
path = root / 'experiments' / id / 'candidate.py'
path.write_text(source)
tree = ast.parse(source)
imports = [ast.unparse(node) for node in tree.body if isinstance(node, (ast.Import, ast.ImportFrom))]
assert imports == ['import tilelang', 'import tilelang.language as T', 'from tilelang.layout import make_swizzled_layout']
assert not any(isinstance(node, ast.ClassDef) for node in tree.body)
print(path, len(source), imports)
