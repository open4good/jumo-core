#!/usr/bin/env python3
"""Generate deterministic ThemePack v2 rights and SHA-256 registries."""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path


EXCLUDED = {"theme-pack.yml", "integrity.json", "rights/manifest.json"}


def digest(path: Path) -> str:
    return "sha256:" + hashlib.sha256(path.read_bytes()).hexdigest()


def rights_for(relative: str, sha256: str) -> dict[str, str]:
    if relative.endswith(".woff2"):
        return {
            "asset": relative,
            "source": "Inter typeface project",
            "author": "Rasmus Andersson and contributors",
            "license": "SIL Open Font License 1.1",
            "url": "https://github.com/rsms/inter",
            "transformation": "subset copied from the existing verified Jumo web fixture",
            "digest": sha256,
        }
    if relative.endswith((".png", ".webp")):
        transformation = "generated master"
        if relative.endswith(".webp"):
            transformation = "responsive WebP derivative or character crop from a generated master"
        return {
            "asset": relative,
            "source": "OpenAI image generation",
            "author": "OpenAI image model under Jumo Studio direction",
            "license": "Jumo project asset",
            "url": "https://openai.com/policies/terms-of-use/",
            "transformation": transformation,
            "digest": sha256,
        }
    return {
        "asset": relative,
        "source": "Jumo ThemePack v2",
        "author": "Jumo Studio",
        "license": "Apache-2.0 project corpus",
        "url": "https://github.com/goulven/jumo-core",
        "transformation": "original declarative manifest",
        "digest": sha256,
    }


def generate(pack: Path) -> None:
    files = sorted(
        path for path in pack.rglob("*")
        if path.is_file() and path.relative_to(pack).as_posix() not in EXCLUDED
    )
    rights = [rights_for(path.relative_to(pack).as_posix(), digest(path)) for path in files]
    rights_path = pack / "rights" / "manifest.json"
    rights_path.parent.mkdir(parents=True, exist_ok=True)
    rights_path.write_text(
        json.dumps({"schemaVersion": "2.0", "assets": rights}, indent=2, ensure_ascii=False) + "\n",
        encoding="utf-8",
    )

    integrity_files = sorted(
        path for path in pack.rglob("*")
        if path.is_file() and path.relative_to(pack).as_posix() not in {"theme-pack.yml", "integrity.json"}
    )
    entries = {
        path.relative_to(pack).as_posix(): digest(path)
        for path in integrity_files
    }
    (pack / "integrity.json").write_text(
        json.dumps({"schemaVersion": "2.0", "algorithm": "sha256", "assets": entries}, indent=2) + "\n",
        encoding="utf-8",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("packs", nargs="+", type=Path)
    args = parser.parse_args()
    for pack in args.packs:
        generate(pack.resolve())


if __name__ == "__main__":
    main()
