package jumo.corpus_test

import rego.v1

import data.jumo.corpus

test_agent_missing_self_grant_prohibition_refused if {
	corpus_input := [document(".jumo/agents/bad.yml", "AgentDefinition", "bad", {
		"prohibitedAuthority": ["bypass_policy", "self_approve_privilege_change"],
	})]
	violations := corpus.deny with input as corpus_input
	has_rule(violations, "corpus.organization.agent-prohibited-authority")
}

test_agent_no_prohibited_authority_declared_refused if {
	corpus_input := [document(".jumo/agents/bad.yml", "AgentDefinition", "bad", {})]
	violations := corpus.deny with input as corpus_input
	has_rule(violations, "corpus.organization.agent-prohibited-authority")
}

test_agent_generated_prohibited_authority_shape_permitted if {
	corpus_input := [document(".jumo/agents/good.yml", "AgentDefinition", "good", {
		"prohibitedAuthority": [
			"self_grant_capability",
			"bypass_policy",
			"self_approve_privilege_change",
			"modify_root_of_trust",
			"act_as_super_administrator",
		],
	})]
	violations := corpus.deny with input as corpus_input
	not has_rule(violations, "corpus.organization.agent-prohibited-authority")
}

# team-and-operator-design-journeys AC7: AgentDefinition.recommendedConnectorRefs is validated with
# the same generic kind-match/kind-id/same-realm mechanism as any other typed reference -- no new
# rule beyond the one in references.rego, only these fixtures proving it fires for this field.

test_agent_recommending_an_undeclared_connector_refused if {
	agent := document(".jumo/agents/recommender.yml", "AgentDefinition", "recommender", {
		"ownerRealm": "home",
		"recommendedConnectorRefs": [{
			"connectorRef": {"kind": "ConnectorDefinition", "namespace": "home.jumo.dev", "id": "missing-connector"},
			"rationale": "Would let this role read repository content directly.",
		}],
	})
	violations := corpus.deny with input as [agent]
	has_rule(violations, "corpus.reference.kind-id")
}

test_agent_recommending_a_connector_in_another_realm_refused if {
	connector := document(".jumo/connectors/other-connector.yml", "ConnectorDefinition", "other-connector", {"ownerRealm": "other"})
	agent := document(".jumo/agents/recommender.yml", "AgentDefinition", "recommender", {
		"ownerRealm": "home",
		"recommendedConnectorRefs": [{
			"connectorRef": {"kind": "ConnectorDefinition", "namespace": "other.jumo.dev", "id": "other-connector"},
			"rationale": "Would let this role read repository content directly.",
		}],
	})
	violations := corpus.deny with input as [connector, agent]
	has_rule(violations, "corpus.reference.same-realm")
}

test_agent_recommending_a_declared_same_realm_connector_permitted if {
	connector := document(".jumo/connectors/github-read-only.yml", "ConnectorDefinition", "github-read-only", {"ownerRealm": "home"})
	agent := document(".jumo/agents/recommender.yml", "AgentDefinition", "recommender", {
		"ownerRealm": "home",
		"recommendedConnectorRefs": [{
			"connectorRef": {"kind": "ConnectorDefinition", "namespace": "home.jumo.dev", "id": "github-read-only"},
			"rationale": "Would let this role read repository content directly.",
		}],
	})
	violations := corpus.deny with input as [connector, agent]
	not has_rule(violations, "corpus.reference.kind-id")
	not has_rule(violations, "corpus.reference.same-realm")
	not has_rule(violations, "corpus.reference.kind-match")
}
