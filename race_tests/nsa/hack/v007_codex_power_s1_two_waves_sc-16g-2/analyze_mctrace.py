import csv
import gzip
import json
from pathlib import Path
from statistics import median

rep = Path('/root/tilelang-metax/race_tests/nsa/rep/v007_codex_power_s1_two_waves_sc-16g-2')
rows = []
for label in ('v000', 'v007'):
    path = next((rep / f'mctrace_{label}').glob('*.json*'))
    if path.suffix == '.gz':
        with gzip.open(path, 'rt') as handle:
            events = json.load(handle)['traceEvents']
    else:
        events = json.loads(path.read_text())['traceEvents']
    target = sorted((event for event in events if event.get('cat') == '0' and 'native_sparse_attention_kernel' in str(event.get('name', ''))), key=lambda event: event['ts'])
    assert len(target) == 31, (label, len(target))
    selected = target[-20:]
    durations = [event['dur'] / 1000 for event in selected]
    gaps = [(selected[i+1]['ts'] - selected[i]['ts'] - selected[i]['dur']) / 1000 for i in range(19)]
    row = {'variant': label, 'all_target_events': len(target), 'selected_events': len(selected), 'kernel_median_us': median(durations), 'gap_median_us': median(gaps), 'trace_file': str(path.relative_to(rep))}
    rows.append(row); print(row)
with (rep / 'mctrace_summary_sc-16g-2.csv').open('w', newline='') as handle:
    writer = csv.DictWriter(handle, fieldnames=rows[0].keys())
    writer.writeheader(); writer.writerows(rows)
