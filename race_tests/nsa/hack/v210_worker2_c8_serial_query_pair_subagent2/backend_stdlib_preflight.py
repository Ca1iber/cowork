from pathlib import Path
import json,sys,hashlib,subprocess,re
print('BACKEND_CHILD_READY',flush=True);assert sys.stdin.buffer.readline()==b'GO\n'
root=Path('/root/tilelang-metax');r=root/'race_tests/nsa/rep/v210_worker2_c8_serial_query_pair_subagent2';old=root/'race_tests/nsa/rep/v204_worker2_c8_early_v_fetch_subagent2'
rows=json.loads((r/'compiled_metadata_identity.json').read_text());parent,candidate=rows;assert parent['device_sha256']=='24237e8843b6168692cb751c7e1b35455812d40d5b186420ad12694aa506d4a8'
commands=json.loads((old/'backend_commands_results.json').read_text());pr=next(x for x in commands if x['variant']=='parent_v084' and x['kind']=='resource');pi=next(x for x in commands if x['variant']=='parent_v084' and x['kind']=='optimized_ir');assert pr['returncode']==pi['returncode']==0 and pr['input_device_sha256']==pi['input_device_sha256']==parent['device_sha256']
SDK_SHA='5d0e23f021bc2dad273dbf73d5f67e74313428ef27bcca2d165ad106cbf14c25';assert hashlib.sha256(Path(pr['argv'][0]).read_bytes()).hexdigest()==SDK_SHA and pi['argv'][0]==pr['argv'][0]
resourceopts=pr['argv'][:pr['argv'].index('-o')];iropts=pi['argv'][:pi['argv'].index('-o')];oldir=Path(pi['argv'][-1]).with_suffix('.ll');assert hashlib.sha256(oldir.read_bytes()).hexdigest()=='ffc7215d8edfcf7a05a2f2ada3b067e29d6adf307d09a13379273e48e6db3473'
reuse={'new_parent_CPP':parent['device_path'],'CPP_SHA':parent['device_sha256'],'SDK_SHA':SDK_SHA,'exact_recorded_resource_options':resourceopts,'exact_recorded_IR_options':iropts,'old_resource_command':pr,'old_IR_command':pi,'old_resource_log':str(old/'parent_v084_resource.log'),'old_IR_path':str(oldir),'parent_resource_IR_newcommand_count':0,'identity_match':True}
(r/'parent_resource_IR_reuse_identity.json').write_text(json.dumps(reuse,indent=2)+'\n');results=[]
p=Path(candidate['device_path']);assert hashlib.sha256(p.read_bytes()).hexdigest()==candidate['device_sha256'];assert hashlib.sha256(Path(candidate['source_path']).read_bytes()).hexdigest()==candidate['source_sha256']

print("BACKEND_IDENTITIES_VERIFIED_NO_SDK_EXECUTION",flush=True)
