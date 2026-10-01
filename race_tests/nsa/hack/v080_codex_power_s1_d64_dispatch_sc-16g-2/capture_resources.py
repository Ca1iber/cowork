from pathlib import Path
import subprocess,json,re
root=Path('/root/tilelang-metax/race_tests/nsa');r=root/'rep/v080_codex_power_s1_d64_dispatch_sc-16g-2';out=r/'resources';out.mkdir(exist_ok=True);rows=[]
for ci in [2,5,7,8,9,13,14]:
 src=r/('codegen_formal/power_v080/case'+str(ci)+'_stage1.device.cpp');dest=out/('case'+str(ci)+'.mcbin')
 cmd=['/opt/maca/mxgpu_llvm/bin/mxcc','-x','maca','-device-obj','-O3','-lineinfo','--offload-arch=xcore1000','-std=c++17','-I/root/tilelang-metax/src','-use-fast-math','-D__FAST_HALF_CVT__','-resource-usage','-o',str(dest),str(src)]
 x=subprocess.run(cmd,capture_output=True,text=True);log=x.stdout+x.stderr;(out/('case'+str(ci)+'.log')).write_text(log);(out/('case'+str(ci)+'.exit')).write_text(str(x.returncode)+'\n');rows.append({'case':ci,'command':cmd,'exit':x.returncode,'raw':log});assert x.returncode==0;print(ci,log,flush=True)
(r/'resource_capture.json').write_text(json.dumps(rows,indent=2)+'\n')
