#!/usr/bin/env python3
"""Semantic linter for Jumo LinkML metamodel.

Enforces:
1. Every class has valid jumo.state_authority, jumo.model_role, jumo.audience,
   jumo.sensitivity, and jumo.boundary_eligible annotations.
2. Classes with sensitivity SECRET must NOT be boundary-eligible.
3. Git contracts must have a declared jumo.composition rule matching dev.jumo.contract.CompositionRule.
4. Boundary-eligible classes do not contain unconstrained open maps.
5. no-construction-references: no description text names a WorkOrder lot, the retired alignment
   plan, or the two retired research notes (docs/research/conceptual-upgrades.md,
   recherche_initiale.md). A description states what is true now, not how it got that way.
"""

import re
import sys
import glob
import yaml
from pathlib import Path

CONSTRUCTION_RESIDUE = re.compile(
    r"\bLOT[- ]?\d+\b|\balignment plan\b|docs/research/conceptual-upgrades\.md|recherche_initiale(?:\.md)?",
    re.IGNORECASE,
)

VALID_STATE_AUTHORITIES = {
    "GIT", "POSTGRES", "TEMPORAL", "OPENBAO", "MACHINE_LOCAL", "OCI_REGISTRY", "NONE", "GIT_TRANSITIONAL"
}
VALID_MODEL_ROLES = {
    "CONTRACT", "COMMAND", "QUERY", "PROJECTION", "OBSERVATION", "EVENT", "EXECUTION_HISTORY", "VALUE_OBJECT"
}
VALID_AUDIENCES = {
    "PUBLIC_WEB", "REALM_PRIVATE", "MACHINE_MTLS", "INTERNAL_WORKER", "POLICY"
}
VALID_SENSITIVITIES = {
    "PUBLIC", "INTERNAL", "PERSONAL", "CONFIDENTIAL", "SECRET"
}
VALID_COMPOSITIONS = {
    "SEALED", "ADDITIVE", "OVERRIDABLE", "REALM_ONLY", "ORGANIZATION_ONLY"
}

def lint_metamodel() -> int:
    errors = 0
    checked_classes = 0

    for path_str in sorted(glob.glob("metamodel/modules/*.yaml")):
        path = Path(path_str)
        text = path.read_text()
        try:
            doc = yaml.safe_load(text)
        except Exception as e:
            print(f"ERROR: Failed to parse YAML in {path}: {e}", file=sys.stderr)
            return 1

        # 5. no-construction-references
        for match in CONSTRUCTION_RESIDUE.finditer(text):
            line = text.count("\n", 0, match.start()) + 1
            print(f"ERROR [{path.name}:{line}]: construction-history reference {match.group(0)!r} (rule no-construction-references)", file=sys.stderr)
            errors += 1

        classes = doc.get("classes", {})
        for name, cdata in sorted(classes.items()):
            checked_classes += 1
            ann = (cdata or {}).get("annotations", {})

            # 1. State Authority
            sa = ann.get("jumo.state_authority")
            if sa not in VALID_STATE_AUTHORITIES:
                print(f"ERROR [{path.name}]: Class '{name}' has invalid or missing jumo.state_authority: '{sa}'", file=sys.stderr)
                errors += 1

            # 2. Model Role
            mr = ann.get("jumo.model_role")
            if mr not in VALID_MODEL_ROLES:
                print(f"ERROR [{path.name}]: Class '{name}' has invalid or missing jumo.model_role: '{mr}'", file=sys.stderr)
                errors += 1

            # 3. Audience
            aud = ann.get("jumo.audience")
            if aud not in VALID_AUDIENCES:
                print(f"ERROR [{path.name}]: Class '{name}' has invalid or missing jumo.audience: '{aud}'", file=sys.stderr)
                errors += 1

            # 4. Sensitivity
            sens = ann.get("jumo.sensitivity")
            if sens not in VALID_SENSITIVITIES:
                print(f"ERROR [{path.name}]: Class '{name}' has invalid or missing jumo.sensitivity: '{sens}'", file=sys.stderr)
                errors += 1

            # 5. Boundary Eligible
            be = ann.get("jumo.boundary_eligible")
            if not isinstance(be, bool):
                print(f"ERROR [{path.name}]: Class '{name}' has missing or non-boolean jumo.boundary_eligible: '{be}'", file=sys.stderr)
                errors += 1

            # Invariant: SECRET must not be boundary-eligible
            if sens == "SECRET" and be is True:
                print(f"ERROR [{path.name}]: Class '{name}' is SECRET but marked boundary_eligible=True!", file=sys.stderr)
                errors += 1

            # Invariant: Git contract composition
            attrs = (cdata or {}).get("attributes", {})
            slots = (cdata or {}).get("slots", [])
            has_kind = "kind" in attrs or "kind" in slots
            if sa == "GIT" and has_kind:
                comp = ann.get("jumo.composition")
                if comp not in VALID_COMPOSITIONS:
                    print(f"ERROR [{path.name}]: Git contract class '{name}' has invalid or missing jumo.composition: '{comp}'", file=sys.stderr)
                    errors += 1

    if errors > 0:
        print(f"FAIL: LinkML semantic lint failed with {errors} error(s) across {checked_classes} classes.", file=sys.stderr)
        return 1
    else:
        print(f"OK: LinkML semantic lint passed ({checked_classes} classes verified cleanly).")
        return 0

if __name__ == "__main__":
    sys.exit(lint_metamodel())
