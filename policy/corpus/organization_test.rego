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
