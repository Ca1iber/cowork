from pathlib import Path
import os,sys,json,subprocess,csv,time,datetime,hashlib,fcntl,signal,re,statistics,math
import native_whole_cgroup_utils as U
root=U.root;r=U.r;h=U.h
nplan=json.loads((r/'native_screen_plan.json').read_text());pplan=U.plan
expected_OOM=3
sources={'baseline_v28':(root/'race_tests/nsa/submission.py','42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'),'parent_v084':(root/pplan['numerical_parent'],pplan['parent_sha256']),'parent_CB13':(Path(pplan['CB13_path']),pplan['CB13_SHA']),'candidate_C234':(Path(pplan['candidate_path']),pplan['candidateSHA'])}
sha=lambda p:hashlib.sha256(Path(p).read_bytes()).hexdigest()
runner=Path(nplan['runner']);assert sha(runner)==nplan['runnerSHA']
for p,s in sources.values():assert sha(p)==s
assert json.loads((r/'metadata_semantic_gate.json').read_text())['gate']==0
assert (r/'metadata_semantic_gate.exit').read_text().strip()=='0'
assert (r/'compile_chain.exit').read_text().strip()=='0'
official=json.loads((root/'race_tests/nsa/official_case.json').read_text())
assert len(official)==14 and nplan['expected_cases']==[2]
expected_shared=json.loads((root/'race_tests/nsa/rep/v203_worker2_whole_cgroup_import_subagent2/shared_inputs_final.json').read_text())
assert all(sha(root/p)==q for p,q in expected_shared.items())
print('V234_CASE2_STDLIB_PREFLIGHT0_NO_GPU',flush=True)
