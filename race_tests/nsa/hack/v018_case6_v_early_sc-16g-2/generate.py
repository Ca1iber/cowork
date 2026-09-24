from pathlib import Path
import difflib,hashlib,textwrap
root=Path("/root/tilelang-metax/race_tests/nsa")
parent=root/"submission/v016_case6_shared_conflict_sc-16g-2/submission.py"
base=parent.read_text()
exp=root/"experiments/v018_case6_v_early_sc-16g-2"
tmp=Path("/tmp/nsa_v018")
start=base.index("                            T.copy(\n                                V[")
end=base.index("                            T.gemm(\n                                scores_half,",start)
v_copy=base[start:end]
assert v_copy.count("T.copy(")==1
conditional="                            if block_size == 32:\n"+textwrap.indent(v_copy,"    ")
late="                            if block_size != 32:\n"+textwrap.indent(v_copy,"    ")
for name,mark in (
    ("k_v_together","                            if use_manual_qk:"),
    ("v_during_softmax","                            T.copy(block_max, previous_max)"),
):
    src=base.replace(v_copy,late,1)
    assert src.count(mark)==1
    src=src.replace(mark,conditional+"\n"+mark,1)
    path=tmp/f"submission_{name}.py"
    path.write_text(src)
    (exp/f"{name}.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(parent),tofile=str(path))))
    print(name,hashlib.sha256(path.read_bytes()).hexdigest(),path)
