#!/usr/bin/env python3
"""Enforce the corpus budget and the two-resolution rule.

The problem this addresses: this repository reached 2,734 lines of prose and
zero lines of code, and nothing could tell a decision from a paragraph. Prose is
cheap for a language model to produce, so authority accrued to whatever grew
fastest. Both effects are now bounded mechanically.

Two-resolution rule. Every concept exists exactly twice: a machine contract
under .jumo/, and one short human explanation. The third form -- the long
narrative document restating both -- is what this rejects. Every Markdown
document therefore declares its resolution in front matter:

    normative: true     states rules; permitted only where NORMATIVE_PATHS allows
    normative: false    derived and explanatory; rule-shaped language is counted

Ratchet. .jumo/corpus-budget.json records the current measurements as ceilings.
Exceeding a ceiling fails. Lowering one is an ordinary commit and is the only
way the budget moves down; raising one is a deliberate, reviewable act. Pass
--update to rewrite the ceilings from the current tree.

Direction. Pass --assert-no-ceiling-increase REF to compare the ceilings against
those at REF and fail if any rose. This is what makes bounded autonomous merging
safe: without the owner in the loop, the only direction the corpus may
move on its own is the one that shrinks it, so a change needing more room is a
change needing a person.

Exit status 0 when the corpus is within budget, 1 otherwise.
"""

from __future__ import annotations

import json
import os
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
BUDGET_FILE = ROOT / ".jumo" / "corpus-budget.json"
BOUNDARY_ALLOWLIST = ROOT / "scripts" / "verify" / "boundary-allowlist.txt"

# Documents permitted to state rules. Everything else is derived.
NORMATIVE_PATHS = (
    "docs/00-canonical-decisions.md",
    "docs/decisions/",
    "AGENTS.md",
)

SEARCH_ROOTS = ("docs", "context")
ROOT_DOCS = (
    "README.md",
    "AGENTS.md",
    "CHANGELOG.md",
    "LICENSE-TODO.md",
)

# Append-only records grow by construction. Ratcheting them would push the
# ceiling up on every release until the gate meant nothing, so they are measured
# for the two-resolution rule but excluded from the line budget.
EXCLUDED_FROM_BUDGET = ("CHANGELOG.md",)

# Which resolution each measure bounds, in the two-resolution vocabulary above. "normative" counts
# documents permitted to state rules, "non-normative" the derived human explanation, and "machine"
# the contracts, schemas and generated worklists an agent loads instead of prose. The classification
# is written into .jumo/corpus-budget.json so a reader of the budget file can tell which corpus a
# ceiling is defending without reading this script.
MEASURE_RESOLUTION = {
    "non_normative_lines": "non-normative",
    "rule_shaped_statements_in_non_normative": "non-normative",
    "normative_documents": "normative",
    "adr_lines_max": "normative",
    "work_open_lines": "machine",
    "work_ledger_lines": "machine",
    "recognized_state_uncovered_tables": "machine",
    "metamodel_construction_references": "machine",
    "boundary_allowlist_entries": "machine",
}

# Measures recorded but not ratcheted, and why. Both grow by construction: an ADR is how a rule is
# meant to be added, and a ledger record is how a WorkOrder is meant to close, so gating either on
# a ceiling would make the intended act the thing that blocks a merge.
UNRATCHETED = {
    "normative_documents": "bounded by NORMATIVE_PATHS, not by a line count",
    "work_ledger_lines": "append-only closure records (corpus.work.completed-in-ledger)",
}

# Machine-generated artifacts carry no hand-written rule-shaped prose to budget; counting them
# would make regeneration itself look like corpus growth. Prefixes are relative to ROOT.
GENERATED_EXEMPT_PATHS = ("docs/reference/", "docs/decisions/README.md")

# Language that asserts a rule. Counted only in non-normative documents, where
# it signals a rule that belongs in a schema or an ADR instead.
RULE_SHAPED = re.compile(
    r"\b(must not|must|shall|may never|never|is forbidden|are forbidden|"
    r"is required|are required|requires|cannot|forbidden|mandatory)\b",
    re.IGNORECASE,
)

# Construction-history residue: work-order lot numbers, a retired planning document, and two
# retired research notes. An ADR or a metamodel description states what is true now, not how the
# corpus got there (canonical decisions 1-4's separation of desired/recognized/execution state
# extends to this: a LOT number or a plan reference is process history, not a contract).
CONSTRUCTION_RESIDUE = re.compile(
    r"\bLOT[- ]?\d+\b|\balignment plan\b|docs/research/conceptual-upgrades\.md|recherche_initiale(?:\.md)?",
    re.IGNORECASE,
)

FRONT_MATTER = re.compile(r"\A---\n(.*?)\n---\n", re.DOTALL)

CANONICAL_DECISIONS = ROOT / "docs" / "00-canonical-decisions.md"
DECISION_LINE = re.compile(r"^(\d+)([a-z]?)\.\s")


def check_decision_numbering() -> list[str]:
    """Canonical decisions are the corpus's most-cited coordinate system: an ADR, a
    schema comment or another decision names one by number, never by heading. A
    duplicate or out-of-order number silently makes two different rules answer to the
    same citation, and nothing else in this file would catch that.
    """
    if not CANONICAL_DECISIONS.exists():
        return []
    problems: list[str] = []
    seen: set[str] = set()
    last_base = 0
    rel = str(CANONICAL_DECISIONS.relative_to(ROOT))
    for line in CANONICAL_DECISIONS.read_text(encoding="utf-8").splitlines():
        match = DECISION_LINE.match(line)
        if not match:
            continue
        base, letter, token = int(match.group(1)), match.group(2), match.group(0).split(".")[0]
        if token in seen:
            problems.append(f"{rel}: decision {token} is declared more than once")
            continue
        seen.add(token)
        if letter:
            if base != last_base:
                problems.append(
                    f"{rel}: decision {token} does not immediately follow decision {base}"
                )
        else:
            if base <= last_base:
                problems.append(
                    f"{rel}: decision {token} is out of order (follows decision {last_base})"
                )
            last_base = base
    return problems


def parse_front_matter(text: str) -> dict[str, str]:
    match = FRONT_MATTER.match(text)
    if not match:
        return {}
    fields = {}
    for line in match.group(1).splitlines():
        if ":" in line and not line.lstrip().startswith("#"):
            key, _, value = line.partition(":")
            fields[key.strip()] = value.strip().strip("\"'")
    return fields


def body_of(text: str) -> str:
    match = FRONT_MATTER.match(text)
    return text[match.end():] if match else text


def is_normative_path(rel: str) -> bool:
    return any(rel == p or rel.startswith(p) for p in NORMATIVE_PATHS)


def work_root() -> Path:
    """Same resolution as generate-roadmap.py: the application repository's own public Realm
    overlay if present, else the sibling private Realm source."""
    local = ROOT / ".jumo" / "work"
    if local.is_dir():
        return local
    return Path(os.environ.get("JUMO_CONTRACT_REALM_PATH", str(ROOT.parent / "jumo-gof"))) / ".jumo" / "work"


def yaml_lines(path: Path) -> int:
    return len([ln for ln in path.read_text(encoding="utf-8").splitlines() if ln.strip()])


def measure_recognized_state_uncovered_tables() -> int:
    """Delegates to the generator so the two never drift: canonical decision 15's ratchet on the
    count of Flyway tables with no POSTGRES-authority class and no waiver. jumo-core carries no
    Flyway schema of its own and does not vendor the generator (metamodel-and-policy-to-core AC4
    scopes the per-repository split); trivially zero here rather than erroring."""
    import importlib.util

    spec_path = ROOT / "scripts" / "generate" / "recognized-state-coverage.py"
    if not spec_path.is_file():
        return 0
    spec = importlib.util.spec_from_file_location("recognized_state_coverage", spec_path)
    coverage = importlib.util.module_from_spec(spec)
    assert spec.loader is not None
    spec.loader.exec_module(coverage)
    _, uncovered = coverage.render(ROOT)
    return uncovered


def measure_work_lines() -> tuple[int, int]:
    """(work_open_lines, work_ledger_lines): the live open-order corpus an agent must load, and
    the compacted closure records under ledger/ (corpus.work.completed-in-ledger)."""
    root = work_root()
    if not root.is_dir():
        return 0, 0
    open_lines = sum(yaml_lines(path) for path in root.glob("*.yml"))
    ledger_dir = root / "ledger"
    ledger_lines = sum(yaml_lines(path) for path in ledger_dir.glob("*.yml")) if ledger_dir.is_dir() else 0
    return open_lines, ledger_lines


def measure_metamodel_construction_references() -> int:
    modules_dir = ROOT / "metamodel" / "modules"
    if not modules_dir.is_dir():
        return 0
    return sum(
        len(CONSTRUCTION_RESIDUE.findall(path.read_text(encoding="utf-8")))
        for path in sorted(modules_dir.glob("*.yaml"))
    )


def measure_boundary_allowlist_entries() -> int:
    """Canonical decision 15's worklist of known instance-naming violations. check-boundary.py
    tolerates each entry; this counts them so the tolerance ratchets toward empty instead of
    becoming a permanent exemption. Comments and blank lines are not entries."""
    if not BOUNDARY_ALLOWLIST.is_file():
        return 0
    return len(
        [
            line
            for line in BOUNDARY_ALLOWLIST.read_text(encoding="utf-8").splitlines()
            if line.strip() and not line.lstrip().startswith("#")
        ]
    )


def measure_adr_lines_max() -> int:
    decisions_dir = ROOT / "docs" / "decisions"
    if not decisions_dir.is_dir():
        return 0
    counts = [
        len(path.read_text(encoding="utf-8").splitlines())
        for path in decisions_dir.glob("ADR-[0-9][0-9][0-9][0-9]-*.md")
    ]
    return max(counts) if counts else 0


def discover() -> list[Path]:
    documents = []
    for name in ROOT_DOCS:
        candidate = ROOT / name
        if candidate.exists():
            documents.append(candidate)
    for directory in SEARCH_ROOTS:
        documents.extend(sorted((ROOT / directory).rglob("*.md")))
    return documents


def measure() -> tuple[dict[str, int], list[str]]:
    problems: list[str] = check_decision_numbering()
    non_normative_lines = 0
    rule_shaped = 0
    normative_docs = 0

    for path in discover():
        rel = str(path.relative_to(ROOT))
        text = path.read_text(encoding="utf-8")
        fields = parse_front_matter(text)

        declared = fields.get("normative")
        if declared is None:
            problems.append(f"{rel}: front matter must declare 'normative: true' or 'normative: false'")
            continue
        if declared not in ("true", "false"):
            problems.append(f"{rel}: 'normative' must be true or false, got '{declared}'")
            continue

        if declared == "true":
            if not is_normative_path(rel):
                problems.append(
                    f"{rel}: declares normative: true, but only {', '.join(NORMATIVE_PATHS)} "
                    "may state rules. Move the rule into a schema under .jumo/schemas/ "
                    "or an ADR, and leave the explanation here."
                )
                continue
            normative_docs += 1
            enforced_by = fields.get("enforced_by")
            if enforced_by:
                for reference in (r.strip() for r in enforced_by.split(",")):
                    # jumo-core is the declarative corpus only; an enforced_by reference under
                    # modules/ names execution-platform Java/SQL that lives in jumo by
                    # architecture and never resolves here -- not a dead reference to flag.
                    if reference and reference.startswith("modules/"):
                        continue
                    if reference and not (ROOT / reference).exists():
                        problems.append(f"{rel}: enforced_by references '{reference}', which does not exist")
            continue

        if rel in EXCLUDED_FROM_BUDGET or rel.startswith(GENERATED_EXEMPT_PATHS):
            continue

        body = body_of(text)
        lines = [ln for ln in body.splitlines() if ln.strip()]
        non_normative_lines += len(lines)
        rule_shaped += sum(1 for ln in lines if RULE_SHAPED.search(ln))

    work_open_lines, work_ledger_lines = measure_work_lines()
    return (
        {
            "non_normative_lines": non_normative_lines,
            "rule_shaped_statements_in_non_normative": rule_shaped,
            "normative_documents": normative_docs,
            "work_open_lines": work_open_lines,
            "work_ledger_lines": work_ledger_lines,
            "recognized_state_uncovered_tables": measure_recognized_state_uncovered_tables(),
            "metamodel_construction_references": measure_metamodel_construction_references(),
            "boundary_allowlist_entries": measure_boundary_allowlist_entries(),
            "adr_lines_max": measure_adr_lines_max(),
        },
        problems,
    )


def ceilings_at(ref: str) -> dict[str, int] | None:
    """The recorded ceilings as of a Git ref, or None when they cannot be read."""
    result = subprocess.run(
        ["git", "show", f"{ref}:.jumo/corpus-budget.json"],
        cwd=ROOT,
        capture_output=True,
        text=True,
    )
    if result.returncode != 0:
        return None
    try:
        return json.loads(result.stdout)["ceilings"]
    except (json.JSONDecodeError, KeyError, TypeError):
        return None


def assert_no_ceiling_increase(ref: str) -> int:
    baseline = ceilings_at(ref)
    if baseline is None:
        print(f"Cannot read .jumo/corpus-budget.json at '{ref}'.", file=sys.stderr)
        return 2
    current = json.loads(BUDGET_FILE.read_text(encoding="utf-8"))["ceilings"]
    raised = [
        f"{key}: {current[key]} exceeds {value} at {ref} (+{current[key] - value})"
        for key, value in baseline.items()
        if key not in UNRATCHETED and key in current and current[key] > value
    ]
    if raised:
        print(f"Corpus ceiling raised against {ref}:\n", file=sys.stderr)
        for item in raised:
            print(f"  {item}", file=sys.stderr)
        print(
            "\nA change that needs more room is a change that needs a person. Bounded "
            "autonomous merging is permitted only in the direction that shrinks the corpus; "
            "raise the ceiling in a change the owner approves.",
            file=sys.stderr,
        )
        return 1
    print(f"OK: no corpus ceiling rose against {ref}.")
    return 0


def main() -> int:
    argv = sys.argv[1:]
    if "--assert-no-ceiling-increase" in argv:
        index = argv.index("--assert-no-ceiling-increase")
        if index + 1 >= len(argv):
            print("usage: --assert-no-ceiling-increase REF", file=sys.stderr)
            return 2
        return assert_no_ceiling_increase(argv[index + 1])

    update = "--update" in sys.argv[1:]
    measured, problems = measure()

    if update:
        BUDGET_FILE.write_text(
            json.dumps(
                {
                    "_comment": (
                        "Ceilings for the Jumo corpus. Exceeding one fails CI. Lowering one is "
                        "the intended direction and needs no ceremony; raising one is a "
                        "deliberate, reviewable act. Regenerate with "
                        "scripts/verify/check-corpus-budget.py --update."
                    ),
                    "measures": {
                        key: {
                            "resolution": MEASURE_RESOLUTION.get(key, "machine"),
                            **({"informational": UNRATCHETED[key]} if key in UNRATCHETED else {}),
                        }
                        for key in measured
                    },
                    "ceilings": measured,
                },
                indent=2,
            )
            + "\n",
            encoding="utf-8",
        )
        print(f"Budget ceilings written to {BUDGET_FILE.relative_to(ROOT)}:")
        for key, value in measured.items():
            print(f"  {key}: {value}")
        if problems:
            print("\nUnresolved two-resolution problems (not budget-related):", file=sys.stderr)
            for problem in problems:
                print(f"  {problem}", file=sys.stderr)
            return 1
        return 0

    if not BUDGET_FILE.exists():
        print(f"No budget file at {BUDGET_FILE.relative_to(ROOT)}. Create it with --update.", file=sys.stderr)
        return 2

    ceilings = json.loads(BUDGET_FILE.read_text(encoding="utf-8"))["ceilings"]
    exceeded = []
    for key, value in measured.items():
        ceiling = ceilings.get(key)
        if ceiling is None:
            continue
        if key in UNRATCHETED:
            continue  # measured and recorded, not gated -- see UNRATCHETED
        if value > ceiling:
            exceeded.append(f"{key}: {value} exceeds ceiling {ceiling} (+{value - ceiling})")

    if problems or exceeded:
        if problems:
            print("Two-resolution rule violated:\n", file=sys.stderr)
            for problem in problems:
                print(f"  {problem}", file=sys.stderr)
            print("", file=sys.stderr)
        if exceeded:
            print("Corpus budget exceeded:\n", file=sys.stderr)
            for item in exceeded:
                print(f"  {item}", file=sys.stderr)
            print(
                "\nAdding prose is not the way through this. Express the rule as a schema "
                "under .jumo/schemas/, or delete something. If the growth is genuinely "
                "warranted, raise the ceiling in .jumo/corpus-budget.json in the same "
                "commit, so it is reviewed.",
                file=sys.stderr,
            )
        return 1

    print(
        "OK: corpus within budget "
        f"({measured['non_normative_lines']}/{ceilings['non_normative_lines']} non-normative lines, "
        f"{measured['rule_shaped_statements_in_non_normative']}/"
        f"{ceilings['rule_shaped_statements_in_non_normative']} rule-shaped statements outside normative docs)."
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
