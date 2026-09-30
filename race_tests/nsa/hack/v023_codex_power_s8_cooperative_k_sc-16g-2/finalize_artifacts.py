import ast,csv,difflib,hashlib,json,subprocess
from pathlib import Path
repo=Path('/root/tilelang-metax');root=repo/'race_tests/nsa';id='v023_codex_power_s8_cooperative_k_sc-16g-2'
exp,hack,rep,sub=[root/x/id for x in ('experiments','hack','rep','submission')]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
identity=json.loads((rep/'paired_source_hashes.json').read_text())
assert sha(exp/'candidate.py')==identity['v023']
assert sha(root/'submission.py')=='e51d49834fdf06bb02f4c7c2ea0bc2bbc9d6a95b81578e58c2317eee0bdfbe76'
t=ast.parse((exp/'candidate.py').read_text())
assert [ast.unparse(x) for x in t.body if isinstance(x,(ast.Import,ast.ImportFrom))]==['import tilelang','import tilelang.language as T','from tilelang.layout import make_swizzled_layout']
assert (exp/'candidate.py').read_text().startswith('# codex-power v023\n')
assert not any(isinstance(x,ast.ClassDef) for x in ast.walk(t))
parent=root/'experiments/v022_codex_power_s1_past_block_mask_sc-16g-2/candidate.py'
old=ast.parse(parent.read_text())
for name in ('_make_native_sparse_attention','run_kernel'):
 assert ast.dump(next(x for x in t.body if isinstance(x,ast.FunctionDef) and x.name==name))==ast.dump(next(x for x in old.body if isinstance(x,ast.FunctionDef) and x.name==name))
(exp/'source_diff.patch').write_text(''.join(difflib.unified_diff(parent.read_text().splitlines(True),(exp/'candidate.py').read_text().splitlines(True),fromfile=str(parent.relative_to(repo)),tofile=str((exp/'candidate.py').relative_to(repo)))))
for name in ('paired_all14.exit','screen_case12.exit','oj_static.exit','codegen.exit','case12.resource.exit','llvm_compile.exit','llvm_dis.exit','mctracer.exit','torchprof.exit','torchprof_case2_v023.exit','torchprof_case2_v028.exit'):
 assert (rep/name).read_text().strip()=='0',name
rows=list(csv.DictReader((rep/'paired_all14_sc-16g-2.csv').open()))
assert len(rows)==56 and all(x['status']=='PASS' for x in rows)
for folder in ('mcprof_v023','mcprof_v028','mcprof_retry_v023'):
 assert (rep/folder/'exit_code.txt').read_text().strip()=='0'
metrics=json.loads((rep/'mcprof_summary.json').read_text());assert all(x['read_bytes'] is not None for x in metrics)
a=json.loads((rep/'paired_summary.json').read_text())
report='# v023 K staging / sc-16g-2\n\n## 1. \u4e0a\u7248\u672c\u9057\u7559\u95ee\u9898\n\ncase12 \u81ea\u4e3b v016 \u8def\u5f84\u5386\u53f2\u914d\u5bf9 114.7775us\uff0c v28 83.8065us\u3002 v022 \u53ea\u6539 case6\u3002\n\n## 2. \u95ee\u9898\u539f\u56e0\u5206\u6790\n\n\u4e0a\u7248 K \u4f7f\u7528 MFMA \u6620\u5c04\u76f4\u63a5\u8bfb\u5168\u5c40\u5185\u5b58\u3002\u5047\u8bbe\uff1a\u534f\u4f5c\u5411\u91cf\u52a0\u8f7d\u6539\u5584\u8bbf\u5b58\u7ec4\u7ec7\u3002\n\n## 3. \u672c\u7248\u672c\u89e3\u51b3\u65b9\u6848\n\nK global -> shared -> register MFMA; Q \u4fdd\u7559\u5bc4\u5b58\u5668\u590d\u7528\u3002\n\n## 4. \u5177\u4f53\u843d\u5730\u7b56\u7565\n\n\u53ea\u6539 case12 K \u642c\u8fd0\u3002 two uint4 global rounds; four uint2 shared operand reads. 64 threads, 70MT/28ST registers, 4608B dynamic shared, zero stack. \u7f16\u8bd1\u5668 staticMaxWarps 7 \u4e0d\u662f\u5b9e\u6d4b occupancy\u3002 generic helper/run_kernel AST \u4e0e v022 \u76f8\u540c\u3002\n\n## 5. Benchmark \u5bf9\u6bd4\n\nNative warmup10/repeat50, v28/v023 ABBA, full naive_nsa reference. 56/56 PASS. bash hack/'+id+'/run_pair14.sh\n\n|case|v28 us|v023 us|delta|\n|--:|--:|--:|--:|\n'
for x in a['cases']:report+=f"|{x['case']}|{x['v028_us']:.3f}|{x['v023_us']:.3f}|{x['delta_pct']:+.2f}%|\n"
report+='\n\u4e0a\u7248\u672c case12 114.7775us \u6765\u81ea\u5386\u53f2\u914d\u5bf9\uff0c\u672c\u8f6e\u672a\u540c\u6b65\u590d\u6d4b\u3002 OJ \u5206\u6570\u672a\u77e5\u3002\n\n## 6. Profile \u6307\u6807\u53d8\u5316\n\nmcTracer last20 \u4e2d\u4f4d\u6570 96.896us; torchprof 30 \u6b21 96.896us. \u8ba1\u6570\u5668\u7b2c\u4e00\u6b21\u7f3a\u5931\uff0c\u8865\u91c7\u6709\u6548\uff1a v023 MTE54.89-54.95%, MMA9.04-9.05%, L2hit89.31%, conflict1.67; v28 MTE62.98-63.03%, MMA11.11-11.12%, L2hit91.66%, conflict2.82. \u603b\u6d41\u91cf\u7ea6 17.95/17.96MB\u3002 Roofline model CSV \u533a\u5206\u903b\u8f91\u8bf7\u6c42\u4e0e\u7269\u7406\u8ba1\u6570\uff1b compute roof UNKNOWN. matplotlib \u4e0d\u53ef\u7528\uff0c\u672a\u5b89\u88c5\u3002 LLVM IR/resource \u5df2\u5b58\u6863\uff0c ISA \u5de5\u5177\u4e0d\u53ef\u7528\u3002 mx-smi \u9759\u6001\u5feb\u7167\u5df2\u5b58\u6863\uff0c\u672a\u65b0\u91c7 sustain HBM\u3002\n\ncase2 torchprof GPU \u4e24\u7248\u5747 5.888us\uff0c launch period v02310.496us / v288.704us\u3002\u63d0\u793a host dispatch \u5f00\u9500\u9700\u8981\u5355\u72ec\u9a8c\u8bc1\u3002\n\n## 7. \u5b9e\u9a8c\u603b\u7ed3\n\n\u5c40\u90e8\u6536\u76ca\uff0c\u4f46\u76f8\u5bf9 v28 \u5168\u91cf\u95e8\u7981\u5931\u8d25\u3002\u4e0d\u63a8\u8350\u66ff\u6362 v28\u3002\u4e0b\u4e00\u6b65\u5148\u9a8c\u8bc1 kernel object \u7f13\u5b58\u964d\u4f4e host factory \u5f00\u9500\uff1b case12 \u518d\u9a8c\u8bc1 Q \u534f\u4f5c\u52a0\u8f7d\u3002\n'
(rep/'report_sc-16g-2.md').write_text(report)
(sub/'UNAVAILABLE.md').write_text('Rejected for final use: full14 latency gate versus v28 fails; no OJ result. Root v013 unchanged; use v28 for requested comparison. Candidate is experiments/'+id+'/candidate.py.\n')
paths=[p for d in (exp,hack,rep,sub) for p in d.rglob('*') if p.is_file() and p.name not in ('artifact_hashes_sc-16g-2.txt','manifest_sc-16g-2.json')]
index=rep/'artifact_hashes_sc-16g-2.txt';index.write_text(''.join(f'{sha(p)}  {p.relative_to(repo)}\n' for p in sorted(paths)))
manifest={'iteration':id,'status':'local_gain_but_full14_v28_gate_failed','parent_commit':subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),'source_sha256':identity,'reference':'56/56 full14 PASS','paired_all14':a,'mcProfiler':'two valid target samples, two valid v023 retry samples; first incomplete samples retained','mcTracer':'20 steady launches96.896us','ISA':'UNKNOWN; LLVM archived','OJ':'UNKNOWN','artifact_index_sha256':sha(index)}
(rep/'manifest_sc-16g-2.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('finalized',len(paths),'files')
