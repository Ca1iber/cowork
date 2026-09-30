import ast
from pathlib import Path
r=Path('/root/tilelang-metax/race_tests/nsa');id='v023_codex_power_s8_cooperative_k_sc-16g-2'
s=(r/'experiments/v022_codex_power_s1_past_block_mask_sc-16g-2/candidate.py').read_text()
a=s.index('def _make_s8_register_qk(');b=s.index('def run_kernel(',a)
pre,h,post=s[:a],s[a:b],s[b:]
x='            v_shared = T.alloc_shared([block_size, dim], dtype)\n';assert h.count(x)==1
h=h.replace(x,'            k_shared = T.alloc_shared([block_size, dim], dtype)\n'+x,1)
x='            T.annotate_layout({\n';assert h.count(x)==1
h=h.replace(x,x+'                k_shared: make_swizzled_layout(k_shared),\n',1)
x='''                            k_local[element] = K[
                                batch_id, block_start + row, kv_head, feature
                            ]'''
assert h.count(x)==1;h=h.replace(x,'                            k_local[element] = k_shared[row, feature]',1)
x='''                if block_start >= 0 and block_start <= token:
                    T.fill(scores, 0)'''
y='''                if block_start >= 0 and block_start <= token:
                    T.copy(K[batch_id, block_start:block_start + block_size, kv_head, :], k_shared)
                    T.fill(scores, 0)'''
assert h.count(x)==1;h=h.replace(x,y,1)
s=(pre+h+post).replace('# codex-power v022','# codex-power v023',1)
assert [ast.unparse(n) for n in ast.parse(s).body if isinstance(n,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
p=r/'experiments'/id/'candidate.py';p.write_text(s);print(p)
