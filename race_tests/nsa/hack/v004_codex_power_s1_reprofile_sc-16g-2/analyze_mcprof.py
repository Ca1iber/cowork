import csv
import json
from pathlib import Path
from statistics import median

rep = Path('/root/tilelang-metax/race_tests/nsa/rep/v004_codex_power_s1_reprofile_sc-16g-2')
root = rep / 'mcprof_case6'
assert (root / 'exit_code.txt').read_text().strip() == '0'
metrics = {'Achieved waves': 'achieved_waves', 'Dispatched waves': 'dispatched_waves', 'L2C Hit Rate': 'l2_hit_pct', 'Global Memory Read bytes': 'global_read_bytes', 'Global Memory Write bytes': 'global_write_bytes', 'AP MTE Duty ratio': 'mte_duty_pct', 'AP MMA Duty ratio': 'mma_duty_pct', 'shared memory access efficiency': 'shared_nonconflict_pct', 'average conflict cycles per instruction': 'conflict_extra_cycles', 'average latency per load instruction': 'wg_load_latency_cycles'}
files = sorted((root / 'report_bundle').glob('*native_sparse_attention_kernel.txt.json'))
assert len(files) == 2, files
rows = []
for sample, path in enumerate(files, 1):
    data = json.loads(path.read_text())
    raw = {entry['name']: entry['value'] for values in data.values() for entry in values if entry.get('name') in metrics}
    row = {'case': 6, 'sample': sample}
    for name, column in metrics.items():
        value = str(raw[name]).replace('%', '').replace('byte', '').replace(',', '')
        try:
            row[column] = float(value)
        except ValueError:
            row[column] = None
    assert row['achieved_waves'] == row['dispatched_waves'] == 8192
    rows.append(row)
with (rep / 'mcprof_summary_sc-16g-2.csv').open('w', newline='') as handle:
    writer = csv.DictWriter(handle, fieldnames=rows[0].keys())
    writer.writeheader(); writer.writerows(rows)
print({key: (median(values) if values else None) for key in metrics.values() for values in [[row[key] for row in rows if row[key] is not None]]})
