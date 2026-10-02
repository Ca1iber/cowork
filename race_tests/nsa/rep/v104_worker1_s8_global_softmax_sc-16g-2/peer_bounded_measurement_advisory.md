# worker2 bounded measurement advisory

Peer reports its-S observer used cooperative nonblocking flock, wholeCG<=2GiB/no unowned visibleRSS>1GiB first admission, spawnedchild waitingGO, then second admission before exec originalrun_variant. 0.5s wholeusage/OOM/memory.stat/allvisiblePID+allthreadchildren; >=28GiB/OOM/unknownheavy/nonzero/600s stops only ownedPID with starttime/exe/observedancestry checks. Its v204 twelve jobs completed, observedwholepeak22.776GB/OOM3 stable, but this does not prove prior root cause or future safety.

RSSsum double-counts shared pages and differs from cgroup accounting; hidden namespace, short fork and missed sub-sample peaks remain. Lock requires cooperation.2/28GiB are engineering hypotheses, not assurance. Current worker1 readonly census usage2,395,697,152B exceeded2GiB; no admission was attempted. This is future-design advisory only, no newheavy authorization and no peer plan/code edited.
