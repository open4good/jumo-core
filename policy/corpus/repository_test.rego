package jumo.corpus_repository_test

import rego.v1

item(path, contents) := {"path": path, "contents": contents}

document(path, kind, identifier, spec) := item(path, {
	"apiVersion": "jumo.dev/v1",
	"kind": kind,
	"metadata": {"id": identifier, "namespace": "dev.jumo.test"},
	"spec": spec,
})

has_rule(violations, rule) if {
	some violation in violations
	violation.rule == rule
}

test_rejects_invalid_front_matter_repository_fact if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"governedMarkdown": [{"path": "docs/bad.md", "status": "INVALID_YAML"}],
		"completedCriteria": [], "vocabulary": [], "javaSources": [],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	has_rule(violations, "repository.front-matter.yaml")
}

test_rejects_governed_markdown_repository_semantics if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"governedMarkdown": [{
			"path": "docs/decisions/ADR-9999-bad.md", "status": "MAPPING",
			"frontMatter": {
				"audience": "PUBLISHED_SUMMARY", "verified_at": "2025-01-01",
				"stale_after": "P1D", "supersedes": ["ADR-0000"],
			},
		}],
		"documentationRoots": [{"path": "docs/decisions", "maximumAudience": "PROJECT_SCOPED"}],
		"decisionIds": [], "completedCriteria": [], "vocabulary": [], "javaSources": [],
	}})
	context := item("policy-context.json", {"jumoPolicyContext": {"now": "2026-08-12"}})
	violations := data.jumo.corpus.deny with input as [facts, context]
	has_rule(violations, "repository.front-matter.audience")
	has_rule(violations, "repository.front-matter.freshness")
	has_rule(violations, "repository.front-matter.adr-reference")
}

test_rejects_proposal_write_path_reaching_a_normative_document if {
	surface := document(".jumo/interfaces/web.yml", "InterfaceSurface", "web", {"surfaces": [{
		"id": "documents",
		"writePaths": [{"pathGlob": "docs/**/*.md", "capabilityRef": "document.change.propose"}],
	}]})
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"governedMarkdown": [{
			"path": "docs/decisions/ADR-0001-authority-and-state.md", "status": "MAPPING",
			"frontMatter": {"normative": true, "audience": "PROJECT_SCOPED"},
		}],
		"documentationRoots": [], "decisionIds": [], "completedCriteria": [],
		"vocabulary": [], "javaSources": [],
	}})
	violations := data.jumo.corpus.deny with input as [surface, facts]
	has_rule(violations, "repository.interface.normative-proposal-path")
}

test_accepts_proposal_write_path_confined_to_non_normative_documents if {
	surface := document(".jumo/interfaces/web.yml", "InterfaceSurface", "web", {"surfaces": [{
		"id": "documents",
		"writePaths": [{"pathGlob": "docs/testing/**/*.md", "capabilityRef": "document.change.propose"}],
	}]})
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"governedMarkdown": [
			{
				"path": "docs/decisions/ADR-0001-authority-and-state.md", "status": "MAPPING",
				"frontMatter": {"normative": true, "audience": "PROJECT_SCOPED"},
			},
			{
				"path": "docs/testing/pilot-verification.md", "status": "MAPPING",
				"frontMatter": {"normative": false, "audience": "PROJECT_SCOPED"},
			},
		],
		"documentationRoots": [], "decisionIds": [], "completedCriteria": [],
		"vocabulary": [], "javaSources": [],
	}})
	violations := data.jumo.corpus.deny with input as [surface, facts]
	not has_rule(violations, "repository.interface.normative-proposal-path")
}

test_rejects_cross_realm_chief_of_staff_profile if {
	realm := document(".jumo/realms/home.yml", "RealmTemplate", "home", {"chiefOfStaff": {"operatorRef": "nestor", "profileRef": "cos"}})
	profile := document(".jumo/profiles/cos.yml", "ChiefOfStaffProfile", "cos", {"ownerRealm": "other", "operatorRef": "nestor"})
	violations := data.jumo.corpus.deny with input as [realm, profile]
	has_rule(violations, "repository.realm.chief-of-staff")
}

test_rejects_unknown_completed_criterion_identifier if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"governedMarkdown": [],
		"completedCriteria": [{
			"workOrderId": "bad", "criterionId": "AC1",
			"camelCaseTokens": ["ImaginaryPilotService"], "keywords": [], "pathScope": [],
		}],
		"vocabulary": [], "javaSources": [],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	has_rule(violations, "repository.evidence.vocabulary")
}

test_rejects_unsupported_container_claim if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"governedMarkdown": [], "vocabulary": ["PilotRuntimeAdapter"],
		"completedCriteria": [{
			"workOrderId": "bad", "criterionId": "AC1",
			"camelCaseTokens": ["PilotRuntimeAdapter"], "keywords": ["container"], "pathScope": [],
		}],
		"javaSources": [{"path": "modules/x/src/PilotRuntimeAdapter.java", "text": "class PilotRuntimeAdapter {}"}],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	has_rule(violations, "repository.evidence.keyword")
}

test_rejects_a_git_provider_write_outside_forge_applier if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"governedMarkdown": [], "completedCriteria": [], "vocabulary": [],
		"javaSources": [{
			"path": "modules/other-module/src/main/java/Rogue.java",
			"text": "client.baseUrl(\"https://api.github.com\").post().uri(\"/repos/x/y/git/refs\")",
		}],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	has_rule(violations, "repository.forge.applier-only-writer")
}

test_allows_a_read_only_github_lookup_outside_forge_applier if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"governedMarkdown": [], "completedCriteria": [], "vocabulary": [],
		"javaSources": [{
			"path": "modules/github-readonly-connector/src/main/java/Reader.java",
			"text": "client.baseUrl(\"https://api.github.com\").get().uri(\"/repos/{repository}\")",
		}],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	not has_rule(violations, "repository.forge.applier-only-writer")
}

test_allows_a_git_provider_write_inside_forge_applier if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"governedMarkdown": [], "completedCriteria": [], "vocabulary": [],
		"javaSources": [{
			"path": "modules/forge-applier/src/main/java/dev/jumo/forgeapplier/GitHubForgeClient.java",
			"text": "client.baseUrl(\"https://api.github.com\").post().uri(\"/repos/x/y/git/refs\")",
		}],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	not has_rule(violations, "repository.forge.applier-only-writer")
}

# --- corpus-rules-silently-unchecked-at-runtime AC4: the three guards that can flip polarity ---
#
# Most rules in this file ITERATE a fact family, so an absent family yields no iterations and they
# fall silent -- their guards are declarations, and removing one changes nothing observable. These
# three are different: each iterates one family and tests MEMBERSHIP against a second. With the
# second absent, every member fails the test and the rule denounces everything it walks.
#
# That state was unreachable while facts were all-or-nothing. runtime-repository-facts-provider
# supplies some families and not others, so it is reachable now, and these are the mutation proofs
# AC4 asks for. Each is a pair: one case asserting silence when the membership family is missing, one
# asserting the rule still bites when it is present. A family that is PRESENT BUT EMPTY counts as
# supplied for all three -- a corpus genuinely can have no ADRs -- so these fixtures OMIT the key
# rather than setting it to [].

completed_criterion := {
	"workOrderId": "some-order", "criterionId": "AC1",
	"camelCaseTokens": ["NoSuchClassName"], "keywords": ["container"], "pathScope": [],
}

test_evidence_vocabulary_stays_silent_when_vocabulary_is_absent if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"completedCriteria": [completed_criterion],
		"javaSources": [{"path": "modules/x/src/main/java/X.java", "text": ""}],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	not has_rule(violations, "repository.evidence.vocabulary")
}

test_evidence_vocabulary_still_refuses_an_unknown_token_when_vocabulary_is_supplied if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"completedCriteria": [completed_criterion],
		"vocabulary": ["SomethingElse"],
		"javaSources": [{"path": "modules/x/src/main/java/X.java", "text": ""}],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	has_rule(violations, "repository.evidence.vocabulary")
}

# javaSources decides criterion_has_candidate, and this rule fires on its NEGATION -- so an absent
# javaSources would denounce every container-keyword criterion in the corpus.
test_evidence_keyword_stays_silent_when_java_sources_is_absent if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"completedCriteria": [completed_criterion],
		"vocabulary": ["NoSuchClassName"],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	not has_rule(violations, "repository.evidence.keyword")
}

test_evidence_keyword_still_refuses_a_criterion_with_no_candidate_when_supplied if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"completedCriteria": [completed_criterion],
		"vocabulary": ["NoSuchClassName"],
		"javaSources": [{"path": "modules/x/src/main/java/Unrelated.java", "text": ""}],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	has_rule(violations, "repository.evidence.keyword")
}

dangling_adr := {
	"path": "docs/decisions/ADR-0002-example.md", "status": "MAPPING",
	"frontMatter": {"supersedes": ["ADR-0000"], "audience": "PROJECT_SCOPED"},
}

test_adr_reference_stays_silent_when_decision_ids_is_absent if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {"governedMarkdown": [dangling_adr]}})
	violations := data.jumo.corpus.deny with input as [facts]
	not has_rule(violations, "repository.front-matter.adr-reference")
}

# And an EMPTY decisionIds still refuses, because a corpus with no ADRs genuinely has none: that is
# the per-family emptiness rule, asserted rather than left to the comment explaining it.
test_adr_reference_refuses_a_dangling_reference_against_an_empty_decision_set if {
	facts := item("repository-facts.json", {"jumoRepositoryFacts": {
		"governedMarkdown": [dangling_adr], "decisionIds": [],
	}})
	violations := data.jumo.corpus.deny with input as [facts]
	has_rule(violations, "repository.front-matter.adr-reference")
}
