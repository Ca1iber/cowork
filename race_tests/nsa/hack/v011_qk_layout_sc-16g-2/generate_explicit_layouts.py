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
for name, expression in [
    ("linear", "tilelang.layout.make_linear_layout(k_shared)"),
    ("half", "tilelang.layout.make_half_bank_swizzled_layout(k_shared)"),
    ("quarter", "tilelang.layout.make_quarter_bank_swizzled_layout(k_shared)"),
]:
    candidate = source.replace(old, f"k_shared: {expression},", 1)
    path = scratch / f"submission_{name}.py"
    path.write_text(candidate)
    digest = hashlib.sha256(path.read_bytes()).hexdigest()
    with (root / "rep/v011_qk_layout_sc-16g-2/candidate_hashes.txt").open("a") as f:
        f.write(f"{name} {digest} {path}\n")
    patch = "".join(difflib.unified_diff(source.splitlines(keepends=True), candidate.splitlines(keepends=True), fromfile=str(baseline), tofile=str(path)))
    (experiment / f"layout_{name}.patch").write_text(patch)
    print(name, digest, path)
