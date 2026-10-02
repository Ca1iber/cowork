from pathlib import Path
import subprocess,json,re,sys
root=Path('/root/tilelang-metax');v='v201_worker2_c5_direct_output_subagent2';r=root/'race_tests/nsa/rep'/v
assert (r/'metadata_recovery.exit').read_text().strip()=='0'
record=json.loads((r/'metadata_identity.json').read_text());src=Path(record['device_path'])
out=r/'resources';out.mkdir()
dest=out/'case5_power_v201.mcbin'
cmd=['/opt/maca/mxgpu_llvm/bin/mxcc','-x','maca','-device-obj','-O3','-lineinfo','--offload-arch=xcore1000','-std=c++17','-I/root/tilelang-metax/src','-use-fast-math','-D__FAST_HALF_CVT__','-resource-usage','-o',str(dest),str(src)]
z=subprocess.run(cmd,capture_output=True,text=True);raw=z.stdout+z.stderr
(out/'case5_power_v201.log').write_text(raw);(out/'case5_power_v201.exit').write_text(str(z.returncode)+'\n')
assert z.returncode==0,raw
m=re.search(r'Used\s+(\d+) MTregisters,\s*(\d+) STregisters,\s*(\d+) bytes shared mem',raw)
w=re.search(r'staticMaxWarps/PEU\s*:\s*(\d+)',raw);stack=re.search(r'(\d+) bytes stack frame',raw);assert m and w and stack
parent=json.loads((root/'race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2/resource_summary.json').read_text())
parent=next(x for x in parent if x['case']==5 and x['variant']=='parent_v084')
d={'case':5,'variant':'power_v201','MT':int(m[1]),'ST':int(m[2]),'static_shared_bytes_reported':int(m[3]),'dynamic_shared_bytes_host':record['dynamic_shared_bytes_host'],'static_max_warps_per_PEU':int(w[1]),'stack_bytes':int(stack[1]),'not_measured_occupancy':True,'parent':parent,'command':cmd}
(r/'resource_summary.json').write_text(json.dumps(d,indent=2)+'\n')
assert d['stack_bytes']==0,d
print(json.dumps(d),flush=True)
