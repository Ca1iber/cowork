from pathlib import Path
import sys,json,importlib.util,time,resource,hashlib
import tilelang
from tilelang.jit.kernel import JITKernel
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v081_codex_power_s24_lazy_dispatch_sc-16g-2');label=sys.argv[1];source=Path(sys.argv[2]);before=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss;start=time.perf_counter();spec=importlib.util.spec_from_file_location(label,source);m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);elapsed=time.perf_counter()-start;entries=m._KERNEL_CACHE;compiled=sum(isinstance(x,JITKernel) for x in entries.values());lazy=sum(callable(x) and getattr(x,'__name__',None)=='first_call' for x in entries.values())
if label=='power_v081':
 assert compiled==0 and lazy==12 and len(entries)==12
 for key,fn in entries.items():assert fn.__code__.co_freevars==('factory','key') and fn.__closure__[1].cell_contents==key
elif label=='parent_v080':assert compiled==2 and lazy==8 and len(entries)==10
else:raise ValueError(label)
info={'variant':label,'source':str(source),'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'source_exec_seconds':elapsed,'process_peak_rss_before_source_kib':before,'process_peak_rss_after_source_kib':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,'compiled_JITKernel_entries':compiled,'lazy_code_entries':lazy,'attention_calls':0,'scope':'one independent-process import observation; not official kernel latency, not OOM stability proof'};(r/('cold_import_'+label+'.json')).write_text(json.dumps(info,indent=2)+'\n');print(json.dumps(info,indent=2))
