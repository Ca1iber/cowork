from pathlib import Path
import hashlib
import difflib

root = Path("/root/tilelang-metax/race_tests/nsa")
baseline = root / "submission/v009_nested_metaclass_sc-16g-2/submission.py"
source = baseline.read_text()
old = "k_shared: make_swizzled_layout(k_shared),"
assert source.count(old) == 1
scratch = Path("/tmp/nsa_qk_layout_v011")
experiment = root / "experiments/v011_qk_layout_sc-16g-2"
for width in (4, 8, 16):
    name = f"xor{width}"
    expression = (
        "T.Layout(k_shared.shape, "
        "lambda row, col: (row, "
        f"(((col // {width}) ^ (row % (dim // {width}))) * {width} + col % {width})))"
    )
    candidate = source.replace(old, f"k_shared: {expression},", 1)
    path = scratch / f"submission_{name}.py"
    path.write_text(candidate)
    digest = hashlib.sha256(path.read_bytes()).hexdigest()
    with (root / "rep/v011_qk_layout_sc-16g-2/candidate_hashes.txt").open("a") as f:
        f.write(f"{name} {digest} {path}\n")
    patch = "".join(difflib.unified_diff(source.splitlines(keepends=True), candidate.splitlines(keepends=True), fromfile=str(baseline), tofile=str(path)))
    (experiment / f"layout_{name}.patch").write_text(patch)
    print(name, digest, path)
