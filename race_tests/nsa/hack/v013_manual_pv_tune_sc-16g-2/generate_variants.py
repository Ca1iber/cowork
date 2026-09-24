from pathlib import Path
import difflib
import hashlib

root = Path("/root/tilelang-metax/race_tests/nsa")
base_path = root / "submission/v009_nested_metaclass_sc-16g-2/submission.py"
prototype_path = root / "submission/v010_manual_pv_sc-16g-2/submission.py"
base = base_path.read_text()
prototype = prototype_path.read_text()
experiment = root / "experiments/v013_manual_pv_tune_sc-16g-2"
scratch = Path("/tmp/nsa_pv_v013")
scratch.mkdir(exist_ok=True)

start = prototype.index("            def make_mma_load_layout(self, local_buf):", prototype.index("class _ManualMacaPV:"))
end = prototype.index("            def make_mma_store_layout(self, local_buf):", start)
new_method = """            def make_mma_load_layout(self, local_buf):
                warp_rows = self.warp_rows
                k_tiles = self.block_tokens // 16

                def forward_thread(i, j):
                    return (i % 16) + ((j % 16) // 4) * 16

                def forward_index(i, j):
                    return (i // 16) * (k_tiles * 4) + (j // 16) * 4 + j % 4

                return T.Fragment(
                    local_buf.shape,
                    forward_thread_fn=forward_thread,
                    forward_index_fn=forward_index,
                )

"""
assert prototype.count("self.k_pack = block_tokens // 16") == 1
assert prototype.count("a_local_stride = ki * warp_rows * k_pack") == 1
assert prototype.count("a_local_stride + i * k_pack + kp,") == 1
assert prototype.count("if block_tokens == 32:\n                        scores_half_shared") == 1
assert prototype.count("""                            if block_tokens == 32:
                                T.copy(scores, scores_half_shared)
                                T.copy(scores_half_shared, scores_half)
                            else:
                                T.copy(scores, scores_half)""") == 1
src = prototype[:start] + new_method + prototype[end:]
src = src.replace("self.k_pack = block_tokens // 16",
                  "self.block_tokens = block_tokens\n                self.k_pack = min(PACK, block_tokens // 16)", 1)
src = src.replace("a_local_stride = ki * warp_rows * k_pack",
                  "a_local_stride = ki * k_pack\n                a_row_stride = self.block_tokens // 16", 1)
src = src.replace("a_local_stride + i * k_pack + kp,",
                  "a_local_stride + i * a_row_stride + kp,", 1)
src = src.replace("                    if block_tokens == 32:\n                        scores_half_shared = T.alloc_shared([groups, block_tokens], dtype)\n", "", 1)
src = src.replace("""                            if block_tokens == 32:
                                T.copy(scores, scores_half_shared)
                                T.copy(scores_half_shared, scores_half)
                            else:
                                T.copy(scores, scores_half)""",
                  "                            T.copy(scores, scores_half)", 1)
assert "scores_half_shared" not in src
assert src.count("self.k_pack = min(PACK, block_tokens // 16)") == 1

variants = [
    ("direct1", 1, "make_swizzled_layout(v_shared)"),
    ("direct2", 2, "make_swizzled_layout(v_shared)"),
    ("direct1_linear", 1, "tilelang.layout.make_linear_layout(v_shared)"),
    ("direct1_half", 1, "tilelang.layout.make_half_bank_swizzled_layout(v_shared)"),
    ("direct1_quarter", 1, "tilelang.layout.make_quarter_bank_swizzled_layout(v_shared)"),
]
for name, pack, v_layout in variants:
    candidate = src.replace("PACK", str(pack), 1)
    assert candidate.count("v_shared: make_swizzled_layout(v_shared),") == 2
    candidate = candidate.replace("v_shared: make_swizzled_layout(v_shared),",
                                  f"v_shared: {v_layout},")
    path = scratch / f"submission_{name}.py"
    path.write_text(candidate)
    digest = hashlib.sha256(path.read_bytes()).hexdigest()
    (experiment / f"{name}.patch").write_text("".join(difflib.unified_diff(
        base.splitlines(keepends=True), candidate.splitlines(keepends=True),
        fromfile=str(base_path), tofile=str(path))))
    print(name, digest, path)
