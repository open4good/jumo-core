package jumo.authz.journey

import rego.v1

valid_input := {
	"kind": "AssistedJourney",
	"journeyId": "fixture",
	"action": "journey.step.submit",
	"subjectRealmId": "home",
	"resourceRealmId": "home",
	"requiredCapabilities": ["journey.step.submit"],
	"policySetRefs": ["security-baseline"],
	"activePolicySetRefs": ["security-baseline"],
	"requiredObligations": ["RETAIN_PROVENANCE"],
	"satisfiedObligations": ["RETAIN_PROVENANCE"],
	"policyRevision": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
	"time": "2026-08-26T20:00:00Z",
}

test_allows_complete_kind_level_envelope if {
	result := decision with input as valid_input
	result.decision == "ALLOW"
}

test_refuses_action_outside_envelope if {
	result := decision with input as object.union(valid_input, {"action": "cli.session.smoke"})
	result.reasonCodes == ["CAPABILITY_NOT_IN_JOURNEY_ENVELOPE"]
}

test_refuses_inactive_policy_set if {
	result := decision with input as object.union(valid_input, {"activePolicySetRefs": []})
	result.reasonCodes == ["POLICY_SET_NOT_ACTIVE"]
}

test_refuses_missing_step_obligation if {
	result := decision with input as object.union(valid_input, {"satisfiedObligations": []})
	result.reasonCodes == ["JOURNEY_OBLIGATIONS_UNSATISFIED"]
}

test_refuses_wrong_kind_without_naming_a_journey if {
	result := decision with input as object.union(valid_input, {"kind": "ProcessSpec"})
	result.reasonCodes == ["MALFORMED_INPUT"]
}
