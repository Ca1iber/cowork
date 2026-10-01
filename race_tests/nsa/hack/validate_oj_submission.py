#!/usr/bin/env python3
"""Validate imports and the TileLang-only MetaX MoE OJ kernel contract."""

from __future__ import annotations

import argparse
import ast
from pathlib import Path


ALLOWED_ROOTS = {"torch", "tilelang", "math"}

FORBIDDEN_CALL_NAMES = {
    "call_cpacked",
    "call_extern",
    "call_packed",
    "import_source",
}

FORBIDDEN_ASYNC_FRAGMENTS = {
    "async_copy",
    "async_wait",
    "continuous_pipeline_memcpy",
    "copy_async",
    "maca_async",
    "maca_memcpy_async",
    "memcpy_async",
    "pipeline_memcpy_async",
}

FORBIDDEN_STRING_FRAGMENTS = FORBIDDEN_ASYNC_FRAGMENTS | {
    "#include",
    "__device__",
    "__global__",
    "cooperative_groups",
    'extern "c"',
}

FORBIDDEN_GENERATED_FRAGMENTS = FORBIDDEN_ASYNC_FRAGMENTS | {
    "__pipeline_wait_prior",
    "barrier_arrive_and_wait",
}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument(
        "--generated-code",
        action="append",
        default=[],
        type=Path,
        help="generated device source for one selected official/OJ shape; repeat as needed",
    )
    return parser.parse_args()


def format_alias(alias: ast.alias) -> str:
    return alias.name if alias.asname is None else f"{alias.name} as {alias.asname}"


def validate_import(node: ast.Import) -> list[str]:
    errors: list[str] = []
    for alias in node.names:
        root = alias.name.split(".", 1)[0]
        if root not in ALLOWED_ROOTS:
            errors.append(f"line {node.lineno}: forbidden root import `{root}`")
    if any(alias.name.startswith("tilelang") for alias in node.names):
        valid = (
            len(node.names) == 1
            and (
                (node.names[0].name == "tilelang" and node.names[0].asname is None)
                or (node.names[0].name == "tilelang.language" and node.names[0].asname == "T")
            )
        )
        if not valid:
            rendered = ", ".join(format_alias(alias) for alias in node.names)
            errors.append(f"line {node.lineno}: forbidden TileLang import form `import {rendered}`")
    return errors


def validate_import_from(node: ast.ImportFrom) -> list[str]:
    module = node.module or ""
    root = module.split(".", 1)[0]
    errors: list[str] = []
    if node.level != 0 or root not in ALLOWED_ROOTS:
        rendered_root = "." * node.level + module
        errors.append(f"line {node.lineno}: forbidden root import `{rendered_root}`")
        return errors
    if root == "tilelang":
        exact = [(alias.name, alias.asname) for alias in node.names]
        valid = (module == "tilelang" and exact == [("jit", None)]) or (
            module == "tilelang.intrinsics"
            and exact == [("make_mma_swizzle_layout", None)]
        ) or (
            module == "tilelang.layout"
            and exact == [("make_swizzled_layout", None)]
        )
        if not valid:
            rendered = ", ".join(format_alias(alias) for alias in node.names)
            errors.append(
                f"line {node.lineno}: forbidden TileLang import form "
                f"`from {module} import {rendered}`"
            )
    return errors


def validate_tilelang_only_surface(tree: ast.AST) -> list[str]:
    errors: list[str] = []
    seen: set[tuple[int, str]] = set()

    def add(node: ast.AST, message: str) -> None:
        key = (getattr(node, "lineno", 0), message)
        if key not in seen:
            seen.add(key)
            errors.append(f"line {key[0]}: {message}")

    for node in ast.walk(tree):
        if isinstance(node, ast.Call) and isinstance(node.func, ast.Attribute):
            name = node.func.attr.lower()
            if name in FORBIDDEN_CALL_NAMES:
                add(node, f"foreign-code escape hatch `{node.func.attr}` is forbidden")

        if isinstance(node, (ast.Name, ast.Attribute)):
            name = (node.id if isinstance(node, ast.Name) else node.attr).lower()
            for fragment in sorted(FORBIDDEN_ASYNC_FRAGMENTS):
                if fragment in name:
                    add(node, f"asynchronous-copy symbol `{name}` is forbidden")
                    break

        if isinstance(node, ast.Constant) and isinstance(node.value, str):
            lowered = node.value.lower()
            for fragment in sorted(FORBIDDEN_STRING_FRAGMENTS):
                if fragment in lowered:
                    add(node, f"embedded foreign/async source fragment `{fragment}` is forbidden")
                    break

    return errors


def validate_generated_code(paths: list[Path]) -> list[str]:
    errors: list[str] = []
    for path in paths:
        resolved = path.resolve()
        if not resolved.is_file():
            errors.append(f"missing generated device source: {resolved}")
            continue
        try:
            lowered = resolved.read_text(encoding="utf-8", errors="replace").lower()
        except OSError as error:
            errors.append(f"cannot read generated device source {resolved}: {error}")
            continue
        for fragment in sorted(FORBIDDEN_GENERATED_FRAGMENTS):
            if fragment in lowered:
                errors.append(
                    f"generated device source {resolved}: forbidden async fragment `{fragment}`"
                )
    return errors


def main() -> int:
    args = parse_args()
    source = args.source.resolve()
    if not source.is_file():
        print(f"INVALID: missing source: {source}")
        return 1
    try:
        tree = ast.parse(source.read_text(encoding="utf-8"), filename=str(source))
    except (OSError, UnicodeDecodeError, SyntaxError) as error:
        print(f"INVALID: cannot parse {source}: {error}")
        return 1

    errors: list[str] = []
    for node in ast.walk(tree):
        if isinstance(node, ast.Import):
            errors.extend(validate_import(node))
        elif isinstance(node, ast.ImportFrom):
            errors.extend(validate_import_from(node))
        elif (
            isinstance(node, ast.Call)
            and isinstance(node.func, ast.Name)
            and node.func.id == "__import__"
        ):
            errors.append(f"line {node.lineno}: dynamic `__import__` is forbidden")

    errors.extend(validate_tilelang_only_surface(tree))
    errors.extend(validate_generated_code(args.generated_code))

    if errors:
        print(f"INVALID: {source}")
        for error in errors:
            print(f"- {error}")
        return 1
    generated_suffix = (
        f"; generated device sources checked: {len(args.generated_code)}"
        if args.generated_code
        else ""
    )
    print(f"VALID OJ SUBMISSION SOURCE: {source}{generated_suffix}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
