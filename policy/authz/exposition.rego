# Public interoperability exposition PEP decision (ADR-0051 section 4).
#
# The caller is an unauthenticated external agent: it has no Realm principal and no declared
# internal ActionCapability, so it is deliberately not evaluated by data.jumo.authz.decision --
# the internal capability registry stays scoped to internal, effect-producing actions. This
# entrypoint decides on published facts alone, and the controller gathers them.
#
# Non-broadening (a Realm's enabledAdapters within its Organization's allowedAdapters) is already
# refused at corpus time by corpus.publication.adapter-narrowing-only, so it is not re-derived
# here: this entrypoint answers "may this request read this artifact", not "is this publication
# well governed".
package jumo.authz.exposition

import rego.v1

supported_task := "jumo.public-profile.read"

# METADATA
# title: Public interoperability exposition decision
# entrypoint: true
default decision := {
	"decision": "DENY",
	"decisionId": "deny-malformed-input",
	"policyRevision": "unknown",
	"reasonCodes": ["MALFORMED_INPUT"],
	"evaluatedAt": "1970-01-01T00:00:00Z",
}

valid_timestamp(value) if {
	parsed := time.parse_rfc3339_ns(value)
	is_number(parsed)
}

well_formed if {
	is_string(input.request.handle)
	is_string(input.request.task)
	is_string(input.request.artifact)
	is_boolean(input.request.structured)
	is_boolean(input.publication.found)
	is_array(input.publication.enabledAdapters)
	is_array(input.publication.artifactAllowlist)
	is_string(input.context.adapter)
	input.context.adapter != ""
	input.policyRevision != ""
	input.time != ""
	valid_timestamp(input.time)
}

# A request the controller could not parse into a structured artifact read -- an empty body, a free
# text part, or an unreadable one. It reaches the PDP anyway rather than short-circuiting in Java,
# so every refusal on this surface comes from one authority.
refusals contains "MALFORMED_INPUT" if {
	not input.request.structured
}

refusals contains "MALFORMED_INPUT" if {
	input.request.handle == ""
}

refusals contains "TASK_NOT_SUPPORTED" if {
	input.request.task != supported_task
}

refusals contains "HANDLE_NOT_PUBLISHED" if {
	not input.publication.found
}

refusals contains "HANDLE_NOT_PUBLISHED" if {
	input.publication.found
	lower(input.publication.publicHandle) != lower(input.request.handle)
}

refusals contains "EXPOSURE_NOT_DISCOVERABLE" if {
	input.publication.found
	input.publication.exposure != "PUBLIC_DISCOVERABLE"
}

refusals contains "ADAPTER_NOT_ENABLED" if {
	input.publication.found
	not input.context.adapter in {adapter | some adapter in input.publication.enabledAdapters}
}

refusals contains "ARTIFACT_NOT_ALLOWLISTED" if {
	input.publication.found
	not input.request.artifact in {artifact | some artifact in input.publication.artifactAllowlist}
}

decision := {
	"decision": "DENY",
	"decisionId": "deny-malformed-input",
	"policyRevision": object.get(input, "policyRevision", "unknown"),
	"reasonCodes": ["MALFORMED_INPUT"],
	"evaluatedAt": object.get(input, "time", "1970-01-01T00:00:00Z"),
} if {
	not well_formed
}

decision := {
	"decision": "DENY",
	"decisionId": "deny-public-profile-read",
	"policyRevision": input.policyRevision,
	"reasonCodes": sort(refusals),
	"evaluatedAt": input.time,
} if {
	well_formed
	count(refusals) > 0
}

decision := {
	"decision": "ALLOW",
	"decisionId": "allow-public-profile-read",
	"policyRevision": input.policyRevision,
	"reasonCodes": [],
	"evaluatedAt": input.time,
} if {
	well_formed
	count(refusals) == 0
}
