from pathlib import Path
import subprocess,json,re,hashlib
p=Path('/root/tilelang-metax/race_tests/nsa');r=p/'rep/v103_worker1_s1_d128_operand_lifetimes_sc-16g-2';src=r/'codegen_precompile/power_v103/case6_stage1.device.cpp';host=src.with_name('case6_stage1.host.cpp');out=r/'resources';out.mkdir(exist_ok=True)
cmd=['/opt/maca/mxgpu_llvm/bin/mxcc','-x','maca','-device-obj','-O3','-lineinfo','--offload-arch=xcore1000','-std=c++17','-I/root/tilelang-metax/src','-use-fast-math','-D__FAST_HALF_CVT__','-resource-usage','-o',str(out/'candidate_case6.mcbin'),str(src)]
x=subprocess.run(cmd,capture_output=True,text=True);raw=x.stdout+x.stderr;(out/'candidate_case6.log').write_text(raw);(r/'precompile_resources.exit').write_text(str(x.returncode)+'\n');assert x.returncode==0
m=re.search(r'Used\s+(\d+) MTregisters,\s*(\d+) STregisters,\s*(\d+) bytes shared mem',raw);w=re.search(r'staticMaxWarps/PEU\s*:\s*(\d+)',raw);stack=re.search(r'(\d+) bytes stack frame',raw);lines=[l for l in host.read_text().splitlines() if '.v_int64)' in l and '[10]' in l];assert len(lines)==1
info={'command':cmd,'device_path':str(src),'device_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),'host_sha256':hashlib.sha256(host.read_bytes()).hexdigest(),'MT':int(m[1]),'ST':int(m[2]),'static_shared_bytes':int(m[3]),'dynamic_shared_bytes':int(re.search(r'int64_t\)(\d+)',lines[0])[1]),'stack_bytes':int(stack[1]),'static_max_warps':int(w[1]),'not_measured_occupancy':True};(r/'precompile_resources.json').write_text(json.dumps(info,indent=2)+'\n');print(json.dumps(info))

cpp=src.read_text();info['actual_num16']=('float numerator[16];' in cpp and 'float numerator[32];' not in cpp)
info['resource_gate_pass']=info['MT']<100 and info['static_max_warps']>=4 and info['stack_bytes']==0 and info['actual_num16']
(r/'precompile_resource_gate.json').write_text(json.dumps(info,indent=2)+'\n');print('RESOURCE_GATE',info['resource_gate_pass'])
