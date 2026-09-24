from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
parent=root/"submission/v016_case6_shared_conflict_sc-16g-2/submission.py"
base=parent.read_text()
exp=root/"experiments/v017_case6_direct_output_sc-16g-2"
tmp=Path("/tmp/nsa_v017")
old='''                    T.copy(output_acc, output_shared)
                    T.copy(
                        output_shared,
                        Output[
                            batch_id,
                            token,
                            kv_head * groups : (kv_head + 1) * groups,
                            output_tile * tile_dim : (output_tile + 1) * tile_dim,
                        ],
                    )'''
assert base.count(old)==1
tile='''Output[
                            batch_id,
                            token,
                            kv_head * groups : (kv_head + 1) * groups,
                            output_tile * tile_dim : (output_tile + 1) * tile_dim,
                        ]'''
direct='''                    if block_size == 32:
                        T.copy(output_acc, '''+tile+''')
                    else:
'''+ "\n".join("    "+line for line in old.splitlines())
half='''                    if block_size == 32:
                        T.copy(output_acc, output_half)
                        T.copy(output_half, '''+tile+''')
                    else:
'''+ "\n".join("    "+line for line in old.splitlines())
scalar='''                    if block_size == 32:
                        for head, feature in T.Parallel(groups, tile_dim):
                            Output[batch_id, token, kv_head * groups + head, output_tile * tile_dim + feature] = output_acc[head, feature]
                    else:
'''+ "\n".join("    "+line for line in old.splitlines())
for name,new in (("direct",direct),("half_fragment",half),("scalar_store",scalar)):
    src=base.replace(old,new,1)
    if name=="half_fragment":
        needle="                    output_shared = T.alloc_shared([groups, tile_dim], dtype)"
        assert src.count(needle)==1
        src=src.replace(needle,needle+"\n                    output_half = T.alloc_fragment([groups, tile_dim], dtype)",1)
    path=tmp/f"submission_{name}.py"
    path.write_text(src)
    (exp/f"{name}.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(parent),tofile=str(path))))
    print(name,hashlib.sha256(path.read_bytes()).hexdigest(),path)
