package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

repository_facts := facts if {
	some item in input
	is_object(item.contents)
	facts := object.get(item.contents, "jumoRepositoryFacts", {})
	count(facts) > 0
}

deny contains {"msg": "governed Markdown front matter is invalid YAML", "path": fact.path, "rule": "repository.front-matter.yaml"} if {
	some fact in object.get(repository_facts, "governedMarkdown", [])
	fact.status == "INVALID_YAML"
}

deny contains {"msg": "governed Markdown front matter must be a mapping", "path": fact.path, "rule": "repository.front-matter.mapping"} if {
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
	some criterion in object.get(repository_facts, "completedCriteria", [])
	"container" in object.get(criterion, "keywords", [])
	not criterion_has_candidate(criterion)
}

deny contains {"msg": sprintf("%s/%s claims container behavior without implementation evidence", [criterion.workOrderId, criterion.criterionId]), "path": sprintf(".jumo/work/%s.yml", [criterion.workOrderId]), "rule": "repository.evidence.keyword"} if {
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
	some source in object.get(repository_facts, "javaSources", [])
	not startswith(source.path, "modules/forge-applier/")
	github_write_evidence(source)
}
