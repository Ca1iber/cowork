import csv
from pathlib import Path

rep = Path("/root/tilelang-metax/race_tests/nsa/rep/v012_qk_kpack_sc-16g-2")
target = []
for path in sorted(rep.glob("target_*_kp*.csv")):
    with path.open() as f:
        rows = list(csv.DictReader(f))
    if len(rows) != 2 or any(row["status"] != "PASS" for row in rows):
        continue
    target.append((path.stem, *(float(row["latency_ms"]) for row in rows)))
with (rep / "target_summary.csv").open("w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(("run", "case6_ms", "case12_ms"))
    writer.writerows(target)

official = []
for path in sorted(rep.glob("official_*.csv")):
    with path.open() as f:
        rows = list(csv.DictReader(f))
    if len(rows) != 14 or any(row["status"] != "PASS" for row in rows):
        continue
    ms = [float(row["latency_ms"]) for row in rows]
    official.append((path.stem, *ms, sum(ms) / 14))
with (rep / "official_summary.csv").open("w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(("run", *(f"case{i}_ms" for i in range(1, 15)), "mean_ms"))
    writer.writerows(official)
print("target", len(target), "official", len(official))
