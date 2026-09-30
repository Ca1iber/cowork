import csv
import re
from pathlib import Path
from statistics import median

rep = Path('/root/tilelang-metax/race_tests/nsa/rep/v010_codex_power_s8_register_qk_sc-16g-2')
rows = []
for label in ('v007', 'v010'):
    assert (rep / f'hbm_{label}.exit').read_text().strip() == '0'
    text = (rep / f'hbm_{label}.mxsmi.log').read_text(errors='replace')
    values = [int(x) for x in re.findall(r'throughput\s+:\s+(\d+) MBytes/s', text)]
    assert len(values) >= 20, (label, len(values))
    stable = values[5:-5]
    row = {'variant': label, 'samples_total': len(values), 'samples_stable': len(stable), 'active_stable': sum(x > 50000 for x in stable), 'median_gbps': median(stable) / 1000}
    rows.append(row); print(row)
with (rep / 'hbm_summary_sc-16g-2.csv').open('w', newline='') as handle:
    writer = csv.DictWriter(handle, fieldnames=rows[0].keys())
    writer.writeheader(); writer.writerows(rows)
