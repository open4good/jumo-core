package jumo.authz.journey

import rego.v1

# One kind-level admission rule for every AssistedJourney. It evaluates the journey capability
# allowlist, its Realm-active PolicySets and the current step's obligations without naming an
# individual journey. Capability-specific effect authorization remains data.jumo.authz.decision.

# METADATA
# title: AssistedJourney admission decision
# entrypoint: true
default decision := {
	"decision": "DENY",
	"decisionId": "deny-malformed-journey-admission",
	"policyRevision": "unknown",
	"reasonCodes": ["MALFORMED_INPUT"],
	"evaluatedAt": "1970-01-01T00:00:00Z",
}

valid_timestamp(value) if {
	parsed := time.parse_rfc3339_ns(value)
	is_number(parsed)
}

well_formed if {
	input.kind == "AssistedJourney"
	input.journeyId != ""
	input.action != ""
	input.subjectRealmId != ""
	input.subjectRealmId == input.resourceRealmId
	is_array(input.requiredCapabilities)
	is_array(input.policySetRefs)
	is_array(input.activePolicySetRefs)
	is_array(input.requiredObligations)
	is_array(input.satisfiedObligations)
	input.policyRevision != ""
	valid_timestamp(input.time)
}

refusals contains "CAPABILITY_NOT_IN_JOURNEY_ENVELOPE" if {
	well_formed
	not input.action in {name | some name in input.requiredCapabilities}
}

refusals contains "POLICY_SET_NOT_ACTIVE" if {
	well_formed
	some ref in input.policySetRefs
	not ref in {active | some active in input.activePolicySetRefs}
}

refusals contains "JOURNEY_OBLIGATIONS_UNSATISFIED" if {
	well_formed
	some obligation in input.requiredObligations
	not obligation in {satisfied | some satisfied in input.satisfiedObligations}
}

decision := {
	"decision": "DENY",
	"decisionId": "deny-malformed-journey-admission",
	"policyRevision": object.get(input, "policyRevision", "unknown"),
	"reasonCodes": ["MALFORMED_INPUT"],
	"evaluatedAt": object.get(input, "time", "1970-01-01T00:00:00Z"),
} if {
	not well_formed
}

decision := {
	"decision": "DENY",
	"decisionId": "deny-assisted-journey-admission",
	"policyRevision": input.policyRevision,
	"reasonCodes": sort(refusals),
	"evaluatedAt": input.time,
} if {
	well_formed
	count(refusals) > 0
}

decision := {
	"decision": "ALLOW",
	"decisionId": "allow-assisted-journey-admission",
	"policyRevision": input.policyRevision,
	"reasonCodes": [],
	"evaluatedAt": input.time,
} if {
	well_formed
	count(refusals) == 0
}
