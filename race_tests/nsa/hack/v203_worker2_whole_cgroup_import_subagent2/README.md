# v203 one admitted import

import_once.py preserves normal Python environment, emits READY, waits stdin GO, imports tilelang once, reports version/path/RUSAGE_SELF. No kernel/native/reference/attention.

observe_import_once.py runs python -S/stdlib only. Exclusive once guard/nonblocking heavy lock, pre/post admission checks, bounded0.5s JSONL census+wholecgroup, verified owned identity termination only. Exact argv/script hashes in launch_manifest. Actual no signals/retries.

67samples/34.2664s/import0/OOM3 unchanged; accounting gaps and sampling limits are retained. A successful single observation does not identify historical rootcause or guarantee later work. No source/benchmark changes or new submission.
