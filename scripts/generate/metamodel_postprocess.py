"""Post-processing for scripts/generate-metamodel.sh (alignment plan LOT 3).

Three responsibilities, each independent of the others:

1. strip-nullable-json-schema -- collapses LinkML's `"type": ["<X>", "null"]` on non-required
   slots back to `"type": "<X>"`. LinkML expresses optionality as "the slot may be absent"; the
   generated `null` union is a JSON Schema codegen artifact, not an intentional nullable field
   (LOT 1 spike finding, metamodel/spike/REPORT.md "Fidelity gap"). Left unstripped, a document
   setting a field to `null` would validate under the generated schema while today's hand-written
   ones reject it -- a real behavioral widening. Decided now (LOT 3) rather than deferred, since
   LOT 4 adopts this generated schema as-is.

2. add-banner -- prepends a "generated, do not edit" comment line to a text-based generated
   artifact (YAML, GraphQL SDL, Turtle, SQL). JSON and JSON-LD get a `$comment` key instead
   (added by the caller before this script runs, or by strip-nullable-json-schema for the JSON
   Schema bundle), since prepending a line would break JSON parsing.

3. build-manifest -- derives the kind -> {schema pointer, Java class, git-contract, state
   authority} manifest mechanically from the merged schema via SchemaView, rather than
   hand-maintaining a side list that can drift. A class is a Git contract iff it carries both an
   apiVersion and a kind slot (the same test scripts/generate-metamodel.sh's caller used to verify
   LOT 2's 56 top-level kinds). State authority defaults to GIT for a Git-contract class, unless
   the class carries a `jumo.state_authority` annotation (AttentionItem and
   ImprovementRecommendation currently carry `git_transitional`: Git-contract-shaped today, slated
   to move to Postgres-backed runtime state). WorkOrder is durable Git contractual state.
   Non-kind classes (nested component types such as WorkOrderSpec) get stateAuthority "N/A": they
   are never independently loadable, only reachable through a kind's spec.

4. canonicalize-jsonld-context -- drops the `comments.generation_date` field `gen-jsonld-context`
   stamps into every run. That timestamp is the *only* source of non-determinism in this
   generator's output (confirmed empirically: two consecutive runs differ solely in that field);
   removing it makes the artifact byte-reproducible like the JSON Schema, Java, OpenAPI, and
   GraphQL outputs.

5. canonicalize-sql -- sorts each contiguous run of `CREATE INDEX` lines lexically. `gen-sqlddl`
   (SQLAlchemy underneath) stores a table's indexes in a Python `set`, so their *relative* emission
   order is not stable across runs even though the *set* of indexes is (confirmed empirically: two
   consecutive runs produce a diff where every differing line appears exactly twice -- pure
   reordering, zero content change). Sorting is safe because CREATE INDEX statements have no
   execution-order dependency on each other, only on their table already existing.

6. fix-java-primitive-builder-defaults -- gen-java's records template (confirmed empirically,
   LOT 5) initializes every Builder field to `null`, including primitive-typed ones: a required
   int/float/etc slot compiles to a primitive record component (`int`, not `Integer`), and
   `private int x = null;` is a hard compile error, not a runtime default. This repairs each
   primitive Builder field's initializer to its type's zero value (`0`, `0L`, `0f`, `0d`,
   `(short) 0`, `(byte) 0`, a literal space character for `char`) -- the same value that field
   would hold if never set on an ordinary Java object, so a caller that builds one of these
   records without touching that field observes no behavioral difference from what an
   unconstrained default would have been.

7. build-contract-kind -- generates modules/project-contract's ContractKind.java: the closed enum
   of git-contract kinds a document's `kind` field may declare (LOT 4 introduced it hand-written,
   LOT 5 generates it here instead, closing the gap LOT 4 left between this file and the manifest
   it was meant to mirror). A class is a git contract by the same test build-manifest uses (both
   apiVersion and kind slots present); constant names are the class name with an underscore
   inserted before each internal capital, upper-cased (ActionCapabilitySet -> ACTION_CAPABILITY_SET)
   -- verified to reproduce every constant name the prior hand-written enum used, letter for letter,
   before this replaced it.

8. rdf-structural-check -- OWL and SHACL (both Turtle) are the two artifacts this pipeline does
   NOT hold to a byte-diff standard, and this command is the substitute check `--check` runs on
   them instead. Root cause (confirmed empirically, not assumed): `gen-owl`/`gen-shacl` assign
   blank-node identity to every anonymous restriction/shape, and rdflib's Turtle serializer orders
   a subject's blank-node property lists by the blank nodes' Python object identity, which is not
   stable across process runs -- confirmed by ruling out string-hash seeding (`PYTHONHASHSEED=0`
   on two runs still differs) and confirmed harmless by `rdflib.compare.isomorphic`, which reports
   the two outputs as the same graph (full canonicalization was tried first and timed out past two
   minutes on this document's restriction count -- graph canonicalization is worst-case
   exponential, not a usable CI gate). Since RDF's data model is an unordered set of triples,
   demanding byte-identical Turtle from a graph-shaped generator is holding it to a standard the
   format itself does not make (the equivalent request for JSON would be "the keys must stay in
   this exact order"). This command instead checks each triple with a blank-node subject or object,
   replaces that node with a fixed placeholder, and compares the resulting multiset between the
   committed file and the freshly generated one -- order-insensitive, but still catches a real
   content change (an added/removed/modified restriction changes the multiset; a pure reordering
   does not), and runs in time linear in triple count rather than the combinatorial blank-node
   bijection search full isomorphism requires.

9. normalize-markdown-whitespace -- gen-doc emits trailing spaces in Markdown tables on some
   LinkML releases. They are presentation-neutral, but make the committed generated tree depend
   on template details rather than the schema. Strip them after generation so the pinned toolchain
   has one stable repository representation.

10. build-context-catalog -- introspects the merged schema to produce metamodel/generated/context-catalog.json,
    containing the bidirectional graph schema (outgoing and incoming ContractReference relationships)
    for all 56 Git contract kinds.

11. build-reference-extractor -- generates modules/jumo-model/.../ContractReferenceExtractor.java to
    deterministically extract all OutgoingReference (slotName, ContractReference) pairs from any model record.
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path

BANNER_TEXT = (
    "GENERATED by scripts/generate-metamodel.sh from metamodel/jumo-v1.yaml -- do not edit. "
    "Edit the LinkML source and regenerate."
)

COMMENT_PREFIX = {
    "yaml": "#",
    "graphql": "#",
    "turtle": "#",
    "sql": "--",
}


def normalize_markdown_whitespace(directory: Path) -> None:
    for path in directory.rglob("*.md"):
        original = path.read_text()
        normalized = "\n".join(line.rstrip() for line in original.splitlines())
        if original.endswith("\n"):
            normalized += "\n"
        if normalized != original:
            path.write_text(normalized)


def strip_nullable_json_schema(path: Path) -> None:
    schema = json.loads(path.read_text())

    # LinkML emits these generator metadata fields at the schema root. They are not JSON Schema
    # 2020-12 keywords, so NetworkNT reports them as unknown keywords every time the control plane
    # loads the bundle. Keep the metadata in the merged LinkML artifact, but remove it from the
    # runtime validation schema where it has no validation meaning.
    schema.pop("metamodel_version", None)
    schema.pop("version", None)

    def strip(node: object) -> None:
        if isinstance(node, dict):
            type_value = node.get("type")
            if isinstance(type_value, list) and "null" in type_value:
                remaining = [t for t in type_value if t != "null"]
                node["type"] = remaining[0] if len(remaining) == 1 else remaining
            for value in node.values():
                strip(value)
        elif isinstance(node, list):
            for item in node:
                strip(item)

    strip(schema)
    schema = {"$comment": BANNER_TEXT, **schema}
    path.write_text(json.dumps(schema, indent=2) + "\n")


def add_json_comment(path: Path) -> None:
    doc = json.loads(path.read_text())
    doc = {"$comment": BANNER_TEXT, **doc}
    path.write_text(json.dumps(doc, indent=2) + "\n")


def add_banner(path: Path, style: str) -> None:
    prefix = COMMENT_PREFIX[style]
    original = path.read_text()
    path.write_text(f"{prefix} {BANNER_TEXT}\n{original}")


def add_java_banners(directory: Path) -> None:
    for java_file in sorted(directory.glob("*.java")):
        original = java_file.read_text()
        java_file.write_text(f"// {BANNER_TEXT}\n{original}")


def build_manifest(merged_schema_path: Path, output_path: Path) -> None:
    from linkml_runtime import SchemaView

    sv = SchemaView(str(merged_schema_path))
    kinds = []
    for name in sorted(sv.all_classes()):
        cls = sv.get_class(name)
        slots = sv.class_slots(name)
        is_kind_shaped = "apiVersion" in slots and "kind" in slots
        annotations = cls.annotations or {}
        raw_state_authority = (
            annotations["jumo.state_authority"].value
            if "jumo.state_authority" in annotations
            else None
        )
        raw_composition = (
            annotations["jumo.composition"].value
            if "jumo.composition" in annotations
            else "ADDITIVE"
        )
        # Runtime-only classes may retain their schema shape for typed projections, but cannot be
        # admitted by ContractLoader into Git.
        is_git_contract = is_kind_shaped and raw_state_authority != "postgres"
        if not is_kind_shaped:
            state_authority = "N/A"
            composition = "N/A"
        elif raw_state_authority == "git_transitional":
            state_authority = "GIT_TRANSITIONAL"
            composition = raw_composition
        elif raw_state_authority == "postgres":
            state_authority = "POSTGRES"
            composition = "N/A"
        else:
            state_authority = "GIT"
            composition = raw_composition
        kinds.append(
            {
                "linkmlClass": name,
                "jsonSchemaPointer": f"#/$defs/{name}",
                "javaClass": f"dev.jumo.model.{name}",
                "gitContract": is_git_contract,
                "stateAuthority": state_authority,
                "composition": composition,
            }
        )
    manifest = {
        "$comment": BANNER_TEXT,
        "source": "metamodel/jumo-v1.yaml",
        "kindCount": sum(1 for k in kinds if k["gitContract"]),
        "classCount": len(kinds),
        "kinds": kinds,
    }
    output_path.write_text(json.dumps(manifest, indent=2) + "\n")


PRIMITIVE_ZERO_VALUES = {
    "int": "0",
    "long": "0L",
    "short": "(short) 0",
    "byte": "(byte) 0",
    "float": "0f",
    "double": "0d",
    "char": "' '",
}

PRIMITIVE_BUILDER_DEFAULT = re.compile(
    r"private (int|long|short|byte|float|double|char) ([A-Za-z0-9_]+) = null;"
)


def fix_java_primitive_builder_defaults(directory: Path) -> None:
    for java_file in sorted(directory.glob("*.java")):
        original = java_file.read_text()

        def replace(match: "re.Match[str]") -> str:
            type_name, field_name = match.group(1), match.group(2)
            return f"private {type_name} {field_name} = {PRIMITIVE_ZERO_VALUES[type_name]};"

        fixed = PRIMITIVE_BUILDER_DEFAULT.sub(replace, original)
        if fixed != original:
            java_file.write_text(fixed)


def _constant_case(class_name: str) -> str:
    return re.sub(r"(?<=[a-z0-9])(?=[A-Z])", "_", class_name).upper()


def build_contract_kind(merged_schema_path: Path, output_path: Path) -> None:
    from linkml_runtime import SchemaView

    sv = SchemaView(str(merged_schema_path))
    kinds = []
    for name in sorted(sv.all_classes()):
        slots = sv.class_slots(name)
        annotations = sv.get_class(name).annotations or {}
        runtime_only = "jumo.state_authority" in annotations and annotations["jumo.state_authority"].value == "postgres"
        if "apiVersion" in slots and "kind" in slots and not runtime_only:
            comp = annotations["jumo.composition"].value if "jumo.composition" in annotations else "ADDITIVE"
            kinds.append((name, comp))

    entries = ",\n".join(
        f'    {_constant_case(name)}("{name}", dev.jumo.model.{name}.class, CompositionRule.{comp})' for name, comp in kinds
    )
    output_path.write_text(f"""// {BANNER_TEXT}
package dev.jumo.contract;

import java.util.Optional;

/**
 * The contract kinds the generated schema bundle
 * ({{@code metamodel/generated/jsonschema/jumo-v1.schema.json}}) declares as Git contracts.
 *
 * <p>This enumeration is closed on purpose. A document whose {{@code kind}} is absent from it
 * is refused rather than skipped, because an undeclared kind is exactly how an unreviewed
 * contract would enter a corpus that otherwise validates everything it recognises.
 *
 * <p>Generated from {{@code metamodel/jumo-v1.yaml}} by the same rule
 * {{@code scripts/generate/metamodel_postprocess.py build-manifest}} uses to mark a class git-contract:
 * both an {{@code apiVersion}} and a {{@code kind}} slot present.
 */
public enum ContractKind {{

{entries};

    private final String declaredName;
    private final Class<?> modelClass;
    private final CompositionRule compositionRule;

    ContractKind(String declaredName, Class<?> modelClass, CompositionRule compositionRule) {{
        this.declaredName = declaredName;
        this.modelClass = modelClass;
        this.compositionRule = compositionRule;
    }}

    /** The value a document carries in its {{@code kind}} field; also its LinkML class name. */
    public String declaredName() {{
        return declaredName;
    }}

    /** The LinkML-generated Java record used by the runtime for this kind. */
    public Class<?> modelClass() {{
        return modelClass;
    }}

    /** The composition and precedence rule for this kind across platform, realm, and kit layers. */
    public CompositionRule compositionRule() {{
        return compositionRule;
    }}

    public static Optional<ContractKind> ofDeclaredName(String declaredName) {{
        for (ContractKind kind : values()) {{
            if (kind.declaredName.equals(declaredName)) {{
                return Optional.of(kind);
            }}
        }}
        return Optional.empty();
    }}
}}
""")


def canonicalize_jsonld_context(path: Path) -> None:
    doc = json.loads(path.read_text())
    doc.pop("comments", None)
    doc = {"$comment": BANNER_TEXT, **doc}
    path.write_text(json.dumps(doc, indent=2) + "\n")


def canonicalize_sql(path: Path) -> None:
    lines = path.read_text().splitlines()
    result: list[str] = []
    index_run: list[str] = []
    alter_run: list[str] = []

    def flush() -> None:
        if index_run:
            result.extend(sorted(index_run))
            index_run.clear()
        if alter_run:
            result.extend(sorted(alter_run))
            alter_run.clear()

    for line in lines:
        if line.startswith("CREATE INDEX "):
            if alter_run:
                flush()
            index_run.append(line)
        elif line.startswith("ALTER TABLE ") and " ADD FOREIGN KEY" in line:
            if index_run:
                flush()
            alter_run.append(line)
        else:
            flush()
            result.append(line)
    flush()
    path.write_text("\n".join(result) + "\n")


def rdf_structural_check(committed: Path, candidate: Path) -> None:
    from rdflib import BNode, Graph

    def multiset(path: Path) -> list[str]:
        graph = Graph().parse(str(path), format="turtle")
        triples = []
        for s, p, o in graph:
            s_repr = "_:BNODE" if isinstance(s, BNode) else str(s)
            o_repr = "_:BNODE" if isinstance(o, BNode) else str(o)
            triples.append(f"{s_repr} {p} {o_repr}")
        return sorted(triples)

    committed_triples = multiset(committed)
    candidate_triples = multiset(candidate)
    if committed_triples != candidate_triples:
        print(f"FAIL: {committed} is not structurally equivalent to a fresh regeneration", file=sys.stderr)
        committed_only = set(committed_triples) - set(candidate_triples)
        candidate_only = set(candidate_triples) - set(committed_triples)
        for triple in sorted(committed_only)[:20]:
            print(f"  only in committed: {triple}", file=sys.stderr)
        for triple in sorted(candidate_only)[:20]:
            print(f"  only in regenerated: {triple}", file=sys.stderr)
        sys.exit(1)


def resolve_target_kind(slot_name: str, git_contract_kinds: set[str]) -> str:
    base = slot_name
    if base.endswith("Refs"):
        base = base[:-4]
    elif base.endswith("Ref"):
        base = base[:-3]
    for kind in sorted(git_contract_kinds, key=len, reverse=True):
        if base.endswith(kind) or base.lower().endswith(kind.lower()):
            return kind
    special = {
        "project": "Project",
        "team": "TeamSpec",
        "teamSpec": "TeamSpec",
        "preferences": "Preferences",
        "personalSpace": "PersonalSpace",
        "role": "RoleDefinition",
        "roleDefinition": "RoleDefinition",
        "agentDefinition": "AgentDefinition",
        "principal": "Principal",
        "federatedPeer": "FederatedPeer",
        "federationProfile": "FederationProfile",
        "mcpBundle": "McpBundle",
        "remoteMcpService": "RemoteMcpService",
        "remoteMcpAppraisal": "RemoteMcpAppraisal",
        "connectorDefinition": "ConnectorDefinition",
        "workerSubstrate": "WorkerSubstrate",
        "providerAccount": "ProviderAccount",
        "goldenTaskSet": "GoldenTaskSet",
        "workerRequirementProfile": "WorkerRequirementProfile",
        "resourceBudget": "ResourceBudget",
        "processSpec": "ProcessSpec",
        "practice": "Practice",
        "promptTemplate": "PromptTemplate",
        "assistedJourney": "AssistedJourney",
        "projectionSpec": "ProjectionSpec",
        "controlCatalog": "ControlCatalog",
        "evidenceProfile": "EvidenceProfile",
        "policySet": "PolicySet",
        "principleSet": "PrincipleSet",
        "kitBinding": "KitBinding",
        "kitReleaseCertification": "KitReleaseCertification",
        "improvementLoop": "ImprovementLoop",
        "organizationTemplate": "OrganizationTemplate",
        "chiefOfStaffProfile": "ChiefOfStaffProfile",
        "hostDefinition": "MachineHostDefinition",
        "installedCli": "CliToolDefinition",
        "installedConnector": "ConnectorDefinition",
        "ansibleBaseline": "Practice",
        "memberConnector": "ConnectorDefinition",
        "connector": "ConnectorDefinition",
        "machine": "ExecutionMachine",
        "tool": "CliToolDefinition",
        "release": "CliRelease",
        "installedRelease": "CliRelease",
        "secretBinding": "SecretBinding",
    }
    for k, v in special.items():
        if base.lower().endswith(k.lower()):
            return v
    # If cannot resolve, return Unknown or base
    return "Contract"


def build_context_catalog(merged_schema_path: Path, output_path: Path) -> None:
    from linkml_runtime import SchemaView

    sv = SchemaView(str(merged_schema_path))
    all_classes = sorted(sv.all_classes())
    git_contract_kinds = set()

    for name in all_classes:
        cls = sv.get_class(name)
        slots = sv.class_slots(name)
        annotations = cls.annotations or {}
        raw_state_authority = annotations["jumo.state_authority"].value if "jumo.state_authority" in annotations else None
        if "apiVersion" in slots and "kind" in slots and raw_state_authority != "postgres":
            git_contract_kinds.add(name)

    def get_class_references(cls_name: str, visited=None):
        if visited is None:
            visited = set()
        if cls_name in visited:
            return []
        visited.add(cls_name)

        results = []
        cls = sv.get_class(cls_name)
        if not cls:
            return results

        for sname in sv.class_slots(cls_name):
            slot = sv.induced_slot(sname, cls_name)
            if not slot:
                continue
            if slot.range == "ContractReference":
                target_k = resolve_target_kind(sname, git_contract_kinds)
                results.append({
                    "slotName": sname,
                    "targetKind": target_k,
                    "cardinality": "MANY" if slot.multivalued else "ONE",
                    "required": bool(slot.required),
                    "description": slot.description or "",
                })
            elif slot.range in all_classes and slot.range != "Metadata":
                nested = get_class_references(slot.range, visited)
                results.extend(nested)

        return results

    catalog_kinds = {}
    for kind in sorted(git_contract_kinds):
        cls = sv.get_class(kind)
        annotations = cls.annotations or {}
        comp = annotations["jumo.composition"].value if "jumo.composition" in annotations else "ADDITIVE"
        raw_sa = annotations["jumo.state_authority"].value if "jumo.state_authority" in annotations else None
        sa = "GIT_TRANSITIONAL" if raw_sa == "git_transitional" else "GIT"

        outgoing = get_class_references(kind)
        catalog_kinds[kind] = {
            "kind": kind,
            "composition": comp,
            "stateAuthority": sa,
            "outgoing": outgoing,
            "incoming": [],
        }

    for source_kind, data in catalog_kinds.items():
        for out in data["outgoing"]:
            target_kind = out["targetKind"]
            if target_kind in catalog_kinds:
                catalog_kinds[target_kind]["incoming"].append({
                    "fromKind": source_kind,
                    "slotName": out["slotName"],
                    "cardinality": out["cardinality"],
                    "description": out["description"],
                })

    catalog = {
        "$comment": BANNER_TEXT,
        "source": "metamodel/jumo-v1.yaml",
        "kindCount": len(catalog_kinds),
        "kinds": catalog_kinds,
    }
    output_path.write_text(json.dumps(catalog, indent=2) + "\n")


def build_reference_extractor(merged_schema_path: Path, output_path: Path) -> None:
    from linkml_runtime import SchemaView

    sv = SchemaView(str(merged_schema_path))
    all_classes = sorted(sv.all_classes())
    git_contract_kinds = set()

    for name in all_classes:
        cls = sv.get_class(name)
        slots = sv.class_slots(name)
        annotations = cls.annotations or {}
        raw_state_authority = annotations["jumo.state_authority"].value if "jumo.state_authority" in annotations else None
        if "apiVersion" in slots and "kind" in slots and raw_state_authority != "postgres":
            git_contract_kinds.add(name)

    def class_has_refs(cls_name: str, visited=None):
        if visited is None:
            visited = set()
        if cls_name in visited:
            return False
        visited.add(cls_name)
        cls = sv.get_class(cls_name)
        if not cls:
            return False
        for sname in sv.class_slots(cls_name):
            slot = sv.induced_slot(sname, cls_name)
            if not slot:
                continue
            if slot.range == "ContractReference":
                return True
            if slot.range in all_classes and slot.range != "Metadata":
                if class_has_refs(slot.range, visited.copy()):
                    return True
        return False

    classes_with_refs = {c for c in all_classes if class_has_refs(c)}

    methods = []
    for cls_name in sorted(classes_with_refs):
        lines = []
        lines.append(f"    public static void extractFrom{cls_name}({cls_name} obj, List<OutgoingReference> refs) {{")
        lines.append("        if (obj == null) return;")

        for sname in sv.class_slots(cls_name):
            slot = sv.induced_slot(sname, cls_name)
            if not slot:
                continue
            getter = sname
            if slot.range == "ContractReference":
                if slot.multivalued:
                    lines.append(f"        if (obj.{getter}() != null) {{")
                    lines.append(f"            for (ContractReference r : obj.{getter}()) {{")
                    lines.append(f"                if (r != null) refs.add(new OutgoingReference(\"{sname}\", r));")
                    lines.append("            }")
                    lines.append("        }")
                else:
                    lines.append(f"        if (obj.{getter}() != null) {{")
                    lines.append(f"            refs.add(new OutgoingReference(\"{sname}\", obj.{getter}()));")
                    lines.append("        }")
            elif slot.range in classes_with_refs and slot.range != "Metadata":
                if slot.multivalued:
                    lines.append(f"        if (obj.{getter}() != null) {{")
                    lines.append(f"            for ({slot.range} item : obj.{getter}()) {{")
                    lines.append(f"                extractFrom{slot.range}(item, refs);")
                    lines.append("            }")
                    lines.append("        }")
                else:
                    lines.append(f"        extractFrom{slot.range}(obj.{getter}(), refs);")

        lines.append("    }")
        methods.append("\n".join(lines))

    top_level_dispatches = []
    for kind in sorted(git_contract_kinds):
        if kind in classes_with_refs:
            top_level_dispatches.append(f"        if (model instanceof {kind} m) {{\n            extractFrom{kind}(m, refs);\n            return refs;\n        }}")

    extractor_source = f"""// {BANNER_TEXT}
package dev.jumo.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ContractReferenceExtractor {{

    public record OutgoingReference(String slotName, ContractReference reference) {{}}

    private ContractReferenceExtractor() {{}}

    public static List<OutgoingReference> extract(Object model) {{
        if (model == null) {{
            return Collections.emptyList();
        }}
        List<OutgoingReference> refs = new ArrayList<>();
{chr(10).join(top_level_dispatches)}
        return refs;
    }}

{chr(10).join(methods)}
}}
"""
    output_path.write_text(extractor_source)


def main() -> None:
    command = sys.argv[1]
    if command == "strip-nullable-json-schema":
        strip_nullable_json_schema(Path(sys.argv[2]))
    elif command == "add-json-comment":
        add_json_comment(Path(sys.argv[2]))
    elif command == "add-banner":
        add_banner(Path(sys.argv[2]), sys.argv[3])
    elif command == "add-java-banners":
        add_java_banners(Path(sys.argv[2]))
    elif command == "build-manifest":
        build_manifest(Path(sys.argv[2]), Path(sys.argv[3]))
    elif command == "build-context-catalog":
        build_context_catalog(Path(sys.argv[2]), Path(sys.argv[3]))
    elif command == "build-reference-extractor":
        build_reference_extractor(Path(sys.argv[2]), Path(sys.argv[3]))
    elif command == "fix-java-primitive-builder-defaults":
        fix_java_primitive_builder_defaults(Path(sys.argv[2]))
    elif command == "build-contract-kind":
        build_contract_kind(Path(sys.argv[2]), Path(sys.argv[3]))
    elif command == "canonicalize-jsonld-context":
        canonicalize_jsonld_context(Path(sys.argv[2]))
    elif command == "canonicalize-sql":
        canonicalize_sql(Path(sys.argv[2]))
    elif command == "normalize-markdown-whitespace":
        normalize_markdown_whitespace(Path(sys.argv[2]))
    elif command == "rdf-structural-check":
        rdf_structural_check(Path(sys.argv[2]), Path(sys.argv[3]))
    else:
        raise SystemExit(f"unknown command: {command}")


if __name__ == "__main__":
    main()
