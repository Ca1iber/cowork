from pathlib import Path
import os,sys,json,subprocess,csv,time,datetime,hashlib,fcntl,signal,re,statistics,math
import native_whole_cgroup_utils as U
root=U.root;r=U.r;h=U.h
nplan=json.loads((r/'native_screen_plan.json').read_text());pplan=U.plan
expected_OOM=3
sources={'baseline_v28':(root/'race_tests/nsa/submission.py','42911561dd0c60770cf9815607ca08794c98f1dd9d4ee2abfe9ef6bd70bca6dd'),'parent_v084':(root/pplan['numerical_parent'],pplan['parent_sha256']),'power_v227':(Path(pplan['candidate_path']),'515f9246eb8f103d7be5df1e8029f38e8b1a44922400ace64316fb47b1cb7fa7')}
sha=lambda p:hashlib.sha256(Path(p).read_bytes()).hexdigest()
runner=Path(nplan['runner']);assert sha(runner)==nplan['runnerSHA']
for p,s in sources.values():assert sha(p)==s
assert json.loads((r/'metadata_semantic_gate.json').read_text())['gate']==0
assert (r/'metadata_semantic_gate.exit').read_text().strip()=='0'
assert (r/'compile_chain.exit').read_text().strip()=='0'
expected_shared=json.loads((root/'race_tests/nsa/rep/v203_worker2_whole_cgroup_import_subagent2/shared_inputs_final.json').read_text())
assert all(sha(root/p)==q for p,q in expected_shared.items())

print("V227_NATIVE_PREFLIGHT0_NO_GPU",flush=True)
