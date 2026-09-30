import ast
from pathlib import Path
root=Path('/root/tilelang-metax/race_tests/nsa');id='v021_codex_power_s1_normalize_scores_sc-16g-2'
s=(root/'experiments/v016_codex_power_s8_v_bank_partition_sc-16g-2/candidate.py').read_text()
start=s.index('def _make_native_sparse_attention(');end=s.index('@tilelang.jit(',start)
a,b,c=s[:start],s[start:end],s[end:]
x='                    T.copy(scores, scores_half)\n'
y='''                    if use_direct_output:
                        for head, offset in T.Parallel(groups, block_tokens):
                            scores[head, offset] /= denominator[head]
                    T.copy(scores, scores_half)
'''
assert b.count(x)==1;b=b.replace(x,y,1)
x='''            for head, feature in T.Parallel(groups, tile_dim):
                output_acc[head, feature] /= denominator[head]
'''
y='''            if use_direct_output:
                invalid_start = BlockIndices[batch_id, token, kv_head, 0] * block_tokens
                if invalid_start < 0 or invalid_start > token:
                    for head, feature in T.Parallel(groups, tile_dim):
                        output_acc[head, feature] /= denominator[head]
            else:
                for head, feature in T.Parallel(groups, tile_dim):
                    output_acc[head, feature] /= denominator[head]
'''
assert b.count(x)==1;b=b.replace(x,y,1)
s=(a+b+c).replace('# codex-power v016','# codex-power v021',1)
assert [ast.unparse(n) for n in ast.parse(s).body if isinstance(n,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
p=root/'experiments'/id/'candidate.py';p.write_text(s);print(p,len(s))
