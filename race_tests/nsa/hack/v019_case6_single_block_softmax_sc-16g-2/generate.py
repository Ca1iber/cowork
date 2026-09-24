from pathlib import Path
import difflib,hashlib,textwrap
root=Path("/root/tilelang-metax/race_tests/nsa")
parent=root/"submission/v016_case6_shared_conflict_sc-16g-2/submission.py"
base=parent.read_text()
start=base.index("                            T.copy(block_max, previous_max)")
end=base.index("                            T.copy(\n                                V[",start)
old=base[start:end]
assert old.count("output_acc[head, feature] *= rescale[head]")==1
special='''                            T.fill(block_max, -T.infinity(accum_dtype))
                            T.reduce_max(scores, block_max, dim=1, clear=True)
                            for head, offset in T.Parallel(groups, block_tokens):
                                scores[head, offset] = T.exp2(
                                    scores[head, offset] * scale - block_max[head] * scale
                                )
                            T.reduce_sum(scores, block_sum, dim=1)
                            for head in T.Parallel(groups):
                                denominator[head] = block_sum[head]
                            T.copy(scores, scores_half)
'''
new="                            if block_size == 32 and selected_blocks == 1:\n"+textwrap.indent(special,"    ")+"                            else:\n"+textwrap.indent(old,"    ")
src=base[:start]+new+base[end:]
path=Path("/tmp/nsa_v019/submission_single_block.py")
path.write_text(src)
(root/"experiments/v019_case6_single_block_softmax_sc-16g-2/single_block.patch").write_text("".join(difflib.unified_diff(base.splitlines(keepends=True),src.splitlines(keepends=True),fromfile=str(parent),tofile=str(path))))
print(hashlib.sha256(path.read_bytes()).hexdigest(),path)
