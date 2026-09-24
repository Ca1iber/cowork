from pathlib import Path
import difflib,hashlib,textwrap
root=Path("/root/tilelang-metax/race_tests/nsa")
parent=root/"submission/v023_case6_direct_k_sc-16g-2/submission.py"
base=parent.read_text()
exp=root/"experiments/v025_case6_token_group_sc-16g-2"
old="            output_tiles = tilelang.cdiv(dim, tile_dim)\n            threads = 64"
assert base.count(old)==1
kernel_old='''                with T.Kernel(seq_len, output_tiles, batch * kv_heads, threads=threads) as (
                    token,
                    output_tile,
                    batch_head,
                ):'''
assert base.count(kernel_old)==1
start=base.index("                    batch_id = batch_head // kv_heads")
end=base.index("\n            return native_sparse_attention",start)
body=base[start:end]
assert "T.fill(output_acc, 0)" in body and "T.copy(output_acc, output_shared)" in body
for n in (2,4,8):
    src=base.replace(old,f'''            output_tiles = tilelang.cdiv(dim, tile_dim)
            token_group = {n} if selected_blocks == 1 and block_size == 32 and dim == 128 and groups == 16 and seq_len % {n} == 0 else 1
            threads = 64''',1)
    kernel_new='''                with T.Kernel(tilelang.cdiv(seq_len, token_group), output_tiles, batch * kv_heads, threads=threads) as (
                    token_tile,
                    output_tile,
                    batch_head,
                ):'''
    src=src.replace(kernel_old,kernel_new,1)
    s0=src.index("                    batch_id = batch_head // kv_heads")
    s1=src.index("\n            return native_sparse_attention",s0)
    src=src[:s0]+'''                    for token_inner in T.serial(token_group):
                        token = token_tile * token_group + token_inner
'''+textwrap.indent(body,"    ")+src[s1:]
    path=Path("/tmp/nsa_v025")/f"submission_token{n}.py"
    path.write_text(src)
    (exp/f"token{n}.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(parent),tofile=str(path))))
    print(n,hashlib.sha256(path.read_bytes()).hexdigest(),path)
