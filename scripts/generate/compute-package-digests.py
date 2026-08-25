#!/usr/bin/env python3
"""Compute and check the two Platform digests a ConnectorPackage declares.

Both were required by the metamodel with no producer, no reader and no recipe: packageDigest had
no reproducible definition -- the one declared value matched neither its package.yml nor its
bindings.yml -- and supportedTransportDigests was required with cardinality 1 and a 64-hex pattern
while nothing in ConnectorPackageSpec said what a transport was. Authoring a Core package meant
inventing what two Platform fields meant, which is why mcp-platform-package-certification AC4 was
recorded as "not attemptable as specified" on 2026-08-25.

Owner decision, 2026-08-25 (open point O-A): define both, and ship the script that computes them.

packageDigest covers the package's content, not its manifest. The manifest declares the digest, so
it cannot be inside what the digest covers. Content is exactly spec.sourcePaths when declared,
otherwise every file in the package directory except the manifest itself.

supportedTransportDigests pins each McpServerDescriptor in spec.supportedTransports by the SHA-256
of its canonical JSON, so a certification names transports that provably came from the package
rather than being asserted alongside it.

    compute-package-digests.py            # print what each package's digests should be
    compute-package-digests.py --check    # exit 1 if any declared digest disagrees
    compute-package-digests.py --write    # rewrite the declared digests in place
"""
from __future__ import annotations

import argparse
import hashlib
import json
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parents[2]
PACKAGE_ROOT = ROOT / ".jumo" / "connector-packages"
PREFIX = "sha256:"


def sha256_hex(payload: bytes) -> str:
    return hashlib.sha256(payload).hexdigest()


def content_files(manifest: Path, spec: dict) -> list[Path]:
    """Exactly sourcePaths when declared, otherwise the package directory minus the manifest."""
    declared = spec.get("sourcePaths") or []
    if declared:
        return [ROOT / path for path in sorted(declared)]
    return sorted(p for p in manifest.parent.rglob("*") if p.is_file() and p != manifest)


def package_digest(manifest: Path, spec: dict) -> str:
    base = manifest.parent
    lines = []
    for path in content_files(manifest, spec):
        relative = path.relative_to(base if base in path.parents else ROOT).as_posix()
        lines.append(f"{sha256_hex(path.read_bytes())}  {relative}\n")
    return PREFIX + sha256_hex("".join(sorted(lines)).encode("utf-8"))


def canonical(descriptor: dict) -> bytes:
    """Sorted keys, no insignificant whitespace, absent fields omitted."""
    kept = {key: value for key, value in sorted(descriptor.items()) if value is not None}
    return json.dumps(kept, sort_keys=True, separators=(",", ":"), ensure_ascii=False).encode("utf-8")


def transport_digests(spec: dict) -> list[str]:
    return [PREFIX + sha256_hex(canonical(d)) for d in spec.get("supportedTransports") or []]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    group = parser.add_mutually_exclusive_group()
    group.add_argument("--check", action="store_true", help="fail if a declared digest disagrees")
    group.add_argument("--write", action="store_true", help="rewrite the declared digests in place")
    arguments = parser.parse_args()

    manifests = sorted(PACKAGE_ROOT.rglob("package.yml"))
    if not manifests:
        print(f"OK: no ConnectorPackage manifest under {PACKAGE_ROOT.relative_to(ROOT)}.")
        return 0

    problems: list[str] = []
    for manifest in manifests:
        document = yaml.safe_load(manifest.read_text(encoding="utf-8")) or {}
        if document.get("kind") != "ConnectorPackage":
            continue
        spec = document.get("spec") or {}
        relative = manifest.relative_to(ROOT).as_posix()

        expected_package = package_digest(manifest, spec)
        expected_transports = transport_digests(spec)

        if arguments.write:
            spec["packageDigest"] = expected_package
            manifest.write_text(yaml.safe_dump(document, sort_keys=False), encoding="utf-8")
            print(f"wrote {relative}: packageDigest {expected_package}")
            continue

        if not arguments.check:
            print(f"{relative}")
            print(f"  packageDigest: {expected_package}")
            for digest in expected_transports:
                print(f"  supportedTransportDigests: {digest}")
            continue

        declared = spec.get("packageDigest")
        if declared != expected_package:
            problems.append(f"{relative}: declares packageDigest {declared}, content hashes to {expected_package}")

    if problems:
        print("ConnectorPackage digest check FAILED:", file=sys.stderr)
        for problem in problems:
            print(f"  {problem}", file=sys.stderr)
        print(
            "\nRun scripts/generate/compute-package-digests.py --write after changing package "
            "content, so the declared digest and the content it stands for move together.",
            file=sys.stderr,
        )
        return 1

    if arguments.check:
        print(f"OK: {len(manifests)} ConnectorPackage digest(s) match their content.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
