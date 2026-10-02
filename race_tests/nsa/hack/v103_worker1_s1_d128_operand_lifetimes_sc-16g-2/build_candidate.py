from pathlib import Path
import ast,hashlib,json,difflib
p=Path('/root/tilelang-metax/race_tests/nsa');v='v103_worker1_s1_d128_operand_lifetimes_sc-16g-2';e=p/'experiments'/v;r=p/'rep'/v;parent=p/'submission/v084_codex_power_s1_d32_d128_pair_sc-16g-2/submission.py';base=parent.read_text();assert hashlib.sha256(parent.read_bytes()).hexdigest()=='4c674c79e4128f3c9f233fa6694c1a8f825d1048293accd9250fb5e2d86472b0';pt=ast.parse(base);factory=next(x for x in pt.body if isinstance(x,ast.FunctionDef) and x.name=='_make_power_s1_v_hybrid_pack');lines=base.splitlines(True);start=min([factory.lineno]+[x.lineno for x in factory.decorator_list]);old=''.join(lines[start-1:factory.end_lineno]);a=old.index('                T.fill(numerator, 0)');b=old.rfind('            for part in T.unroll(4):');assert b>a
replacement="""            for plane in T.unroll(2):
                T.fill(numerator, 0)
                if block_start >= 0 and block_start <= token:
                    for key_tile in T.unroll(2):
                        for chunk in T.unroll(4):
                            for element in T.vectorized(4):
                                v_operand[chunk * 4 + element] = shared[v_slot(
                                    key_tile * 16 + (lane // 16) * 4,
                                    plane * 64 + chunk * 16 + lane % 16) + element]
                        for chunk in T.unroll(4):
                            T.tvm_mfma('16x16x16f16', 'row', 'row',
                                'float16x4', 'float16x4', 'float32x4',
                                v_operand.data, chunk, probabilities.data, key_tile,
                                numerator.data, chunk, dtype='float32x4')
                for head, feature in T.Parallel(groups, 64):
                    numerator[head, feature] /= denominator[0]
                if plane == 0:
                    T.sync_warp()
                for chunk in T.unroll(4):
                    feature_base = chunk * 16 + (lane // 16) * 4
                    for element in T.vectorized(4):
                        shared[out_slot(lane % 16, plane * 64 + feature_base) + element] = numerator[lane % 16, feature_base + element]
            T.sync_warp()
"""
s=old[:a]+replacement+old[b:];s=s.replace('_make_power_s1_v_hybrid_pack','_make_power_s1_pv_plane_reuse').replace('T.alloc_fragment([groups, dim]','T.alloc_fragment([groups, 64]').replace('T.Fragment([groups, dim]','T.Fragment([groups, 64]');ast.parse(s)
helper='# codex-power v103\nimport tilelang\nimport tilelang.language as T\nfrom tilelang.layout import make_swizzled_layout\n\n'+s+'\n';(e/'s1_pv_plane_kernel.py').write_text(helper)
text=base.replace('# codex-power v084','# codex-power v103',1)+'\n\n'+s+'\n_power_install_lazy_code((8,1024,1,16,128,1,32,True), _make_power_s1_pv_plane_reuse)\n';source=Path('/tmp/nsa_power_v103_pv_plane.py');source.write_text(text);ct=ast.parse(text);assert ast.dump(ast.Module(body=ct.body[:len(pt.body)],type_ignores=[]),include_attributes=False)==ast.dump(pt,include_attributes=False)
(e/'source_diff.patch').write_text(''.join(difflib.unified_diff(base.splitlines(True),text.splitlines(True),fromfile=str(parent),tofile=str(source))));(e/'helper_diff.patch').write_text(''.join(difflib.unified_diff(old.splitlines(True),s.splitlines(True),fromfile='parent84 ownhybridfactory',tofile='s1_pv_plane_kernel.py')))
(r/'source_identity.json').write_text(json.dumps({'candidate_path':str(source),'candidate_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'parent_sha256':hashlib.sha256(parent.read_bytes()).hexdigest(),'parent_AST_prefix_exact':True,'dispatch_cases':[6],'other13keys_math_exact_parent':True,'global_QKV_staging_prefix_preserved_except_Numshape':True,'final_global16B_gather_store_tail_exact':s[s.rfind('            for part in T.unroll(4):'):]==old[b:],'denominator_and_P8_unchanged':True,'new_Numerator_fragment_shape':[16,64],'metadata_resource_required_not_assumed':True},indent=2)+'\n');print('BUILT',hashlib.sha256(source.read_bytes()).hexdigest())
