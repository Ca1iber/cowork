import csv
from pathlib import Path

rep = Path('/root/tilelang-metax/race_tests/nsa/rep/v007_codex_power_s1_two_waves_sc-16g-2')
queries = 8 * 1024 * 16
selected_tokens = 32
width = 128
flops = queries * selected_tokens * width * 4
q_and_output = queries * width * 2 * 2
kv_unique = 8 * 1024 * 1 * width * 2 * 2
indices = 8 * 1024 * 1 * 1 * 4
minimum_bytes = q_and_output + kv_unique + indices
observed = {'v000': 218.112, 'v007': 157.440}
rows = []
for label, kernel_us in observed.items():
    for bandwidth in (1400.0, 1843.2):
        rows.append({'variant': label, 'case': 6, 'flops': flops, 'minimum_bytes': minimum_bytes,
                     'intensity_flop_per_byte': flops / minimum_bytes,
                     'hbm_roof_gbps': bandwidth,
                     'hbm_transfer_floor_us': minimum_bytes / (bandwidth * 1000),
                     'observed_kernel_median_us': kernel_us})
with (rep / 'roofline_sensitivity_sc-16g-2.csv').open('w', newline='') as handle:
    writer = csv.DictWriter(handle, fieldnames=rows[0].keys())
    writer.writeheader(); writer.writerows(rows)
for row in rows:print(row)
