package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

repository_facts := facts if {
	some item in input
	is_object(item.contents)
	facts := object.get(item.contents, "jumoRepositoryFacts", {})
	count(facts) > 0
}

# Whether this evaluation was given repository facts at all.
#
# A rule that concludes "X is not a declared payload schema" from `not x in known_payload_schemas`
# is reading an EMPTY set as a COMPLETE one. That is sound only when the facts populating those
# sets were actually supplied. `repository_facts` is undefined when they were not, so referencing
# it directly in a rule body makes that body undefined and the rule simply does not fire -- but a
# set rule like `known_payload_schemas` is different: its own body is undefined, so it evaluates to
# an empty-but-DEFINED set, `not x in set()` is true for every x, and the deny fires on everything.
# The polarity of an unsupplied fact therefore depends on how the rule reaches it, which is why
# four rule families refused every document while thirteen others silently checked nothing.
#
# The control plane's candidate-corpus gate is the evaluation that has no facts: they exist only as
# the output of scripts/generate/extract-repository-facts.py at lint time, and nothing computes them
# at runtime. Measured 2026-09-12 against this bundle: the runtime envelope returned 34 violations,
# 28 of them from these four families, naming documents that are valid and that the same bundle
# accepts when facts are present. Guarding restores "absence of evidence is not evidence of absence".
#
# The cost is deliberate and is NOT nothing: a candidate with a genuinely bad payloadSchemaRef, `of`,
# output.schemaRef or output.javaType is caught only where the family it needs was actually
# supplied. runtime-repository-facts-provider buys most of that back by deriving three of the
# families inside the control plane -- guarding is what makes the gate usable at all, not what
# makes it complete.
#
# The guard is PER FAMILY, and that is the whole point of it rather than a refinement of it. One
# boolean over the whole facts object would re-arm all four rule families the moment ANY family
# arrived, and the runtime can supply classSlots, payloadSchemaSlots and contractKinds but NOT
# javaSources -- 1265 source texts, 5.3 MB, measured 2026-09-13, which is not a per-evaluation
# input. Under a single boolean, corpus.prompt.structured-java-type would then read an absent
# javaSources as an empty list, find no match for every javaType, and deny every STRUCTURED
# prompt -- recreating on one rule exactly the defect candidate-corpus-envelope-faithful guarded.
# A partially-supplied facts object must not arm the rules it cannot satisfy.
# Whether PRESENT BUT EMPTY counts as supplied depends on the family, and getting this uniform in
# either direction is wrong.
#
# For most families an empty value is a real answer: a corpus with no ADRs genuinely has no
# decisionIds, and repository.front-matter.adr-reference must still refuse a supersedes pointing at
# one -- there is a test asserting exactly that. Treating empty as unsupplied there would silence a
# rule that was working.
#
# For these three it never is. The metamodel always has generated classes, declared payload schemas
# and Git-contract kinds, so an empty value can only mean the bundle, the schemas directory or
# manifest.json could not be read. Arming a membership test against it refuses every document --
# which is the original defect candidate-corpus-envelope-faithful guarded, and, measured on
# 2026-09-13, exactly what an absent contractKinds did to a projection naming the real kind TeamSpec.
never_legitimately_empty := {"classSlots", "payloadSchemaSlots", "contractKinds"}

supplied_fact_families contains name if {
	some name, _ in repository_facts
	not name in never_legitimately_empty
}

supplied_fact_families contains name if {
	some name, value in repository_facts
	name in never_legitimately_empty
	count(value) > 0
}

repository_facts_supplied(family) if {
	family in supplied_fact_families
}

# Which fact families each fact-dependent deny rule needs, so an evaluation can say what it could not
# evaluate instead of returning a clean verdict it has not earned
# (corpus-rules-silently-unchecked-at-runtime AC3).
#
# Kept beside the guards and checked against them by jumo's
# scripts/verify/check-corpus-fact-dependencies.py, which derives the same set from this source and
# fails when the two disagree -- so this table cannot drift away from the rules it describes, and a
# new fact-dependent rule cannot be added without appearing here.
#
# corpus.projection.field-path is the one approximation: it reads classSlots on its `of` branch and
# payloadSchemaSlots on its payloadSchemaRef branch, so with only one supplied it still evaluates
# half the corpus. It is reported unevaluated when either is missing, which over-reports rather than
# under-reports -- the safe direction for a signal whose whole job is to stop a partial pass reading
# as a complete one.
fact_dependent_rules := {
	"corpus.journey.emission-kind": {"contractKinds"},
	"corpus.journey.emission-reference-kind": {"contractKinds"},
	"corpus.projection.class": {"classSlots"},
	"corpus.projection.field-path": {"classSlots", "payloadSchemaSlots"},
	"corpus.projection.options-kind": {"contractKinds"},
	"corpus.projection.options-nested-kind": {"contractKinds"},
	"corpus.projection.payload-schema": {"payloadSchemaSlots"},
	"corpus.prompt.structured-java-type": {"javaSources"},
	"corpus.prompt.structured-schema": {"classSlots"},
	"repository.evidence.keyword": {"completedCriteria", "javaSources"},
	"repository.evidence.vocabulary": {"completedCriteria", "vocabulary"},
	"repository.forge.applier-only-writer": {"javaSources"},
	"repository.front-matter.adr-reference": {"decisionIds", "governedMarkdown"},
	"repository.front-matter.audience": {"documentationRoots", "governedMarkdown"},
	"repository.front-matter.freshness": {"governedMarkdown"},
	"repository.front-matter.mapping": {"governedMarkdown"},
	"repository.front-matter.yaml": {"governedMarkdown"},
	"repository.interface.normative-proposal-path": {"governedMarkdown"},
}

# The rules this evaluation could not decide, each with the families it was not given. A caller that
# gets an empty deny set and a non-empty unevaluated set has NOT been told the corpus is clean.
unevaluated contains {"rule": rule, "missing": sort(missing)} if {
	some rule, families in fact_dependent_rules
	missing := {family |
		some family in families
		not repository_facts_supplied(family)
	}
	count(missing) > 0
}

deny contains {"msg": "governed Markdown front matter is invalid YAML", "path": fact.path, "rule": "repository.front-matter.yaml"} if {
	repository_facts_supplied("governedMarkdown")
	some fact in object.get(repository_facts, "governedMarkdown", [])
	fact.status == "INVALID_YAML"
}

deny contains {"msg": "governed Markdown front matter must be a mapping", "path": fact.path, "rule": "repository.front-matter.mapping"} if {
	repository_facts_supplied("governedMarkdown")
	some fact in object.get(repository_facts, "governedMarkdown", [])
	fact.status == "NOT_MAPPING"
}

matching_documentation_roots(path) := {root |
	some root in object.get(repository_facts, "documentationRoots", [])
	root_path_matches(path, root.path)
}

root_path_matches(path, root) if {
	path == root
}

root_path_matches(path, root) if {
	startswith(path, sprintf("%s/", [root]))
}

longest_documentation_root(path) := root if {
	some root in matching_documentation_roots(path)
	longer := {other | some other in matching_documentation_roots(path); count(other.path) > count(root.path)}
	count(longer) == 0
}

deny contains {"msg": "governed Markdown audience exceeds its declared documentation root", "path": fact.path, "rule": "repository.front-matter.audience"} if {
	repository_facts_supplied("governedMarkdown")
	repository_facts_supplied("documentationRoots")
	some fact in object.get(repository_facts, "governedMarkdown", [])
	fact.status == "MAPPING"
	root := longest_documentation_root(fact.path)
	audience := object.get(fact.frontMatter, "audience", "")
	corpus.audience_rank(audience) > corpus.audience_rank(root.maximumAudience)
}

duration_days(duration) := to_number(trim_suffix(trim_prefix(duration, "P"), "D")) if {
	regex.match(`^P[0-9]+D$`, duration)
}

duration_days(duration) := to_number(trim_suffix(trim_prefix(duration, "P"), "M")) * 30 if {
	regex.match(`^P[0-9]+M$`, duration)
}

duration_days(duration) := to_number(trim_suffix(trim_prefix(duration, "P"), "Y")) * 365 if {
	regex.match(`^P[0-9]+Y$`, duration)
}

deny contains {"msg": "governed Markdown verification is stale", "path": fact.path, "rule": "repository.front-matter.freshness"} if {
	repository_facts_supplied("governedMarkdown")
	some fact in object.get(repository_facts, "governedMarkdown", [])
	fact.status == "MAPPING"
	verified := object.get(fact.frontMatter, "verified_at", null)
	verified != null
	stale_after := object.get(fact.frontMatter, "stale_after", null)
	stale_after != null
	days := duration_days(stale_after)
	verified_ns := time.parse_rfc3339_ns(sprintf("%sT00:00:00Z", [verified]))
	now_ns := time.parse_rfc3339_ns(sprintf("%sT00:00:00Z", [corpus.policy_context.now]))
	now_ns > verified_ns + ((((days * 24) * 60) * 60) * 1000000000)
}

deny contains {"msg": sprintf("%s names an absent ADR", [direction]), "path": fact.path, "rule": "repository.front-matter.adr-reference"} if {
	repository_facts_supplied("governedMarkdown")
	repository_facts_supplied("decisionIds")
	some fact in object.get(repository_facts, "governedMarkdown", [])
	fact.status == "MAPPING"
	startswith(fact.path, "docs/decisions/")
	some direction in {"supersedes", "superseded_by"}
	some identifier in object.get(fact.frontMatter, direction, [])
	not identifier in object.get(repository_facts, "decisionIds", [])
}

# A surface write path is a glob, so it cannot say "every document below docs/ except the ones
# that state the rules". The corpus knows which those are -- front matter does -- so the check runs
# the other way: take each declared document.change.propose glob and refuse it if it reaches a
# normative document. Pairs with DocumentDraftService.refuseNormativeTarget, which refuses the same
# document at dispatch time; this one refuses the declaration that would make it reachable at all.
proposal_write_globs contains write.pathGlob if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	some write in object.get(surface, "writePaths", [])
	write.capabilityRef == "document.change.propose"
}

deny contains {
	"msg": sprintf("write path %q reaches normative document %q", [pattern, fact.path]),
	"path": fact.path,
	"rule": "repository.interface.normative-proposal-path",
} if {
	repository_facts_supplied("governedMarkdown")
	some fact in object.get(repository_facts, "governedMarkdown", [])
	fact.status == "MAPPING"
	fact.frontMatter.normative == true
	some pattern in proposal_write_globs
	glob.match(pattern, [], fact.path)
}

deny contains corpus.violation("repository.realm.chief-of-staff", document, message) if {
	some document in corpus.documents
	document.kind == "RealmTemplate"
	chief := object.get(corpus.spec(document), "chiefOfStaff", {})
	profile_ref := object.get(chief, "profileRef", null)
	profile_ref != null
	profile := corpus.document_by_kind_id("ChiefOfStaffProfile", profile_ref)
	profile_spec := corpus.spec(profile)
	profile_spec.ownerRealm != corpus.id(document)
	message := "chief-of-staff profile must belong to this Realm"
}

deny contains corpus.violation("repository.realm.chief-of-staff", document, message) if {
	some document in corpus.documents
	document.kind == "RealmTemplate"
	chief := object.get(corpus.spec(document), "chiefOfStaff", {})
	profile_ref := object.get(chief, "profileRef", null)
	profile_ref != null
	profile := corpus.document_by_kind_id("ChiefOfStaffProfile", profile_ref)
	corpus.spec(profile).operatorRef != object.get(chief, "operatorRef", null)
	message := "chief-of-staff profile must configure the named operator"
}

deny contains {"msg": sprintf("%s/%s names unknown implementation token %s", [criterion.workOrderId, criterion.criterionId, token]), "path": sprintf(".jumo/work/%s.yml", [criterion.workOrderId]), "rule": "repository.evidence.vocabulary"} if {
	repository_facts_supplied("completedCriteria")
	repository_facts_supplied("vocabulary")
	some criterion in object.get(repository_facts, "completedCriteria", [])
	some token in object.get(criterion, "camelCaseTokens", [])
	not token in object.get(repository_facts, "vocabulary", [])
}

candidate_sources(criterion) := {source |
	some token in object.get(criterion, "camelCaseTokens", [])
	some source in object.get(repository_facts, "javaSources", [])
	endswith(source.path, sprintf("/%s.java", [token]))
} | {source |
	count(object.get(criterion, "camelCaseTokens", [])) == 0
	some pattern in object.get(criterion, "pathScope", [])
	some source in object.get(repository_facts, "javaSources", [])
	glob.match(pattern, [], source.path)
}

source_has_container_evidence(source) if {
	regex.match(`(?i)(^|[^A-Za-z0-9_])docker([^A-Za-z0-9_]|$)`, source.text)
}

criterion_has_candidate(criterion) if {
	count(candidate_sources(criterion)) > 0
}

criterion_has_container_evidence(criterion) if {
	some source in candidate_sources(criterion)
	source_has_container_evidence(source)
}

deny contains {"msg": sprintf("%s/%s claims container behavior without implementation evidence", [criterion.workOrderId, criterion.criterionId]), "path": sprintf(".jumo/work/%s.yml", [criterion.workOrderId]), "rule": "repository.evidence.keyword"} if {
	repository_facts_supplied("completedCriteria")
	repository_facts_supplied("javaSources")
	some criterion in object.get(repository_facts, "completedCriteria", [])
	"container" in object.get(criterion, "keywords", [])
	not criterion_has_candidate(criterion)
}

deny contains {"msg": sprintf("%s/%s claims container behavior without implementation evidence", [criterion.workOrderId, criterion.criterionId]), "path": sprintf(".jumo/work/%s.yml", [criterion.workOrderId]), "rule": "repository.evidence.keyword"} if {
	repository_facts_supplied("completedCriteria")
	repository_facts_supplied("javaSources")
	some criterion in object.get(repository_facts, "completedCriteria", [])
	"container" in object.get(criterion, "keywords", [])
	criterion_has_candidate(criterion)
	not criterion_has_container_evidence(criterion)
}

# multi-repository-change-set-saga AC5: forge-applier is the only module that may write to a Git
# provider. ".post(" alone would also flag read-only lookups that happen to sit near the string
# "api.github.com" in unrelated code, so both signals must co-occur to count as write evidence.
github_write_evidence(source) if {
	contains(source.text, "api.github.com")
	contains(source.text, ".post(")
}

deny contains {"msg": sprintf("%q writes to a Git provider outside forge-applier", [source.path]), "path": source.path, "rule": "repository.forge.applier-only-writer"} if {
	repository_facts_supplied("javaSources")
	some source in object.get(repository_facts, "javaSources", [])
	not startswith(source.path, "modules/forge-applier/")
	github_write_evidence(source)
}
