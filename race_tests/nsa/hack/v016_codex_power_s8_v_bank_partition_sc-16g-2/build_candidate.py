import ast
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v016_codex_power_s8_v_bank_partition_sc-16g-2'
s=(root/'submission/v013_codex_power_best_promotion_sc-16g-2/submission.py').read_text()
needle='            T.annotate_layout({\n                scores: T.Fragment('
assert s.count(needle)==1
s=s.replace(needle,'            T.annotate_layout({\n                v_shared: T.Layout(\n                    [block_size, dim],\n                    lambda row, col: (row, ((col // 8) ^ (2 * (row // 4))) * 8 + col % 8),\n                ),\n                scores: T.Fragment(',1)
s=s.replace('# codex-power v013','# codex-power v016',1)
assert [ast.unparse(n) for n in ast.parse(s).body if isinstance(n,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
p=root/'experiments'/id/'candidate.py';p.write_text(s);print(p,len(s))
