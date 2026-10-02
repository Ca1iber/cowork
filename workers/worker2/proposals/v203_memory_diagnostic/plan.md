# v203 proposal: whole-cgroup admission and one import observation

Status: readonly/offline planning only. No new kernel, candidate, heavy import, attention or native run. Leader GO required before the single proposed import.

## Observations and unknowns

v202 source c993479f closed run10 SIGKILL/-9 and cgroup OOM1→3. Native PID102320 only logged Loading tilelanglibs before CSV/PASS,0reference. Its observed RSS/HWM did not describe the complete32GiB cgroup. historical_accounting_gap.json preserves21 samples and the arithmetic usage−PIDRSS difference; this is not a measurement of another process's memory.

Runtime marker PID102519 appeared5s after102320, but owner, ancestry and exact component are UNKNOWN. Directchildren snapshots alone cannot exclude thread forks, short processes or daemons. PIDreuse requires identity by PID+starttime; PPID1 alone cannot establish external ownership. No marker contents/cmdline/environment have been read; no cleanup or signals sent.

Fresh python -S stdlib census records29 visible PIDs, PPID/PGID/starttime/comm/exe/RSS/HWM/cgroup/all-threadchildren and wholememory.stat/usage/limit/OOM. Observer107184 RSS16MiB, currentusage≈845MB, limit34359738368B, OOM3. This current snapshot cannot reconstruct failed-job census, prove all historical leader probes harmless, or prove the next import safe. Leader's representative106121 probeRSS11,520KiB and noheavyroots only documents that probe.

## Falsifiable hypothesis

Coexisting imports or other charged memory may explain why single-source childRSS stayed belowlimit whilewholecgrouphitlimit. It is not proven. A cooperative single-heavy admission gate plus whole-cgroup/all-visible-process sampling can bound and detect observed concurrent pressure; it does not guarantee noOOM or identify historical victims.

## Proposed maximum scope after separate leader GO

One isolated existing-environment tilelang import process only, no run_kernel, allocations for attention, reference or native timing. Same unchanged libraries, sourcebranch and GPU/limit settings. Exact module-import command/identity/stdout/PID/starttime/PGID recorded before launch. No secondattempt in v203, no compiler/profile/native to follow automatically.

One /opt/conda/bin/python -S observer,0.5s JSONL snapshots, maximum300s or600 samples, storing to disk rather than growing an in-memory list. Capture wholecgroup usage/stat/OOM/limit and every visiblePID's allowed lightweight metadata. Read each thread children and also PPIDlinks, track observed ancestry even if later reparented, use starttime to detectreuse. No unfamiliarcmdline/env/markercontents or kernel-buffer permission bypass.

## Admission and engineering reserve

Proposed conservative import budget26GiB plus4GiB headroom under32GiB. These are chosen engineering thresholds based on recorded successful~23GiB import/job observations, not measured upperbounds or guarantees. Reject launch unless currentwholeusage≤2GiB and no unrelated visiblePID RSS>1GiB. Unknown mappings/accounting or a busycgroup are refusal/inconclusive reasons, not permission to remove work.

All team heavy operations in this container must voluntarily hold the same nonblocking exclusive lock (for example /tmp/nsa_subagent2_heavy.lock), with ownerPID/starttime/PGID recorded. The -S observer and standard-library probes remainlight. Lock is cooperative and cannot prevent user/uncooperative/namespace-hidden launches. Do not delete anotherlock or infer staleowner from PIDalone.

During the once-only import, stop on wholeusage≥28GiB (4GiB remaining), OOMincrement, new unownedvisibleheavyPID/concurrentknownheavy, nonzero/importfailure or300s timeout. Stop only our verified owned importPID with PID+starttime identity; no signals to otherprocesses, no resets/limit/GPU changes. If a child needs termination, only actually observed owned ancestry qualifies; no PPID1/name-basedkill. Record partial evidence and no retry. A transient between0.5s samples can still reachOOM before the guard acts.

## Interpretation and closure

Success means only the single observed import exited0 under the admitted conditions withunchangedOOM. It does not establish thev202 rootcause, guarantee laternative/compile safety, or recover thefailed12 screen. Abort/refusal/failure closes with exactraw and unknowns. All original v202 -9/OOM1→3/3C9reference observations remain immutable.

No benchmark or hot W10R50 changes, no numerical/result caching, no new submission. Named diagnostic v203 will follow NSA version evidence/report/bilingual scopedcommit after execution; current files are proposal artifacts in worker2-owned communication paths. Peeradvice is advisory, leader authorizes any execution.

## Peer advisory incorporated

Record observerRSS and samplingmisses; labelmemory.stat local/total fields separately. RSS sums maydoublecountshared pages and differ from cgroupcharged cache/kernel/namespace-hidden accounting; usage−PIDRSS is not attributable memory. Lock requires a secondwholeusage/knownheavy check immediatelybefore andafter admission; it is not a universalnamespace lock. Abort onlyPID+starttime+exe verifiedowner, then actualwait/returncode; do not classify unknown/reparentedprocesses byPPID1. NoOOM underonesample means observedcompletion only, not historicalrootcause resolution.
