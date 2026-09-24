from pathlib import Path
import hashlib
import difflib

root = Path("/root/tilelang-metax/race_tests/nsa")
baseline = root / "submission/v009_nested_metaclass_sc-16g-2/submission.py"
source = baseline.read_text()
old = "k_shared: make_swizzled_layout(k_shared),"
assert source.count(old) == 1
scratch = Path("/tmp/nsa_qk_layout_v011")
scratch.mkdir(exist_ok=True)
experiment = root / "experiments/v011_qk_layout_sc-16g-2"
hash_lines = []
for name, k_major, allow_pad in [
    ("tf", True, False),
    ("ft", False, True),
    ("ff", False, False),
]:
    new = f"k_shared: make_swizzled_layout(k_shared, k_major={k_major}, allow_pad={allow_pad}),"
    candidate = source.replace(old, new, 1)
    path = scratch / f"submission_{name}.py"
    path.write_text(candidate)
    digest = hashlib.sha256(path.read_bytes()).hexdigest()
    hash_lines.append(f"{name} {digest} {path}")
    patch = "".join(difflib.unified_diff(source.splitlines(keepends=True), candidate.splitlines(keepends=True), fromfile=str(baseline), tofile=str(path)))
    (experiment / f"layout_{name}.patch").write_text(patch)
(root / "rep/v011_qk_layout_sc-16g-2/candidate_hashes.txt").write_text("\n".join(hash_lines) + "\n")
print("\n".join(hash_lines))
