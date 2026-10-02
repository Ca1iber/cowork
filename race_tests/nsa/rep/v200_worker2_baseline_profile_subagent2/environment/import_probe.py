import sys,json,resource
import tilelang
import torch
print(json.dumps({'tilelang_version':getattr(tilelang,'__version__',None),'tilelang_file':tilelang.__file__,'torch_version':torch.__version__,'python':sys.version,'maxrss_kib':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}),flush=True)
