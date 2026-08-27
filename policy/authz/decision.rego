package jumo.authz

import rego.v1

# METADATA
# title: Jumo authorization decision
# entrypoint: true
default decision := {
	"decision": "DENY",
	"decisionId": "deny-malformed-input",
	"obligations": [],
	"policyRevision": "unknown",
	"reasonCodes": ["MALFORMED_INPUT"],
	"evaluatedAt": "1970-01-01T00:00:00Z",
}

assurance_rank := {"NONE": 0, "SELF_REPORTED": 1, "OBSERVED": 2, "INDEPENDENTLY_VERIFIED": 3}
review_freshness_ns := 86400000000000

default effect_approval_required := false

effect_approval_required if {
	input.capability.producesExternalEffect
	input.context.checkpoint != "PROPOSAL_ADMISSION"
	input.action != "document.change.propose"
}

default independent_review_required := false

independent_review_required if {
	input.capability.minimumAssurance == "INDEPENDENTLY_VERIFIED"
}

interactive_checkpoint_valid if {
	input.context.checkpoint != "INTERACTIVE_INVOCATION"
}

interactive_checkpoint_valid if {
	input.context.checkpoint == "INTERACTIVE_INVOCATION"
	input.capability.producesExternalEffect == false
	route := object.get(object.get(input.resource, "attributes", {}), "route", "")
	route != ""
	regex.match(`^[a-z0-9-]+/[a-z0-9.-]+$`, route)
}

valid_timestamp(value) if {
	parsed := time.parse_rfc3339_ns(value)
	is_number(parsed)
}

well_formed if {
	input.subject.principalId != ""
	input.subject.realmId != ""
	input.subject.realmId == input.resource.realmId
	input.subject.realmId == input.context.realmId
	input.action != ""
	input.capability.declared == true
	input.action == input.capability.name
	input.policyRevision != ""
	input.time != ""
	valid_timestamp(input.time)
	valid_timestamp(input.ownerApproval.approvedAt)
	valid_timestamp(input.ownerApproval.validUntil)
	valid_timestamp(input.independentReview.reviewedAt)
	now := time.parse_rfc3339_ns(input.time)
	approved := time.parse_rfc3339_ns(input.ownerApproval.approvedAt)
	approved <= now
	time.parse_rfc3339_ns(input.independentReview.reviewedAt) <= now
	input.context.checkpoint in {"PROPOSAL_ADMISSION", "IMMEDIATE_BEFORE_EFFECT", "AFTER_DURABLE_WAIT", "INTERACTIVE_INVOCATION"}

	# Interactive dispatch is deliberately a text-only non-effect path. An external effect must
	# still pass the effect-time checkpoint and its approval ceremony.
	interactive_checkpoint_valid
	input.context.waitGeneration >= 0
	{item | some item in input.obligations.required} == {item | some item in input.capability.requiredObligations}
	input.assurance.minimum == input.capability.minimumAssurance
	input.ownerApproval.required == effect_approval_required
	input.independentReview.required == independent_review_required
	assurance_rank[input.assurance.minimum] != null
	assurance_rank[input.assurance.achieved] != null
}

approval_valid if {
	not input.ownerApproval.required
}

approval_valid if {
	input.ownerApproval.required
	input.ownerApproval.present
	input.ownerApproval.approverId != ""
	input.ownerApproval.ownerId != ""
	input.ownerApproval.approverId == input.ownerApproval.ownerId
	approved := time.parse_rfc3339_ns(input.ownerApproval.approvedAt)
	valid_until := time.parse_rfc3339_ns(input.ownerApproval.validUntil)
	now := time.parse_rfc3339_ns(input.time)
	approved <= now
	now < valid_until
}

review_valid if {
	not input.independentReview.required
}

review_valid if {
	input.independentReview.required
	input.independentReview.present
	input.independentReview.independent
	input.independentReview.reviewerId != ""
	input.independentReview.reviewerId != input.resource.attributes.producerId
	reviewed := time.parse_rfc3339_ns(input.independentReview.reviewedAt)
	now := time.parse_rfc3339_ns(input.time)
	now - reviewed <= review_freshness_ns
}

missing contains obligation if {
	some obligation in input.obligations.required
	not obligation in input.obligations.satisfied
}

missing contains "HUMAN_OWNER_APPROVAL" if {
	not approval_valid
}

missing contains "INDEPENDENT_VERIFICATION" if {
	not review_valid
}

missing contains "ASSURANCE_FLOOR" if {
	assurance_rank[input.assurance.achieved] < assurance_rank[input.assurance.minimum]
}

decision := {
	"decision": "DENY",
	"decisionId": "deny-malformed-input",
	"obligations": [],
	"policyRevision": object.get(input, "policyRevision", "unknown"),
	"reasonCodes": ["MALFORMED_INPUT"],
	"evaluatedAt": object.get(input, "time", "1970-01-01T00:00:00Z"),
} if {
	not well_formed
}

decision := {
	"decision": "REQUIRE_APPROVAL",
	"decisionId": "approval-runtime-action",
	"obligations": sort(missing),
	"policyRevision": input.policyRevision,
	"reasonCodes": ["AUTHORIZATION_OBLIGATIONS_UNSATISFIED"],
	"evaluatedAt": input.time,
} if {
	well_formed
	count(missing) > 0
}

decision := {
	"decision": "ALLOW",
	"decisionId": "allow-runtime-action",
	"obligations": sort({item | some item in input.obligations.required}),
	"policyRevision": input.policyRevision,
	"reasonCodes": [],
	"evaluatedAt": input.time,
} if {
	well_formed
	count(missing) == 0
}
