package jumo.authz.exposition_test

import rego.v1

request := {
	"request": {"handle": "alice", "task": "jumo.public-profile.read", "artifact": "jumo.json", "structured": true},
	"publication": {
		"found": true,
		"publicHandle": "alice",
		"ownerRealm": "home",
		"exposure": "PUBLIC_DISCOVERABLE",
		"enabledAdapters": ["JUMO_PROFILE_V1", "A2A_V1_READ_V1"],
		"artifactAllowlist": ["jumo.json", "a2a/agent-card.json"],
	},
	"context": {"adapter": "A2A_V1_READ_V1"},
	"policyRevision": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
	"time": "2026-08-23T10:00:00Z",
}

with_request(patch) := object.union(request, {"request": object.union(request.request, patch)})

with_publication(patch) := object.union(request, {"publication": object.union(request.publication, patch)})

test_listed_artifact_on_a_discoverable_handle_allows if {
	result := data.jumo.authz.exposition.decision with input as request
	result.decision == "ALLOW"
	result.reasonCodes == []
	result.policyRevision == request.policyRevision
	result.evaluatedAt == request.time
}

test_empty_input_denies_by_default if {
	result := data.jumo.authz.exposition.decision with input as {}
	result.decision == "DENY"
	result.reasonCodes == ["MALFORMED_INPUT"]
}

test_unstructured_request_denies if {
	result := data.jumo.authz.exposition.decision with input as with_request({"structured": false})
	result.decision == "DENY"
	result.reasonCodes == ["MALFORMED_INPUT"]
}

test_other_task_denies if {
	result := data.jumo.authz.exposition.decision with input as with_request({"task": "jumo.public-profile.write"})
	result.decision == "DENY"
	result.reasonCodes == ["TASK_NOT_SUPPORTED"]
}

test_unpublished_handle_denies if {
	result := data.jumo.authz.exposition.decision with input as object.union(request, {"publication": {
		"found": false,
		"publicHandle": "",
		"ownerRealm": "",
		"exposure": "",
		"enabledAdapters": [],
		"artifactAllowlist": [],
	}})
	result.decision == "DENY"
	result.reasonCodes == ["HANDLE_NOT_PUBLISHED"]
}

test_handle_mismatch_denies if {
	result := data.jumo.authz.exposition.decision with input as with_request({"handle": "bob"})
	result.decision == "DENY"
	result.reasonCodes == ["HANDLE_NOT_PUBLISHED"]
}

test_handle_match_is_case_insensitive if {
	result := data.jumo.authz.exposition.decision with input as with_request({"handle": "ALICE"})
	result.decision == "ALLOW"
}

test_non_discoverable_exposure_denies if {
	result := data.jumo.authz.exposition.decision with input as with_publication({"exposure": "PRIVATE"})
	result.decision == "DENY"
	result.reasonCodes == ["EXPOSURE_NOT_DISCOVERABLE"]
}

test_disabled_adapter_denies if {
	result := data.jumo.authz.exposition.decision with input as with_publication({"enabledAdapters": ["JUMO_PROFILE_V1"]})
	result.decision == "DENY"
	result.reasonCodes == ["ADAPTER_NOT_ENABLED"]
}

test_unlisted_artifact_denies if {
	result := data.jumo.authz.exposition.decision with input as with_request({"artifact": ".jumo/secrets/db_password.yml"})
	result.decision == "DENY"
	result.reasonCodes == ["ARTIFACT_NOT_ALLOWLISTED"]
}

test_every_refusal_is_reported_sorted if {
	result := data.jumo.authz.exposition.decision with input as with_publication({
		"exposure": "PRIVATE",
		"enabledAdapters": [],
		"artifactAllowlist": [],
	})
	result.decision == "DENY"
	result.reasonCodes == ["ADAPTER_NOT_ENABLED", "ARTIFACT_NOT_ALLOWLISTED", "EXPOSURE_NOT_DISCOVERABLE"]
}

test_malformed_timestamp_denies if {
	result := data.jumo.authz.exposition.decision with input as object.union(request, {"time": "not-a-timestamp"})
	result.decision == "DENY"
	result.reasonCodes == ["MALFORMED_INPUT"]
}

test_missing_policy_revision_denies if {
	result := data.jumo.authz.exposition.decision with input as object.union(request, {"policyRevision": ""})
	result.decision == "DENY"
	result.reasonCodes == ["MALFORMED_INPUT"]
}
