#!/usr/bin/env python3
"""Render C500 Roofline points against one or more explicitly named bandwidth roofs."""

from __future__ import annotations

import argparse
import csv
import html
import json
import math
from pathlib import Path


DEFAULT_BANDWIDTH_ROOFS = (
    "physical_theoretical=1843.2",
    "sc16_measured_conservative=1400.0",
)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--points", type=Path, required=True, help="CSV: label,ai_flop_per_byte,tflops")
    parser.add_argument("--output-prefix", type=Path, required=True, help="Path without extension")
    parser.add_argument("--compute-roof-tflops", type=float, required=True)
    parser.add_argument(
        "--bandwidth-roof",
        action="append",
        default=[],
        metavar="NAME=GB_PER_S",
        help="Repeat for physical/slice/measured sensitivity roofs",
    )
    parser.add_argument("--title", default="MetaX C500 Roofline")
    return parser.parse_args()


def parse_roofs(values: list[str]) -> dict[str, float]:
    roofs: dict[str, float] = {}
    for item in values or list(DEFAULT_BANDWIDTH_ROOFS):
        if "=" not in item:
            raise SystemExit(f"invalid --bandwidth-roof {item!r}; expected NAME=GB_PER_S")
        name, raw_value = item.split("=", 1)
        value = float(raw_value)
        if not name or value <= 0:
            raise SystemExit(f"invalid --bandwidth-roof {item!r}")
        roofs[name] = value
    return roofs


def logspace(start: float, stop: float, count: int = 256) -> list[float]:
    lo = math.log10(start)
    hi = math.log10(stop)
    return [10 ** (lo + (hi - lo) * index / (count - 1)) for index in range(count)]


def render_svg(
    path: Path,
    title: str,
    points: list[dict],
    roofs: dict[str, float],
    compute_roof: float,
    x_min: float,
    x_max: float,
) -> None:
    width, height = 1100, 700
    left, right, top, bottom = 105, 35, 75, 90
    plot_width = width - left - right
    plot_height = height - top - bottom
    y_candidates = [point["tflops"] for point in points]
    y_candidates.extend(min(compute_roof, bandwidth * x_min / 1000.0) for bandwidth in roofs.values())
    y_min = max(min(y_candidates) / 2.0, 1e-4)
    y_max = max([compute_roof, *[point["tflops"] for point in points]]) * 2.0
    log_x_min, log_x_max = math.log10(x_min), math.log10(x_max)
    log_y_min, log_y_max = math.log10(y_min), math.log10(y_max)

    def sx(value: float) -> float:
        return left + (math.log10(value) - log_x_min) / (log_x_max - log_x_min) * plot_width

    def sy(value: float) -> float:
        return top + (log_y_max - math.log10(value)) / (log_y_max - log_y_min) * plot_height

    colors = ("#2563eb", "#dc2626", "#059669", "#9333ea", "#ea580c")
    body = [
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" viewBox="0 0 {width} {height}">',
        '<rect width="100%" height="100%" fill="white"/>',
        f'<text x="{width / 2}" y="36" text-anchor="middle" font-family="sans-serif" font-size="22" font-weight="600">{html.escape(title)}</text>',
    ]
    for exponent in range(math.floor(log_x_min), math.ceil(log_x_max) + 1):
        value = 10**exponent
        if x_min <= value <= x_max:
            x = sx(value)
            body.append(f'<line x1="{x:.2f}" y1="{top}" x2="{x:.2f}" y2="{top + plot_height}" stroke="#d1d5db" stroke-width="1"/>')
            body.append(f'<text x="{x:.2f}" y="{top + plot_height + 25}" text-anchor="middle" font-family="sans-serif" font-size="12">10^{exponent}</text>')
    for exponent in range(math.floor(log_y_min), math.ceil(log_y_max) + 1):
        value = 10**exponent
        if y_min <= value <= y_max:
            y = sy(value)
            body.append(f'<line x1="{left}" y1="{y:.2f}" x2="{left + plot_width}" y2="{y:.2f}" stroke="#d1d5db" stroke-width="1"/>')
            body.append(f'<text x="{left - 14}" y="{y + 4:.2f}" text-anchor="end" font-family="sans-serif" font-size="12">10^{exponent}</text>')
    body.extend(
        [
            f'<rect x="{left}" y="{top}" width="{plot_width}" height="{plot_height}" fill="none" stroke="#111827" stroke-width="1.5"/>',
            f'<text x="{left + plot_width / 2}" y="{height - 24}" text-anchor="middle" font-family="sans-serif" font-size="15">Arithmetic intensity (FLOP/byte)</text>',
            f'<text x="24" y="{top + plot_height / 2}" text-anchor="middle" transform="rotate(-90 24 {top + plot_height / 2})" font-family="sans-serif" font-size="15">Performance (TFLOP/s)</text>',
        ]
    )
    x_values = logspace(x_min, x_max)
    legend_x, legend_y = left + 18, top + 24
    for index, (name, bandwidth) in enumerate(roofs.items()):
        color = colors[index % len(colors)]
        values = [min(compute_roof, bandwidth * intensity / 1000.0) for intensity in x_values]
        coordinates = " ".join(f"{sx(x):.2f},{sy(y):.2f}" for x, y in zip(x_values, values))
        ridge = compute_roof * 1000.0 / bandwidth
        body.append(f'<polyline points="{coordinates}" fill="none" stroke="{color}" stroke-width="3"/>')
        body.append(f'<line x1="{legend_x}" y1="{legend_y + index * 22}" x2="{legend_x + 28}" y2="{legend_y + index * 22}" stroke="{color}" stroke-width="3"/>')
        label = f"{name}: {bandwidth:g} GB/s (ridge {ridge:.1f})"
        body.append(f'<text x="{legend_x + 36}" y="{legend_y + 4 + index * 22}" font-family="sans-serif" font-size="12">{html.escape(label)}</text>')
    compute_y = sy(compute_roof)
    body.append(f'<line x1="{left}" y1="{compute_y:.2f}" x2="{left + plot_width}" y2="{compute_y:.2f}" stroke="#111827" stroke-width="2" stroke-dasharray="8 6"/>')
    for index, point in enumerate(points):
        x, y = sx(point["ai_flop_per_byte"]), sy(point["tflops"])
        color = colors[index % len(colors)]
        body.append(f'<circle cx="{x:.2f}" cy="{y:.2f}" r="6" fill="{color}" stroke="white" stroke-width="1.5"/>')
        body.append(f'<text x="{x + 8:.2f}" y="{y - 8:.2f}" font-family="sans-serif" font-size="12">{html.escape(point["label"])}</text>')
    body.append("</svg>")
    path.write_text("\n".join(body) + "\n", encoding="utf-8")


def main() -> int:
    args = parse_args()
    if args.compute_roof_tflops <= 0:
        raise SystemExit("--compute-roof-tflops must be positive")
    roofs = parse_roofs(args.bandwidth_roof)

    points = []
    with args.points.open(newline="", encoding="utf-8") as stream:
        reader = csv.DictReader(stream)
        required = {"label", "ai_flop_per_byte", "tflops"}
        if not reader.fieldnames or not required.issubset(reader.fieldnames):
            raise SystemExit("points CSV must contain label,ai_flop_per_byte,tflops")
        for row in reader:
            point = {
                "label": row["label"],
                "ai_flop_per_byte": float(row["ai_flop_per_byte"]),
                "tflops": float(row["tflops"]),
            }
            if point["ai_flop_per_byte"] <= 0 or point["tflops"] <= 0:
                raise SystemExit(f"Roofline points must be positive: {row}")
            points.append(point)
    if not points:
        raise SystemExit("points CSV is empty")

    all_x = [point["ai_flop_per_byte"] for point in points]
    ridges = [args.compute_roof_tflops * 1000.0 / bw for bw in roofs.values()]
    x_min = max(min(all_x + ridges) / 8.0, 1e-3)
    x_max = max(all_x + ridges) * 8.0
    x_values = logspace(x_min, x_max)

    prefix = args.output_prefix.resolve()
    prefix.parent.mkdir(parents=True, exist_ok=True)
    png_path = prefix.with_suffix(".png")
    svg_path = prefix.with_suffix(".svg")
    json_path = prefix.with_name(prefix.name + "_render.json")
    render_svg(svg_path, args.title, points, roofs, args.compute_roof_tflops, x_min, x_max)
    outputs = [str(svg_path)]

    try:
        import matplotlib

        matplotlib.use("Agg")
        import matplotlib.pyplot as plt
    except ImportError:
        plt = None
    if plt is not None:
        figure, axis = plt.subplots(figsize=(11, 7), constrained_layout=True)
        for name, bandwidth in roofs.items():
            attainable = [min(args.compute_roof_tflops, bandwidth * intensity / 1000.0) for intensity in x_values]
            ridge = args.compute_roof_tflops * 1000.0 / bandwidth
            axis.plot(x_values, attainable, linewidth=2, label=f"{name}: {bandwidth:g} GB/s (ridge {ridge:.1f})")
        axis.axhline(args.compute_roof_tflops, color="black", linestyle="--", linewidth=1.4, label=f"compute: {args.compute_roof_tflops:g} TFLOP/s")
        for point in points:
            axis.scatter(point["ai_flop_per_byte"], point["tflops"], s=56, zorder=5)
            axis.annotate(point["label"], (point["ai_flop_per_byte"], point["tflops"]), xytext=(5, 5), textcoords="offset points", fontsize=8)
        axis.set_xscale("log")
        axis.set_yscale("log")
        axis.set_xlim(x_min, x_max)
        axis.set_xlabel("Arithmetic intensity (FLOP/byte)")
        axis.set_ylabel("Performance (TFLOP/s)")
        axis.set_title(args.title)
        axis.grid(True, which="both", alpha=0.25)
        axis.legend(fontsize=8)
        figure.savefig(png_path, dpi=180)
        plt.close(figure)
        outputs.append(str(png_path))

    payload = {
        "title": args.title,
        "points_source": str(args.points.resolve()),
        "compute_roof_tflops": args.compute_roof_tflops,
        "bandwidth_roofs_gb_per_s": roofs,
        "ridge_points_flop_per_byte": {
            name: args.compute_roof_tflops * 1000.0 / bandwidth for name, bandwidth in roofs.items()
        },
        "points": points,
        "outputs": outputs,
        "png_rendered": plt is not None,
    }
    json_path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(svg_path)
    if plt is not None:
        print(png_path)
    else:
        print("PNG skipped: matplotlib is not installed; SVG is complete and portable")
    print(json_path)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
