import sys,json,resource
print('IMPORT_CHILD_READY',flush=True)
assert sys.stdin.readline().strip()=='GO'
import tilelang
print(json.dumps({'state':'IMPORT_DONE','tilelang_version':tilelang.__version__,'tilelang_path':tilelang.__file__,'peak_rss_kib':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,'attention_calls':0,'full_reference_count':0}),flush=True)
