from pathlib import Path
import difflib
import hashlib

root = Path("/root/tilelang-metax/race_tests/nsa")
base_path = root / "submission/v009_nested_metaclass_sc-16g-2/submission.py"
base = base_path.read_text()
experiment = root / "experiments/v012_qk_kpack_sc-16g-2"
scratch = Path("/tmp/nsa_qk_kpack_v012")
scratch.mkdir(exist_ok=True)

replacements = [
    ("self.k_pack = 2", "self.k_pack = {kp}"),
    ("return thread_id % 16, (thread_id // 16) * 8 + local_id",
     "return thread_id % 16, (thread_id // 16) * (4 * k_pack) + local_id"),
    ("def forward_thread(i, j):\n                    return i + 16 * (j // 8)",
     "def forward_thread(i, j):\n                    return i + 16 * (j // (4 * self.k_pack))"),
    ("def forward_index(i, j):\n                    return j % 8",
     "def forward_index(i, j):\n                    return j % (4 * self.k_pack)"),
    ("[16, 32],\n                    forward_thread_fn=forward_thread,",
     "[16, 16 * self.k_pack],\n                    forward_thread_fn=forward_thread,"),
    ("[self.warp_rows, self.chunk // 32],",
     "[self.warp_rows, self.chunk // (16 * self.k_pack)],"),
    ("thread_binding = T.KernelLaunchFrame.Current().get_thread_binding()",
     "thread_binding = T.KernelLaunchFrame.Current().get_thread_binding()\n                k_pack = self.k_pack"),
    ("for local_id in T.vectorized(8):",
     "for local_id in T.vectorized(4 * k_pack):"),
    ("b_local_buf[j * 8 + local_id] = b_shared_buf[j * 16 + row, ki * 32 + col]",
     "b_local_buf[j * (4 * k_pack) + local_id] = b_shared_buf[j * 16 + row, ki * (16 * k_pack) + col]"),
    ("a_local_stride = ki * warp_rows * 8",
     "k_pack = self.k_pack\n                a_local_stride = ki * warp_rows * (4 * k_pack)"),
    ("T.grid(2, warp_rows, warp_cols)",
     "T.grid(k_pack, warp_rows, warp_cols)"),
    ("j * 2 + kp,",
     "j * k_pack + kp,"),
    ("a_local_stride // 4 + i * 2 + kp,",
     "a_local_stride // 4 + i * k_pack + kp,"),
    ("k_local = T.alloc_local(qk_mma.warp_cols * 8, dtype)",
     "k_local = T.alloc_local(qk_mma.warp_cols * (4 * qk_mma.k_pack), dtype)"),
    ("for ki in T.serial(dim // 32):",
     "for ki in T.serial(dim // (16 * qk_mma.k_pack)):"),
]
for kp in (1, 2, 4):
    source = base
    if kp != 2:
        for old, new in replacements:
            if source.count(old) != 1:
                raise RuntimeError(f"k_pack={kp}: expected one occurrence of {old!r}, got {source.count(old)}")
            source = source.replace(old, new.format(kp=kp))
        source = source.replace(
            "def _qk_reverse_load_layout(thread_id, local_id):",
            f"def _qk_reverse_load_layout(thread_id, local_id):\n            k_pack = {kp}",
            1,
        )
    path = scratch / f"submission_kp{kp}.py"
    path.write_text(source)
    digest = hashlib.sha256(path.read_bytes()).hexdigest()
    (experiment / f"kpack{kp}.patch").write_text("".join(difflib.unified_diff(
        base.splitlines(keepends=True), source.splitlines(keepends=True),
        fromfile=str(base_path), tofile=str(path))))
    print(kp, digest, path)
