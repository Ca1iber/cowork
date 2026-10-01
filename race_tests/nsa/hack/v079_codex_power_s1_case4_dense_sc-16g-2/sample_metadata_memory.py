from pathlib import Path
import os,sys,time,json,subprocess
r=Path('/root/tilelang-metax/race_tests/nsa/rep/v079_codex_power_s1_case4_dense_sc-16g-2');pid=int(sys.argv[1]);cg=Path('/sys/fs/cgroup/memory');before=(cg/'memory.oom_control').read_text();peak=0;n=0
f=(r/'metadata_memory_samples.jsonl').open('w')
while True:
 try:os.kill(pid,0)
 except ProcessLookupError:break
 rows=subprocess.check_output(['ps','-eo','pid,pgid,rss,comm'],text=True).splitlines()[1:];owned=[x.split() for x in rows if x.split()[1]==str(pid)];rss=sum(int(x[2]) for x in owned);peak=max(peak,rss);n+=1
 f.write(json.dumps({'pid':pid,'owned_rss_kib':rss,'pids':[int(x[0]) for x in owned]})+'\n');f.flush();time.sleep(1)
f.close();(r/'metadata_memory_summary.json').write_text(json.dumps({'samples':n,'peak_owned_rss_kib':peak,'oom_before':before,'oom_after':(cg/'memory.oom_control').read_text(),'scope':'ownedPGID,late start,not benchmark modification'},indent=2)+'\n')
