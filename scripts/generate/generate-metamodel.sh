#!/usr/bin/env bash
# Regenerates every artifact derived from metamodel/jumo-v1.yaml.
#
# Adapted from jumo's scripts/generate/generate-metamodel.sh (metamodel-and-policy-to-core AC2):
# jumo-core is the PLATFORM source of the metamodel, so it is also the source of jumo-model, the
# Java records generated from it. Unlike jumo's copy, this one does not generate
# ContractKind.java -- that file lives in jumo's modules/project-contract, which has no home here.
#
# Usage:
#   scripts/generate/generate-metamodel.sh            writes into metamodel/generated/ and
#                                             modules/jumo-model/src/main/java/
#   scripts/generate/generate-metamodel.sh --check    regenerates into a temp directory and fails on any
#                                             diff against the committed output (the CI
#                                             reproducibility gate)
#
# Requires the pinned toolchain in metamodel/requirements.txt active on PATH:
#   python3 -m venv .venv && source .venv/bin/activate
#   pip install -r metamodel/requirements.txt
#
# GENERATED -- everything under metamodel/generated/ is produced by this script from
# metamodel/jumo-v1.yaml and its imported modules. Do not hand-edit generated output; edit the
# LinkML source and re-run this script.
#
# The Java records live inside modules/jumo-model/src/main/java/ -- not under metamodel/generated/
# -- so Maven compiles them as ordinary module sources rather than needing a build-helper
# add-source pointed at a second tree. They still carry the same "GENERATED -- do not edit" banner
# and are covered by --check below, via their own diff rather than the blanket
# metamodel/generated/ one.

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
COMMITTED_OUT="$ROOT_DIR/metamodel/generated"
COMMITTED_JAVA_MODEL_DIR="$ROOT_DIR/modules/jumo-model/src/main/java/dev/jumo/model"
if [[ -f "$ROOT_DIR/.venv/bin/activate" ]]; then
  # shellcheck disable=SC1091
  source "$ROOT_DIR/.venv/bin/activate"
  export PATH="$ROOT_DIR/.venv/bin:$PATH"
fi
PYTHON="$ROOT_DIR/.venv/bin/python3"
if [[ ! -x "$PYTHON" ]]; then
  PYTHON="$(command -v python3)"
fi
POSTPROCESS="$ROOT_DIR/scripts/generate/metamodel_postprocess.py"

MODE="write"
if [[ "${1:-}" == "--check" ]]; then
  MODE="check"
fi

for tool in gen-linkml gen-json-schema gen-java gen-openapi gen-graphql gen-owl gen-shacl \
            gen-sqlddl gen-jsonld-context gen-doc python3; do
  if ! command -v "$tool" >/dev/null 2>&1; then
    echo "generate-metamodel.sh: missing '$tool' on PATH -- activate a venv with" \
         "'pip install -r metamodel/requirements.txt' first" >&2
    exit 1
  fi
done

if [[ "$MODE" == "check" ]]; then
  OUT_DIR="$(mktemp -d)"
  STAGE_DIR="$(mktemp -d)"
  trap 'rm -rf "$OUT_DIR" "$STAGE_DIR"' EXIT
  JAVA_MODEL_DIR="$STAGE_DIR/jumo-model/dev/jumo/model"
else
  OUT_DIR="$COMMITTED_OUT"
  rm -rf "$OUT_DIR"
  JAVA_MODEL_DIR="$COMMITTED_JAVA_MODEL_DIR"
  rm -rf "$JAVA_MODEL_DIR"
fi

mkdir -p "$OUT_DIR"/merged "$OUT_DIR"/jsonschema "$OUT_DIR"/openapi \
         "$OUT_DIR"/graphql "$OUT_DIR"/owl "$OUT_DIR"/shacl "$OUT_DIR"/jsonld "$OUT_DIR"/sqlddl \
         "$OUT_DIR"/docs
mkdir -p "$JAVA_MODEL_DIR"

# --- Flatten imports first. --------------------------------------------------------------------
# See jumo's generate-metamodel.sh for why: every generator except gen-json-schema treats classes
# owned by an imported module as external, so every generator below runs against the merged
# schema uniformly. cd + a relative path keeps gen-linkml's embedded source_file: field identical
# across machines.
echo "== Flattening imports =="
( cd "$ROOT_DIR" && gen-linkml --mergeimports -f yaml -o "$OUT_DIR/merged/jumo-v1.merged.yaml" \
    metamodel/jumo-v1.yaml )
MERGED="$OUT_DIR/merged/jumo-v1.merged.yaml"

echo "== JSON Schema (single bundle) =="
gen-json-schema "$MERGED" > "$OUT_DIR/jsonschema/jumo-v1.schema.json"
"$PYTHON" "$POSTPROCESS" strip-nullable-json-schema "$OUT_DIR/jsonschema/jumo-v1.schema.json"

echo "== Java records =="
gen-java --template-variant records --true-enums --package dev.jumo.model \
  --output-directory "$JAVA_MODEL_DIR" "$MERGED"
"$PYTHON" "$POSTPROCESS" fix-java-primitive-builder-defaults "$JAVA_MODEL_DIR"
"$PYTHON" "$POSTPROCESS" add-java-banners "$JAVA_MODEL_DIR"

echo "== OpenAPI 3.1.0 =="
gen-openapi --openapi-version 3.1.0 --format yaml "$MERGED" > "$OUT_DIR/openapi/jumo-v1.openapi.yaml"
"$PYTHON" "$POSTPROCESS" add-banner "$OUT_DIR/openapi/jumo-v1.openapi.yaml" yaml

echo "== GraphQL SDL =="
gen-graphql "$MERGED" > "$OUT_DIR/graphql/jumo-v1.graphql"
"$PYTHON" "$POSTPROCESS" add-banner "$OUT_DIR/graphql/jumo-v1.graphql" graphql

echo "== OWL =="
# Not byte-reproducible run to run -- see rdf-structural-check in metamodel_postprocess.py.
gen-owl "$MERGED" > "$OUT_DIR/owl/jumo-v1.owl.ttl"
"$PYTHON" "$POSTPROCESS" add-banner "$OUT_DIR/owl/jumo-v1.owl.ttl" turtle

echo "== SHACL =="
gen-shacl "$MERGED" > "$OUT_DIR/shacl/jumo-v1.shacl.ttl"
"$PYTHON" "$POSTPROCESS" add-banner "$OUT_DIR/shacl/jumo-v1.shacl.ttl" turtle

echo "== JSON-LD context =="
gen-jsonld-context "$MERGED" > "$OUT_DIR/jsonld/jumo-v1.context.jsonld"
"$PYTHON" "$POSTPROCESS" canonicalize-jsonld-context "$OUT_DIR/jsonld/jumo-v1.context.jsonld"

echo "== SQL DDL =="
gen-sqlddl --dialect postgresql "$MERGED" > "$OUT_DIR/sqlddl/jumo-v1.sql"
"$PYTHON" "$POSTPROCESS" canonicalize-sql "$OUT_DIR/sqlddl/jumo-v1.sql"
"$PYTHON" "$POSTPROCESS" add-banner "$OUT_DIR/sqlddl/jumo-v1.sql" sql

echo "== Documentation site =="
gen-doc --directory "$OUT_DIR/docs" "$MERGED"
"$PYTHON" "$POSTPROCESS" normalize-markdown-whitespace "$OUT_DIR/docs"
cat > "$OUT_DIR/docs/GENERATED.md" <<'EOF'
# Generated documentation site

Every page under this directory is generated by `scripts/generate/generate-metamodel.sh` from
`metamodel/jumo-v1.yaml`. Do not hand-edit; edit the LinkML source and regenerate.
EOF

echo "== Manifest =="
"$PYTHON" "$POSTPROCESS" build-manifest "$MERGED" "$OUT_DIR/manifest.json"

echo "== Context Catalog =="
"$PYTHON" "$POSTPROCESS" build-context-catalog "$MERGED" "$OUT_DIR/context-catalog.json"

echo "== ContractReferenceExtractor.java =="
"$PYTHON" "$POSTPROCESS" build-reference-extractor "$MERGED" "$JAVA_MODEL_DIR/ContractReferenceExtractor.java"

cat > "$OUT_DIR/README.md" <<'EOF'
# metamodel/generated/

GENERATED by `scripts/generate/generate-metamodel.sh` from `metamodel/jumo-v1.yaml` and its imported
modules under `metamodel/modules/`. Do not hand-edit anything under this directory -- edit the
LinkML source and re-run the script. CI (`scripts/generate/generate-metamodel.sh --check`) regenerates into
a temporary directory and fails the build on any diff against what is committed here.

| Directory | Artifact | Generator |
|---|---|---|
| `merged/` | Flattened schema (single file, no imports) | `gen-linkml --mergeimports` |
| `jsonschema/` | JSON Schema, single bundle with `$defs` per class | `gen-json-schema` |
| `openapi/` | OpenAPI 3.1.0 | `gen-openapi` (`linkml-openapi` package) |
| `graphql/` | GraphQL SDL (types only, no `Query` root) | `gen-graphql` |
| `owl/` | OWL ontology, Turtle syntax. Not byte-reproducible run to run (blank-node serialization order); `--check` verifies it structurally instead -- see `metamodel_postprocess.py` | `gen-owl` |
| `shacl/` | SHACL shapes, Turtle syntax. Same non-reproducibility and check as OWL above | `gen-shacl` |
| `jsonld/` | JSON-LD `@context` | `gen-jsonld-context` |
| `sqlddl/` | SQL DDL, PostgreSQL dialect, base schema only | `gen-sqlddl` |
| `docs/` | Full documentation site, one page per class/slot/type | `gen-doc` |
| `manifest.json` | `kind -> {JSON Schema pointer, Java class, git-contract, state authority}`, derived from the merged schema via `SchemaView`, not hand-maintained | `scripts/metamodel_postprocess.py build-manifest` |
| `context-catalog.json` | Bidirectional relationship graph schema for all Git contract kinds | `scripts/metamodel_postprocess.py build-context-catalog` |

One more generated artifact lives outside this directory, in the Maven module that consumes it, so
Maven compiles it as an ordinary source rather than needing a second source root:

| Location | Artifact | Generator |
|---|---|---|
| `modules/jumo-model/src/main/java/dev/jumo/model/` | Java 21 records, one class per LinkML class, true enums, and `ContractReferenceExtractor.java` | `gen-java --template-variant records --true-enums` & `scripts/metamodel_postprocess.py build-reference-extractor` |

`modules/project-contract`'s `ContractKind.java` (the closed enum of git-contract kinds) is jumo's
own generated artifact, not jumo-core's -- it is control-plane-specific code, generated in jumo
from the pinned metamodel (metamodel-and-policy-to-core AC2).
EOF

if [[ "$MODE" == "check" ]]; then
  # OWL and SHACL are not byte-reproducible (blank-node serialization order, not content --
  # see metamodel_postprocess.py's module docstring). Checked structurally instead; excluded from
  # the byte-diff below so a passing structural check isn't also flagged as a diff.
  DIFF_STATUS=0
  "$PYTHON" "$POSTPROCESS" rdf-structural-check \
    "$COMMITTED_OUT/owl/jumo-v1.owl.ttl" "$OUT_DIR/owl/jumo-v1.owl.ttl" || DIFF_STATUS=1
  "$PYTHON" "$POSTPROCESS" rdf-structural-check \
    "$COMMITTED_OUT/shacl/jumo-v1.shacl.ttl" "$OUT_DIR/shacl/jumo-v1.shacl.ttl" || DIFF_STATUS=1

  if ! diff -rq -x jumo-v1.owl.ttl -x jumo-v1.shacl.ttl "$COMMITTED_OUT" "$OUT_DIR" \
      > /tmp/generate-metamodel-diff.txt 2>&1; then
    DIFF_STATUS=1
  fi
  if ! diff -rq "$COMMITTED_JAVA_MODEL_DIR" "$JAVA_MODEL_DIR" \
      >> /tmp/generate-metamodel-diff.txt 2>&1; then
    DIFF_STATUS=1
  fi

  if [[ "$DIFF_STATUS" -eq 0 ]]; then
    echo "OK: the generated metamodel tree (metamodel/generated/, modules/jumo-model's Java" \
         "records) is reproducible from metamodel/jumo-v1.yaml (byte-for-byte except OWL/SHACL," \
         "checked structurally)"
  else
    echo "FAIL: regenerating metamodel/jumo-v1.yaml produces a different tree than what is" \
         "committed -- run scripts/generate/generate-metamodel.sh and commit the diff" >&2
    cat /tmp/generate-metamodel-diff.txt >&2
    exit 1
  fi
fi
