from pathlib import Path
import subprocess,json,re
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v200_worker2_baseline_profile_subagent2')
out=r/'resources';out.mkdir();records=[];summary=[]
for ci in [5,8,9]:
 for label in ['baseline_v28','parent_v084']:
  src=r/f'codegen/{label}/case{ci}_stage1.device.cpp'
  dest=out/f'case{ci}_{label}.mcbin'
  cmd=['/opt/maca/mxgpu_llvm/bin/mxcc','-x','maca','-device-obj','-O3','-lineinfo','--offload-arch=xcore1000','-std=c++17','-I/root/tilelang-metax/src','-use-fast-math','-D__FAST_HALF_CVT__','-resource-usage','-o',str(dest),str(src)]
  x=subprocess.run(cmd,capture_output=True,text=True);raw=x.stdout+x.stderr
  (out/f'case{ci}_{label}.log').write_text(raw)
  (out/f'case{ci}_{label}.exit').write_text(str(x.returncode)+'\n')
  records.append({'case':ci,'variant':label,'command':cmd,'exit':x.returncode,'raw':raw})
  assert x.returncode==0
  m=re.search(r'Used\s+(\d+) MTregisters,\s*(\d+) STregisters,\s*(\d+) bytes shared mem',raw)
  w=re.search(r'staticMaxWarps/PEU\s*:\s*(\d+)',raw);stack=re.search(r'(\d+) bytes stack frame',raw)
  assert m and w and stack,raw
  s=(r/f'codegen/{label}/case{ci}_stage1.host.cpp').read_text();idx=11 if label=='baseline_v28' else 10
  lines=[l for l in s.splitlines() if '.v_int64)' in l and '['+str(idx)+']' in l];assert len(lines)==1
  dyn=int(re.search(r'int64_t\)(\d+)',lines[0])[1])
  summary.append({'case':ci,'variant':label,'MT':int(m[1]),'ST':int(m[2]),'static_shared_bytes_reported':int(m[3]),'dynamic_shared_bytes_host':dyn,'stack_bytes':int(stack[1]),'static_max_warps_per_PEU':int(w[1]),'not_measured_occupancy':True})
  print(summary[-1],flush=True)
(r/'resource_capture.json').write_text(json.dumps(records,indent=2)+'\n')
(r/'resource_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
