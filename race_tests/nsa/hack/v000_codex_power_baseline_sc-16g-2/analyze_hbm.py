import csv
import re
from pathlib import Path
from statistics import median

rep = Path('/root/tilelang-metax/race_tests/nsa/rep/v000_codex_power_baseline_sc-16g-2')
assert (rep / 'hbm_case12.exit').read_text().strip() == '0'
text = (rep / 'hbm_case12.mxsmi.log').read_text(errors='replace')
values = [int(x) for x in re.findall(r'throughput\s+:\s+(\d+) MBytes/s', text)]
assert len(values) >= 20, len(values)
stable = values[5:-5]
row = {'case': 12, 'samples_total': len(values), 'samples_stable': len(stable), 'active_stable': sum(x > 50000 for x in stable), 'median_gbps': median(stable) / 1000}
with (rep / 'hbm_summary_sc-16g-2.csv').open('w', newline='') as handle:
    writer = csv.DictWriter(handle, fieldnames=row.keys())
    writer.writeheader(); writer.writerow(row)
print(row)
