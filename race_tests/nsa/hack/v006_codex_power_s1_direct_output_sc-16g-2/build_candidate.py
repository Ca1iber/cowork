import ast
from pathlib import Path

root = Path('/root/tilelang-metax/race_tests/nsa')
id = 'v006_codex_power_s1_direct_output_sc-16g-2'
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
    needle + '    use_direct_output = selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16\n',
    1,
)
start = source.index('            T.copy(output_acc, output_shared)')
end = source.index('\n\n    return native_sparse_attention', start)
original = source[start:end]
assert original.count('T.copy(output_acc, output_shared)') == 1
assert original.count('Output[') == 1
new = (
    '            if use_direct_output:\n'
    '                for head, feature in T.Parallel(groups, tile_dim):\n'
    '                    Output[batch_id, token, kv_head * groups + head, output_tile * tile_dim + feature] = output_acc[head, feature]\n'
    '            else:\n'
    + '\n'.join('    ' + line for line in original.splitlines())
)
source = source[:start] + new + source[end:]
path = root / 'experiments' / id / 'candidate.py'
path.write_text(source)
tree = ast.parse(source)
imports = [ast.unparse(node) for node in tree.body if isinstance(node, (ast.Import, ast.ImportFrom))]
assert imports == ['import tilelang', 'import tilelang.language as T', 'from tilelang.layout import make_swizzled_layout']
assert not any(isinstance(node, ast.ClassDef) for node in tree.body)
print(path, len(source), imports)
