#!/usr/bin/env python3
"""Enforce canonical decision 15: the metamodel names no contract instance, and the execution
platform names no instance identifier.

Two refusals:

1. A metamodel class or slot name (metamodel/modules/*.yaml) that derives from a jumo-core
   instance identifier -- a journey, step, projection, process, prompt, team or role -- couples
   the schema to one instance and makes every other instance of the same kind a special case.
2. A string literal in modules/*/src/main or apps/web/{pages,components,composables,layouts} equal
   to one of those instance identifiers -- the platform is meant to dispatch on kind-level fields
   (stepKind, projectionSpecRef, emission, ...), never on which instance it happens to be running.

Capability names (e.g. contract.change.propose) are a sealed PLATFORM vocabulary, not an instance
identifier, and are never flagged.

scripts/verify/boundary-allowlist.txt records known violations not yet remediated, one per line,
`metamodel:<ClassName>` or `literal:<path>:<identifier>`. It ratchets toward empty; do not add an
entry to silence a new violation without also filing (or checking) the WorkOrder that removes it.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parents[2]
ALLOWLIST_FILE = ROOT / "scripts" / "verify" / "boundary-allowlist.txt"
METAMODEL_DIR = ROOT / "metamodel" / "modules"

CODE_ROOTS = (
    ("modules", "src/main", (".java",)),
)
WEB_DIRS = ("pages", "components", "composables", "layouts")
WEB_EXTENSIONS = (".vue", ".ts", ".js")

INSTANCE_SOURCES = (
    # (platform-corpus-relative glob, kind label)
    (".jumo/journeys/*.yml", "journey"),
    (".jumo/processes/**/*.yml", "process"),
    (".jumo/projections/*.yml", "projection"),
    (".jumo/prompts/*.yml", "prompt"),
    (".jumo/roles/*.yml", "role"),
    (".jumo/machine-admin-playbooks/*.yml", "machine-admin-playbook"),
)
REALM_INSTANCE_SOURCES = (
    (".jumo/teams/*.yml", "team"),
)

IDENTIFIER = re.compile(r"[a-z][a-z0-9]*(?:-[a-z0-9]+)+")
LITERAL = re.compile(r"""["'`]([a-z][a-z0-9]*(?:-[a-z0-9]+)+)["'`]""")


def platform_root() -> Path:
    import os

    return Path(os.environ.get("JUMO_CONTRACT_PLATFORM_PATH", str(ROOT.parent / "jumo-core")))


def load_ids(base: Path, sources: tuple[tuple[str, str], ...]) -> dict[str, str]:
    ids: dict[str, str] = {}
    for pattern, kind in sources:
        for path in sorted(base.glob(pattern)):
            data = yaml.safe_load(path.read_text(encoding="utf-8")) or {}
            instance_id = (data.get("metadata") or {}).get("id")
            if instance_id:
                ids[instance_id] = kind
            for step in ((data.get("spec") or {}).get("steps") or []):
                step_id = step.get("id")
                if step_id:
                    ids.setdefault(step_id, "step")
    return ids


def discover_instance_ids() -> dict[str, str]:
    """Only compound (hyphenated) identifiers count: a single dictionary word like "owner" or
    "grant" is not distinctive enough to say a name "derives from" it, and treating it as one
    turns ordinary English words appearing in unrelated names into false positives."""
    ids = load_ids(platform_root(), INSTANCE_SOURCES)
    ids.update(load_ids(ROOT, REALM_INSTANCE_SOURCES))
    return {iid: kind for iid, kind in ids.items() if IDENTIFIER.fullmatch(iid)}


def name_words(name: str) -> list[str]:
    return re.findall(r"[A-Z][a-z0-9]*|^[a-z][a-z0-9]*", name)


def scan_metamodel(instance_ids: dict[str, str]) -> list[tuple[str, str, str]]:
    """Returns (class_name, instance_id, kind) for every class or slot name that derives from an
    instance identifier: its PascalCase words appear as a contiguous, whole-word subsequence, not
    merely as a character substring (which would also match unrelated words sharing a prefix)."""
    id_words = {iid: ([w.capitalize() for w in iid.split("-")], kind) for iid, kind in instance_ids.items()}
    violations = []
    for path in sorted(METAMODEL_DIR.glob("*.yaml")):
        data = yaml.safe_load(path.read_text(encoding="utf-8")) or {}
        for class_name, spec in (data.get("classes") or {}).items():
            names = [class_name, *((spec or {}).get("attributes") or {}).keys()]
            for name in names:
                words = name_words(name)
                for iid, (needle, kind) in id_words.items():
                    n = len(needle)
                    if any(words[i:i + n] == needle for i in range(len(words) - n + 1)):
                        violations.append((f"{class_name}.{name}" if name != class_name else class_name, iid, kind))
    return violations


def iter_code_files() -> list[Path]:
    files: list[Path] = []
    for base_dir, sub, extensions in CODE_ROOTS:
        for module_src in (ROOT / base_dir).glob(f"*/{sub}"):
            for extension in extensions:
                files.extend(module_src.rglob(f"*{extension}"))
    for web_dir in WEB_DIRS:
        base = ROOT / "apps" / "web" / web_dir
        if not base.is_dir():
            continue
        for extension in WEB_EXTENSIONS:
            files.extend(base.rglob(f"*{extension}"))
    return files


def scan_code(instance_ids: dict[str, str]) -> list[tuple[str, str, str]]:
    """Returns (relative_path, identifier, kind) for every disallowed literal found."""
    violations = []
    for path in iter_code_files():
        rel = str(path.relative_to(ROOT))
        text = path.read_text(encoding="utf-8", errors="ignore")
        for match in LITERAL.finditer(text):
            literal = match.group(1)
            kind = instance_ids.get(literal)
            if kind:
                violations.append((rel, literal, kind))
    return violations


def load_allowlist() -> tuple[set[str], set[tuple[str, str]]]:
    metamodel_allowed: set[str] = set()
    literal_allowed: set[tuple[str, str]] = set()
    if not ALLOWLIST_FILE.exists():
        return metamodel_allowed, literal_allowed
    for line in ALLOWLIST_FILE.read_text(encoding="utf-8").splitlines():
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        rule, _, rest = line.partition(":")
        if rule == "metamodel":
            metamodel_allowed.add(rest)
        elif rule == "literal":
            path, _, literal = rest.rpartition(":")
            literal_allowed.add((path, literal))
    return metamodel_allowed, literal_allowed


def main() -> int:
    instance_ids = discover_instance_ids()
    metamodel_allowed, literal_allowed = load_allowlist()

    metamodel_violations = [
        v for v in scan_metamodel(instance_ids) if v[0].split(".")[0] not in metamodel_allowed and v[0] not in metamodel_allowed
    ]
    code_violations = [v for v in scan_code(instance_ids) if (v[0], v[1]) not in literal_allowed]

    if not metamodel_violations and not code_violations:
        print(f"OK: no metamodel class/slot or code literal derives from an instance identifier ({len(instance_ids)} known ids).")
        return 0

    print("Boundary violations (canonical decision 15):\n", file=sys.stderr)
    for name, iid, kind in metamodel_violations:
        print(f"  metamodel:{name} derives from {kind} '{iid}'", file=sys.stderr)
    for rel, literal, kind in code_violations:
        print(f"  literal:{rel}:{literal} is a {kind} identifier", file=sys.stderr)
    print(
        "\nName the class/slot generically, or add a temporary entry to "
        "scripts/verify/boundary-allowlist.txt naming the WorkOrder that will remove it.",
        file=sys.stderr,
    )
    return 1


if __name__ == "__main__":
    sys.exit(main())
