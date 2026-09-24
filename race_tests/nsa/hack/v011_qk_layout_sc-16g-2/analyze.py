import csv
from pathlib import Path

root = Path("/root/tilelang-metax/race_tests/nsa/rep/v011_qk_layout_sc-16g-2")
inputs = [
    ("flags", name, root / f"{name}.csv")
    for name in ("baseline_before", "tf", "ft", "ff", "baseline_after")
]
inputs += [
    ("explicit", name, root / "explicit" / f"{name}.csv")
    for name in ("baseline_before", "linear", "half", "quarter", "baseline_after")
]
inputs += [
    ("xor", name, root / "xor" / f"{name}.csv")
    for name in ("baseline_before", "xor4", "xor8", "xor16", "baseline_after")
]
inputs += [
    ("confirm", name, root / "xor8_confirm" / f"{name}.csv")
    for name in ("run_01_xor8", "run_02_baseline", "run_03_xor8", "run_04_baseline")
]
inputs += [("exact", "v011_xor8", root / "official14.csv")]
with (root / "summary.csv").open("w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(("phase", "variant", "mean_ms", "case6_ms", "case12_ms", "pass_count"))
    for phase, name, path in inputs:
        with path.open() as g:
            rows = list(csv.DictReader(g))
        if len(rows) != 14:
            raise RuntimeError(f"{path}: expected 14 rows, got {len(rows)}")
        latency = [float(row["latency_ms"]) for row in rows]
        pass_count = sum(row["status"] == "PASS" for row in rows)
        writer.writerow((phase, name, f"{sum(latency)/14:.6f}", f"{latency[5]:.6f}", f"{latency[11]:.6f}", pass_count))
print("summary rows", len(inputs))
