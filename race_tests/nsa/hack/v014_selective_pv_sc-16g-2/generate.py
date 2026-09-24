from pathlib import Path
import difflib,hashlib
root=Path("/root/tilelang-metax/race_tests/nsa")
base_path=root/"submission/v013_manual_pv_tune_sc-16g-2/submission.py"
src=base_path.read_text()
replacements=[
("            pv_mma = _ManualMacaPV(groups, block_tokens, dim)\n            pv_chunks = block_tokens // (16 * pv_mma.k_pack)",
 "            use_manual_pv = use_manual_qk\n            if use_manual_pv:\n                pv_mma = _ManualMacaPV(groups, block_tokens, dim)\n                pv_chunks = block_tokens // (16 * pv_mma.k_pack)"),
("                    pv_b_local = T.alloc_local(pv_mma.warp_cols * pv_mma.k_pack * 4, dtype)",
 "                    if use_manual_pv:\n                        pv_b_local = T.alloc_local(pv_mma.warp_cols * pv_mma.k_pack * 4, dtype)"),
('''                    else:
                        T.annotate_layout(
                            {
                                scores_half: pv_mma.make_mma_load_layout(scores_half),
                                v_shared: tilelang.layout.make_linear_layout(v_shared),
                                output_acc: pv_mma.make_mma_store_layout(output_acc),
                            }
                        )

                    batch_id''',
 '''                    batch_id'''),
('''                            for ki in T.serial(pv_chunks):
                                pv_mma.ldmatrix_b(pv_b_local, v_shared, ki)
                                pv_mma.mma(scores_half, pv_b_local, output_acc, ki)''',
 '''                            if use_manual_pv:
                                for ki in T.serial(pv_chunks):
                                    pv_mma.ldmatrix_b(pv_b_local, v_shared, ki)
                                    pv_mma.mma(scores_half, pv_b_local, output_acc, ki)
                            else:
                                T.gemm(
                                    scores_half,
                                    v_shared,
                                    output_acc,
                                    policy=T.GemmWarpPolicy.FullRow,
                                )'''),
]
for a,b in replacements:
    if src.count(a)!=1: raise RuntimeError((a,src.count(a)))
    src=src.replace(a,b,1)
path=root/"submission/v014_selective_pv_sc-16g-2/submission.py"
path.write_text(src)
(root/"experiments/v014_selective_pv_sc-16g-2/selected.patch").write_text("".join(difflib.unified_diff(base_path.read_text().splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(base_path),tofile=str(path))))
print(hashlib.sha256(path.read_bytes()).hexdigest(),path)
