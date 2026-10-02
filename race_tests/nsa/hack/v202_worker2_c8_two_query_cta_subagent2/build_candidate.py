from pathlib import Path
import ast,copy,json,hashlib,difflib
root=Path('/root/tilelang-metax');v='v202_worker2_c8_two_query_cta_subagent2';r=root/'race_tests/nsa/rep'/v;x=root/'race_tests/nsa/experiments'/v
plan=json.loads((r/'plan.json').read_text());src=root/plan['parent_source'];s=src.read_text();assert hashlib.sha256(s.encode()).hexdigest()==plan['parent_sha256']
tree=ast.parse(s);parent=next(n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name=='_make_power_s1_case4_dense');n=copy.deepcopy(parent);n.name='_make_worker2_c8_two_query_cta'
kernel=next(f for f in n.body if isinstance(f,ast.FunctionDef) and f.name=='native_sparse_attention');w=kernel.body[0];assert isinstance(w,ast.With)
call=w.items[0].context_expr;call.args[0]=ast.parse('(seq_len+1)//2',mode='eval').body
next(k for k in call.keywords if k.arg=='threads').value=ast.Constant(128);w.items[0].optional_vars.elts[0].id='pair'
body=w.body
lanei=next(i for i,q in enumerate(body) if isinstance(q,ast.Assign) and isinstance(q.targets[0],ast.Name) and q.targets[0].id=='lane')
newbind=ast.parse('tid = T.KernelLaunchFrame.Current().get_thread_binding()\ngroup = tid // 64\nlane = tid % 64\ntoken = pair * 2 + group\nshared_base = group * 1024').body
body[lanei:lanei+1]=newbind
shared=next(q for q in body if isinstance(q,ast.Assign) and isinstance(q.targets[0],ast.Name) and q.targets[0].id=='shared')
shared.value.args[0].elts[0]=ast.Constant(2048)
class Offset(ast.NodeTransformer):
 def visit_Subscript(self,node):
  node=self.generic_visit(node)
  if isinstance(node.value,ast.Name) and node.value.id=='shared':node.slice=ast.BinOp(ast.Name('shared_base',ast.Load()),ast.Add(),node.slice)
  return node
start=next(i for i,q in enumerate(body) if isinstance(q,ast.For))
origops=copy.deepcopy(body[start:]);ops=[Offset().visit(copy.deepcopy(q)) for q in origops]
w.body=body[:start]+[ast.If(ast.Compare(ast.Name('token',ast.Load()),[ast.Lt()],[ast.Name('seq_len',ast.Load())]),ops,[])]
class UndoOffset(ast.NodeTransformer):
 def visit_Subscript(self,node):
  node=self.generic_visit(node)
  if isinstance(node.value,ast.Name) and node.value.id=='shared':
   assert isinstance(node.slice,ast.BinOp) and isinstance(node.slice.left,ast.Name) and node.slice.left.id=='shared_base'
   node.slice=node.slice.right
  return node
restored=[UndoOffset().visit(copy.deepcopy(q)) for q in ops]
assert ast.dump(ast.Module(restored,[]),include_attributes=False)==ast.dump(ast.Module(origops,[]),include_attributes=False)
assert not any(isinstance(q,ast.Attribute) and q.attr in ['alloc_fragment','Parallel','annotate_layout','sync_threads'] for q in ast.walk(n))
ast.fix_missing_locations(n);helper=ast.unparse(n)+'\n'
assert helper.count('T.sync_warp()')==7
(x/'two_query_cta_kernel.py').write_text(helper)
candidate='# codex-power v202\n'+s.split('\n',1)[1]+'\n\n'+helper+'\n_power_install_lazy_code((2,4096,1,16,64,1,16,True), _make_worker2_c8_two_query_cta)\n'
p=Path(plan['candidate_path']);p.write_text(candidate)
ctree=ast.parse(candidate);assert ast.dump(ast.Module(ctree.body[:len(tree.body)],[]),include_attributes=False)==ast.dump(tree,include_attributes=False)
(x/'source_diff.patch').write_text(''.join(difflib.unified_diff(s.splitlines(keepends=True),candidate.splitlines(keepends=True),fromfile=str(src),tofile=str(p))))
identity={'candidate_path':str(p),'candidate_sha256':hashlib.sha256(candidate.encode()).hexdigest(),'parent_sha256':plan['parent_sha256'],'fullparent_prefix_AST_unchanged':True,'numerical_query_ops_AST_equal_after_removing_shared_base':True,'only_installer_key':plan['target_key'],'factory_name':n.name,'metadata_device_path':str(r/'codegen/power_v202/case8_stage1.device.cpp'),'metadata_host_path':str(r/'codegen/power_v202/case8_stage1.host.cpp'),'attention_ref_counts':[0,0],'no_fragment_Parallel_annotation_implicit64_domain':True,'raw_tid_only_binding':'group=tid//64;lane=tid%64','group_uses':['token','shared_base'],'predicate_uniform_within_query_warp':True}
(r/'source_identity.json').write_text(json.dumps(identity,indent=2)+'\n')
print('V202_CANDIDATE_SHA',identity['candidate_sha256'])
