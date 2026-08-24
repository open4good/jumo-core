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
