package jumo.authz_test

import rego.v1

request := {
	"subject": {"principalId": "owner", "realmId": "home"},
	"action": "document.change.propose",
	"resource": {"type": "ChangeProposal", "id": "proposal-1", "realmId": "home", "attributes": {"producerId": "implementer"}},
	"context": {"realmId": "home", "checkpoint": "IMMEDIATE_BEFORE_EFFECT", "waitGeneration": 0},
	"capability": {
		"name": "document.change.propose",
		"declared": true,
		"riskTier": "MEDIUM",
		"producesExternalEffect": true,
		"requiredObligations": ["RETAIN_PROVENANCE"],
		"minimumAssurance": "OBSERVED",
		"appliedBy": "jumo.effect.ForgeProposalApplier",
	},
	"obligations": {"required": ["RETAIN_PROVENANCE"], "satisfied": ["RETAIN_PROVENANCE"]},
	"policyRevision": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
	"independentReview": {"required": false, "present": false, "independent": false, "reviewerId": "", "reviewedAt": "1970-01-01T00:00:00Z"},
	"ownerApproval": {"required": true, "present": true, "ownerId": "owner", "approverId": "owner", "approvedAt": "2026-08-12T10:00:00Z", "validUntil": "2026-08-12T10:05:00Z"},
	"assurance": {"minimum": "OBSERVED", "achieved": "OBSERVED"},
	"time": "2026-08-12T10:00:01Z",
}

test_complete_input_allows if {
	result := data.jumo.authz.decision with input as request
	result.decision == "ALLOW"
	result.policyRevision == request.policyRevision
}

test_unknown_capability_denies_by_default if {
	result := data.jumo.authz.decision with input as object.union(request, {"capability": object.union(request.capability, {"declared": false})})
	result.decision == "DENY"
	result.reasonCodes == ["MALFORMED_INPUT"]
}

test_missing_obligation_requires_approval if {
	result := data.jumo.authz.decision with input as object.union(request, {"obligations": {"required": ["RETAIN_PROVENANCE"], "satisfied": []}})
	result.decision == "REQUIRE_APPROVAL"
	result.obligations == ["RETAIN_PROVENANCE"]
}

test_stale_owner_approval_requires_approval if {
	stale := object.union(request.ownerApproval, {"validUntil": "2026-08-12T09:59:00Z"})
	result := data.jumo.authz.decision with input as object.union(request, {"ownerApproval": stale})
	result.decision == "REQUIRE_APPROVAL"
	result.obligations == ["HUMAN_OWNER_APPROVAL"]
}

test_realm_mismatch_denies if {
	result := data.jumo.authz.decision with input as object.union(request, {"context": object.union(request.context, {"realmId": "other"})})
	result.decision == "DENY"
}

test_after_durable_wait_is_a_valid_checkpoint if {
	context := object.union(request.context, {"checkpoint": "AFTER_DURABLE_WAIT", "waitGeneration": 2})
	result := data.jumo.authz.decision with input as object.union(request, {"context": context})
	result.decision == "ALLOW"
}

test_interactive_invocation_allows_declared_non_effect_capability if {
	capability := object.union(request.capability, {"name": "conversation.turn.submit", "producesExternalEffect": false})
	approval := {"required": false, "present": false, "ownerId": "", "approverId": "", "approvedAt": "1970-01-01T00:00:00Z", "validUntil": "1970-01-01T00:00:00Z"}
	resource := object.union(request.resource, {"attributes": {"route": "openai/gpt-5", "requirementProfileRef": "governed-document-draft", "maximumCostClass": "MEDIUM"}})
	changed := object.union(request, {"action": "conversation.turn.submit", "capability": capability, "ownerApproval": approval, "resource": resource, "context": object.union(request.context, {"checkpoint": "INTERACTIVE_INVOCATION"})})
	result := data.jumo.authz.decision with input as changed
	result.decision == "ALLOW"
}

test_interactive_invocation_refuses_malformed_route if {
	capability := object.union(request.capability, {"name": "conversation.turn.submit", "producesExternalEffect": false})
	approval := {"required": false, "present": false, "ownerId": "", "approverId": "", "approvedAt": "1970-01-01T00:00:00Z", "validUntil": "1970-01-01T00:00:00Z"}
	resource := object.union(request.resource, {"attributes": {"route": "invalidroute"}})
	changed := object.union(request, {"action": "conversation.turn.submit", "capability": capability, "ownerApproval": approval, "resource": resource, "context": object.union(request.context, {"checkpoint": "INTERACTIVE_INVOCATION"})})
	result := data.jumo.authz.decision with input as changed
	result.decision == "DENY"
}

test_interactive_invocation_refuses_effect_capability if {
	resource := object.union(request.resource, {"attributes": {"route": "openai/gpt-5"}})
	changed := object.union(request, {"resource": resource, "context": object.union(request.context, {"checkpoint": "INTERACTIVE_INVOCATION"})})
	result := data.jumo.authz.decision with input as changed
	result.decision == "DENY"
}

test_proposal_admission_does_not_require_effect_approval if {
	context := object.union(request.context, {"checkpoint": "PROPOSAL_ADMISSION"})
	approval := {"required": false, "present": false, "ownerId": "", "approverId": "", "approvedAt": "1970-01-01T00:00:00Z", "validUntil": "1970-01-01T00:00:00Z"}
	changed := object.union(request, {"context": context, "ownerApproval": approval})
	result := data.jumo.authz.decision with input as changed
	result.decision == "ALLOW"
	changed.capability.producesExternalEffect == true
}

test_owner_approval_required_must_match_effect_capability if {
	approval := object.union(request.ownerApproval, {"required": false})
	result := data.jumo.authz.decision with input as object.union(request, {"ownerApproval": approval})
	result.decision == "DENY"
}

test_independent_review_required_must_match_assurance if {
	review := object.union(request.independentReview, {"required": true})
	result := data.jumo.authz.decision with input as object.union(request, {"independentReview": review})
	result.decision == "DENY"
}

test_future_approval_timestamp_denies if {
	approval := object.union(request.ownerApproval, {"approvedAt": "2026-08-12T10:01:00Z"})
	result := data.jumo.authz.decision with input as object.union(request, {"ownerApproval": approval})
	result.decision == "DENY"
}

test_stale_independent_review_requires_approval if {
	capability := object.union(request.capability, {"minimumAssurance": "INDEPENDENTLY_VERIFIED"})
	review := {"required": true, "present": true, "independent": true, "reviewerId": "reviewer", "reviewedAt": "2026-08-11T09:59:59Z"}
	assurance := {"minimum": "INDEPENDENTLY_VERIFIED", "achieved": "INDEPENDENTLY_VERIFIED"}
	changed := object.union(request, {"capability": capability, "independentReview": review, "assurance": assurance})
	result := data.jumo.authz.decision with input as changed
	result.decision == "REQUIRE_APPROVAL"
	result.obligations == ["INDEPENDENT_VERIFICATION"]
}
