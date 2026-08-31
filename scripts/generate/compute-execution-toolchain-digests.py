#!/usr/bin/env python3
"""Compute and check each ExecutionToolchainTool's digest field.

ExecutionToolchainTool.digest was added by execution-cell-toolchain-self-attestation with no
producer, mirroring ConnectorPackage's own packageDigest/supportedTransportDigests recipe
(compute-package-digests.py): a script-computed value, not a hand-typed one, so the declared
digest and the content it names move together.

Unlike a ConnectorPackage, a toolchain tool has no source files in this repo to hash -- it names
software installed by a qualified Dockerfile at build time. This script's digest is therefore a
canonical-JSON fingerprint of the tool's own declaration (name, version), the same idiom this
repo already uses for ConnectorPackage.supportedTransportDigests: it makes the declared entry
tamper-evident and catches a hand-edit that forgot to recompute, but it is not independent proof
that a real image's baked tool-inventory manifest matches -- that reconciliation happens at
preflight, in the execution path (execution-cell-toolchain-self-attestation AC2), against the
manifest a qualified Dockerfile actually bakes (AC1), not against this repo.

    compute-execution-toolchain-digests.py            # print what each tool's digest should be
    compute-execution-toolchain-digests.py --check    # exit 1 if any declared digest disagrees
    compute-execution-toolchain-digests.py --write    # rewrite the declared digests in place
"""
from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parents[2]
TOOLCHAIN_ROOT = ROOT / ".jumo" / "execution-toolchains"
PREFIX = "sha256:"


def sha256_hex(payload: bytes) -> str:
    return hashlib.sha256(payload).hexdigest()


def canonical(tool: dict) -> bytes:
    """Sorted keys, no insignificant whitespace, the digest field itself excluded."""
    kept = {key: value for key, value in sorted(tool.items()) if key != "digest" and value is not None}
    return json.dumps(kept, sort_keys=True, separators=(",", ":"), ensure_ascii=False).encode("utf-8")


def tool_digest(tool: dict) -> str:
    return PREFIX + sha256_hex(canonical(tool))


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    group = parser.add_mutually_exclusive_group()
    group.add_argument("--check", action="store_true", help="fail if a declared digest disagrees")
    group.add_argument("--write", action="store_true", help="rewrite the declared digests in place")
    arguments = parser.parse_args()

    manifests = sorted(TOOLCHAIN_ROOT.rglob("*.yml")) if TOOLCHAIN_ROOT.is_dir() else []
    if not manifests:
        print(f"OK: no ExecutionToolchain manifest under {TOOLCHAIN_ROOT.relative_to(ROOT)}.")
        return 0

    problems: list[str] = []
    for manifest in manifests:
        document = yaml.safe_load(manifest.read_text(encoding="utf-8")) or {}
        if document.get("kind") != "ExecutionToolchain":
            continue
        tools = ((document.get("spec") or {}).get("tools")) or []
        relative = manifest.relative_to(ROOT).as_posix()

        for tool in tools:
            expected = tool_digest(tool)
            name = tool.get("name", "<unnamed>")

            if arguments.write:
                tool["digest"] = expected
                continue

            if not arguments.check:
                print(f"{relative}  {name}")
                print(f"  digest: {expected}")
                continue

            declared = tool.get("digest")
            if declared != expected:
                problems.append(f"{relative}: tool '{name}' declares digest {declared}, expected {expected}")

        if arguments.write:
            manifest.write_text(yaml.safe_dump(document, sort_keys=False), encoding="utf-8")
            print(f"wrote {relative}")

    if problems:
        print("ExecutionToolchainTool digest check FAILED:", file=sys.stderr)
        for problem in problems:
            print(f"  {problem}", file=sys.stderr)
        print(
            "\nRun scripts/generate/compute-execution-toolchain-digests.py --write after changing "
            "an ExecutionToolchain's tools, so the declared digest and the entry it stands for "
            "move together.",
            file=sys.stderr,
        )
        return 1

    if arguments.check:
        print(f"OK: {len(manifests)} ExecutionToolchain manifest(s) checked.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
