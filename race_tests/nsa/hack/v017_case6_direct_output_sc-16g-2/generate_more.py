from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
parent=root/"submission/v016_case6_shared_conflict_sc-16g-2/submission.py"
base=parent.read_text()
src=Path("/tmp/nsa_v017/submission_half_fragment.py").read_text()
old="                                output_shared: make_swizzled_layout(output_shared),"
layout='''                                output_half: T.Fragment(
                                    output_half.shape,
                                    forward_thread_fn=lambda head, feature: ((head * tile_dim + feature) // 8) % 64,
                                    forward_index_fn=lambda head, feature: (((head * tile_dim + feature) // 512) * 8 + (head * tile_dim + feature) % 8),
                                ),'''
assert src.count(old)==1
src=src.replace(old,old+"\n"+layout,1)
for name,dtype in (("coalesced_half","dtype"),("coalesced_float","accum_dtype")):
    candidate=src
    if dtype=="accum_dtype":
        needle="output_half = T.alloc_fragment([groups, tile_dim], dtype)"
        assert candidate.count(needle)==1
        candidate=candidate.replace(needle,"output_half = T.alloc_fragment([groups, tile_dim], accum_dtype)",1)
    path=Path("/tmp/nsa_v017")/f"submission_{name}.py"
    path.write_text(candidate)
    (root/"experiments/v017_case6_direct_output_sc-16g-2"/f"{name}.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),candidate.splitlines(keepends=True),fromfile=str(parent),tofile=str(path))))
    print(name,hashlib.sha256(path.read_bytes()).hexdigest())
