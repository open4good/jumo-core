# LOT 1 — Generation spike report

Environment: LinkML 1.11.1, Python 3.12.3, installed in an isolated venv
(`/tmp/.../scratchpad/linkml-venv`, not committed). Source: `metamodel/spike/jumo-spike.yaml`,
translating three representative existing kinds — `Operator` (flat, enums), `ConnectorDefinition`
(nested objects, lists), `PolicySet` (cross-references, conditional requiredness) — plus their
shared `Metadata` block and six enums. Verdicts below gate the alignment plan's decision 2
(generate Java AND adopt it as the runtime model).

## Per-generator verdict

| Generator | Command | Exit | Verdict | Notes |
|---|---|---|---|---|
| `gen-json-schema` | `gen-json-schema jumo-spike.yaml` | 0 | **Usable** | `additionalProperties: false`, `const` for `kind`/`apiVersion`, `required` — all faithfully translated. See "JSON Schema layout" below for the one real decision it raises. |
| `gen-java` | `gen-java --template-variant records --true-enums --package ... jumo-spike.yaml` | 0 | **Usable** | `--true-enums` is required — without it, enum-typed slots degrade to plain `String` (tested both ways). With it: real Java `enum` types with Jackson `@JsonCreator`, one record per class, builder included. No custom template needed. |
| `gen-openapi` (`linkml-openapi` 0.17.0, **separate PyPI package**) | `gen-openapi --openapi-version 3.1.0 jumo-spike.yaml` | 0 | **Usable, different tool than assumed** | See "OpenAPI correction" below — this is not the same generator the plan's I4 finding described. |
| `gen-graphql` | `gen-graphql jumo-spike.yaml` | 0 | **Usable** | SDL only, confirmed: `grep -c 'type Query'` → 0. Matches the plan's LOT 13 assumption exactly. |
| `gen-owl` | `gen-owl jumo-spike.yaml` | 0 | **Usable** | One non-fatal `DeprecationWarning` about a future default change (`skip_vacuous_min_zero_cardinality_axioms`); no action needed now, revisit if LinkML is upgraded past 1.11.1. |
| `gen-sqlddl` | `gen-sqlddl jumo-spike.yaml` | 0 | **Usable, confirms the plan's own caveat** | Logged `Unknown range base: None for id = Identifier` for my custom pattern-constrained `types:` (fixable: add explicit `base: str`), but degraded gracefully to `TEXT` — output still correct. Produces a **normalized relational schema** (separate tables per nested class, join tables for multivalued slots, `INTEGER` surrogate keys) — nothing like Jumo's actual flat `matter`/`organization_instance` tables with `realm_id`/`project_id` columns. Confirms LOT 3's stated reserve: generated DDL is a base only; the Realm-scoped overlay migration stays hand-written. |
| `gen-jsonld-context` | `gen-jsonld-context jumo-spike.yaml` | 0 | **Usable** | Clean, no issues. |
| `gen-doc` | `gen-doc --directory out/doc jumo-spike.yaml` | 0 | **Usable, not what "compact glossary" implied** | See "Doc generator" below. |

Also verified: `linkml-lint jumo-spike.yaml` → 0 errors, 99 warnings, all `standard_naming` (LinkML
prefers snake_case slots / Title Case enum values; Jumo's existing camelCase/SCREAMING_SNAKE wire
vocabulary triggers this). Not blocking — a lint-config suppression, not a schema problem, since
renaming would break every one of the 25 existing `.jumo/**/*.yml` instances and the invariant that
"renaming must never alter authority."

## Reproducibility (LOT 3's regen-diff gate)

`gen-json-schema` and `gen-java` were each run twice from the same source; `diff` on both outputs
reported **byte-identical**. The CI gate ("regenerate to a temp directory, fail on any diff") is
sound as designed.

## OpenAPI correction (revises plan finding I4)

The plan's I4 finding, based on `linkml.io`'s documentation for the *generator built into the core
`linkml` package*, said `gen-openapi` emits OpenAPI **3.0.3**, components-only, requiring a
hand-supplied paths template. That generator is superseded. The actively maintained tool is
**`linkml-openapi`** (PyPI, a separate install, 0.17.0 as tested), which:

- Emits **either 3.0.3 or 3.1.0** via `--openapi-version` (3.0.3 is its own default, chosen for
  downstream-codegen compatibility; 3.1.0 matches Jumo's current handwritten spec, tested and
  confirmed working).
- Emits an **RFC 7807 Problem schema** by default (`--error-schema`) — the same standard behind
  SESSION-HANDOFF.md's "RFC 9457 API errors" note. Coincidental alignment, not something I
  configured.
- Is **annotation-driven**, not template-driven: a class becomes a REST resource via
  `annotations: {openapi.resource: true, openapi.operations: "list,create"}` directly in the
  LinkML source, and the tool then generates full CRUD paths from those annotations — genuinely
  more "contract-first, zero non-generated code" than a hand-supplied-template approach, since the
  path shape lives in the same file as the data model.
- Has one usability trap: if **no** class carries an explicit `openapi.resource` annotation, it
  silently falls back to treating **every** non-abstract class as a resource, including nested
  ones with no identifier slot (`Metadata`, `OperatorSpec`, ...) — which then fails hard demanding
  an identifier. Confirmed by triggering the crash on the unannotated schema, then fixing it by
  annotating exactly `Operator`. **Rule for LOT 2/3: always annotate at least one class**, even if
  Jumo's real endpoints (hand-designed, not generic per-kind CRUD — see
  `api/openapi/jumo-web-v1.yaml`'s 7 endpoints) end up needing few or no auto-generated resources.
- `components.schemas` is populated for **every class reachable from the schema**, independent of
  which classes are marked as resources — confirmed: the annotated-`Operator`-only run still
  produced schema entries for all 9 classes, all 7 enums, and `Problem`.

**Recommendation**: use `linkml-openapi`, target 3.1.0 (no downgrade from today's handwritten
file), let it own `components.schemas` fully, and decide per-endpoint in LOT 11 whether Jumo's
small set of hand-shaped endpoints (`/realms/{realmId}/matters/{id}/owner-decisions`, etc.) are
worth expressing via `openapi.path`/`openapi.operations` annotations or left as a thin
hand-written `paths:` block spliced with the generated `components:`. Not a LOT 1 decision.

## JSON Schema layout (the one real open decision this spike was meant to resolve)

Tested both candidates named in the plan:

- **Single bundle** (default `gen-json-schema` output): one file, `$defs` holds every class once.
- **Per-kind via `--top-class`**: re-running once per kind puts that kind's slots at the document
  top level (`required`/`properties` match the kind exactly) — **but `$defs` still contains every
  class in the whole schema, not just that kind's dependency closure**. Confirmed by inspecting
  `--top-class Operator` output: `$defs` included `ConnectorDefinition`, `PolicySet`, and
  everything else, unchanged from the single-bundle run.

Per-kind generation does not produce lean, self-contained files the way the current 57 hand-written
ones are — it produces 59 near-duplicate files, each carrying all 59 classes' `$defs`. **Decision:
single bundle.** `ContractLoader.schema()` (currently one `JsonSchema` per file, looked up by
`kind.schemaFile()`) needs to change to load one generated file and resolve `#/$defs/<Kind>`
instead — a real but bounded refactor, scoped to LOT 3 (pipeline) and LOT 5 (Java model adoption).
The LOT 3 "manifest of kinds, versions, and state authorities" the plan already called for is
exactly the `kind → $defs pointer` map this decision needs; no new artifact required.

## Doc generator note

`gen-doc`'s default output is not a single compact glossary — it is a full documentation site: one
Markdown file **per class, per slot, and per type** (77 files from 9 classes + ~30 slots + built-in
types, for this 3-kind spike; the real 59-class metamodel will produce proportionally more).
Reframe LOT 12: rather than hand-rolling schema documentation pages, `gen-doc`'s sprawl is exactly
the kind of thing `mkdocs` serves well and is what LinkML's own project documentation uses it for.
Publish it as-is under the Caddy static contracts page instead of writing a "compact glossary"
generator; cheaper and it is what the tool is actually for.

## Fidelity gap to flag, not silently accept

Non-required slots generate as `"type": ["<X>", "null"]` in JSON Schema (confirmed on
`OperatorSpec.roleKey`), where the current hand-written schemas type them as `<X>` only and treat
absence as the sole way to omit a field. This means a document setting `roleKey: null` explicitly
would **validate under the generated schema but be rejected by the current one** — a real,
if narrow, behavioral difference. Does not block LOT 1; record as a LOT 2 open item: either accept
the wider surface (an explicit null is harmless here) or post-process the generated schema to strip
`"null"` from non-required slot types before it lands in `.jumo/schemas/`.

## Verdict

**No generator is unusable.** Decision 2 (generate Java records and adopt them as the runtime
model) stands: `gen-java --template-variant records --true-enums` produces exactly what
`ContractLoader`/`PolicyEngine` need, with no custom Jinja template. The plan proceeds to LOT 2
with three corrections carried forward: `linkml-openapi` (not core `gen-openapi`) targeting 3.1.0,
single-bundle JSON Schema with a `ContractLoader` refactor, and `gen-doc`'s sprawl repurposed as
LOT 12's documentation site rather than a hand-rolled compact glossary.
