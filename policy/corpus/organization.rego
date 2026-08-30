package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

# team-and-operator-design-journeys AC5: every AgentDefinition -- hand-authored or emitted by a
# journey's fan-out -- must prohibit self-grant, policy bypass and self-approval outright, not rely
# on a DocumentTemplate convention a hand-edited corpus document could omit. AgentDefinitionSpec's
# own prohibitedAuthority is required with minimum_cardinality 1 (metamodel/modules/organization.yaml)
# but does not force these three specific values; only Rego can. The other two AC5 clauses need no
# new rule here: "production and independent-review responsibilities cannot collapse into the same
# independence group" is governance.rego's corpus.independence.work-verifier-group, already proven at
# corpus_test.rego:645; "generated AgentDefinitions request but never grant capabilities" is
# references.rego's corpus.reference.capability, which already refuses an undeclared capability name
# in requestedCapabilities (corpus_test.rego:165) -- there is no capability in the real catalog that
# confers grant-to-others authority for requestedCapabilities to name.
required_prohibited_authority := {"self_grant_capability", "bypass_policy", "self_approve_privilege_change"}

deny contains corpus.violation("corpus.organization.agent-prohibited-authority", document, message) if {
	some document in corpus.documents
	document.kind == "AgentDefinition"
	declared := {value | some value in object.get(corpus.spec(document), "prohibitedAuthority", [])}
	missing := required_prohibited_authority - declared
	count(missing) > 0
	message := sprintf("spec.prohibitedAuthority: missing %v -- self-grant, policy bypass and self-approval must always be prohibited", [missing])
}
