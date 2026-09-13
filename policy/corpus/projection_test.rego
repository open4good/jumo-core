package jumo.corpus_projection_test

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

facts := item("repository-facts.json", {"jumoRepositoryFacts": {
	"governedMarkdown": [], "documentationRoots": [], "decisionIds": [],
	"completedCriteria": [], "vocabulary": [], "javaSources": [],
	"classSlots": {"TeamSpec": ["teamName", "members"]},
	"payloadSchemaSlots": {"setup-identity": ["nickname"]},
	"contractKinds": ["ConnectorDefinition"],
}})

capabilities := document(".jumo/capabilities/core.yml", "ActionCapabilitySet", "core", {"capabilities": [
	{"name": "contract.change.propose", "ringCeiling": "RING_2_AGENT_BEHAVIOR"},
	{"name": "document.change.propose", "ringCeiling": "RING_2_AGENT_BEHAVIOR"},
]})

surface := document(".jumo/interfaces/web.yml", "InterfaceSurface", "web", {
	"ownerRealm": "home",
	"surfaces": [{
		"id": "cockpit",
		"purpose": "Placeholder surface for projection tests.",
		"audience": "REALM_PRIVATE",
		"reads": ["INTERFACE_MANIFEST"],
		"proposes": ["contract.change.propose"],
	}],
})

valid_projection := document(".jumo/projections/team-form.yml", "ProjectionSpec", "team-form", {
	"ownerRealm": "home",
	"of": "TeamSpec",
	"projectionKind": "FORM",
	"renderedBy": "cockpit",
	"sections": [{
		"id": "identity",
		"i18nKey": "teamIdentity",
		"fields": [{"path": "teamName", "representation": "SHORT_TEXT"}],
	}],
	"actions": ["contract.change.propose"],
})

test_accepts_a_valid_projection_spec if {
	violations := data.jumo.corpus.deny with input as [facts, capabilities, surface, valid_projection]
	count([v | some v in violations; startswith(v.rule, "corpus.projection.")]) == 0
}

test_accepts_an_action_only_projection_without_payload_shape if {
	action_only := document(".jumo/projections/action-only.yml", "ProjectionSpec", "action-only", {
		"ownerRealm": "home", "projectionKind": "FORM", "renderedBy": "cockpit",
		"actions": ["contract.change.propose"],
	})
	violations := data.jumo.corpus.deny with input as [facts, capabilities, surface, action_only]
	count([v | some v in violations; startswith(v.rule, "corpus.projection.")]) == 0
}

test_rejects_an_empty_projection_and_action_only_payload_shape if {
	empty := document(".jumo/projections/empty.yml", "ProjectionSpec", "empty", {
		"ownerRealm": "home", "projectionKind": "FORM", "renderedBy": "cockpit",
	})
	empty_violations := data.jumo.corpus.deny with input as [facts, capabilities, surface, empty]
	has_rule(empty_violations, "corpus.projection.content")
	shaped := document(".jumo/projections/shaped-action-only.yml", "ProjectionSpec", "shaped-action-only", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM", "renderedBy": "cockpit",
		"actions": ["contract.change.propose"],
	})
	shaped_violations := data.jumo.corpus.deny with input as [facts, capabilities, surface, shaped]
	has_rule(shaped_violations, "corpus.projection.action-only")
}

test_rejects_projection_with_unknown_surface if {
	bad := document(".jumo/projections/bad-surface.yml", "ProjectionSpec", "bad-surface", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM", "renderedBy": "no-such-surface",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "teamName", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, surface, bad]
	has_rule(violations, "corpus.projection.surface")
}

test_rejects_action_not_proposed_by_surface if {
	bad := document(".jumo/projections/bad-action-surface.yml", "ProjectionSpec", "bad-action-surface", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM", "renderedBy": "cockpit",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "teamName", "representation": "SHORT_TEXT"}]}],
		"actions": ["document.change.propose"],
	})
	violations := data.jumo.corpus.deny with input as [facts, capabilities, surface, bad]
	has_rule(violations, "corpus.projection.action-not-proposed")
	not has_rule(violations, "corpus.reference.capability")
}

test_rejects_unknown_projection_class if {
	bad := document(".jumo/projections/bad-class.yml", "ProjectionSpec", "bad-class", {
		"ownerRealm": "home", "of": "NoSuchClass", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "x", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.class")
}

test_accepts_a_valid_payload_schema_projection if {
	ok := document(".jumo/projections/identity-form.yml", "ProjectionSpec", "identity-form", {
		"ownerRealm": "home", "payloadSchemaRef": "setup-identity", "projectionKind": "FORM",
		"renderedBy": "cockpit",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "nickname", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, capabilities, surface, ok]
	count([v | some v in violations; startswith(v.rule, "corpus.projection.")]) == 0
}

test_rejects_unknown_payload_schema_ref if {
	bad := document(".jumo/projections/bad-schema.yml", "ProjectionSpec", "bad-schema", {
		"ownerRealm": "home", "payloadSchemaRef": "no-such-schema", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "x", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.payload-schema")
}

test_rejects_projection_with_neither_of_nor_payload_schema_ref if {
	bad := document(".jumo/projections/bad-shape.yml", "ProjectionSpec", "bad-shape", {
		"ownerRealm": "home", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "x", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.payload-shape")
}

test_rejects_projection_with_both_of_and_payload_schema_ref if {
	bad := document(".jumo/projections/bad-shape-both.yml", "ProjectionSpec", "bad-shape-both", {
		"ownerRealm": "home", "of": "TeamSpec", "payloadSchemaRef": "setup-identity", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "teamName", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.payload-shape")
}

test_rejects_field_path_not_a_payload_schema_slot if {
	bad := document(".jumo/projections/bad-schema-path.yml", "ProjectionSpec", "bad-schema-path", {
		"ownerRealm": "home", "payloadSchemaRef": "setup-identity", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "notASlot", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.field-path")
}

test_rejects_field_path_not_a_class_slot if {
	bad := document(".jumo/projections/bad-path.yml", "ProjectionSpec", "bad-path", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "notASlot", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.field-path")
}

test_rejects_authority_bearing_field_path if {
	bad := document(".jumo/projections/bad-authority.yml", "ProjectionSpec", "bad-authority", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "ring", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.no-authority")

	# ring is deliberately absent from the fixture's TeamSpec slots too, but no-authority must
	# fire even when field-path would already have refused it, so the authority check never
	# depends on the field otherwise being valid.
	has_rule(violations, "corpus.projection.field-path")
}

test_rejects_unknown_options_kind if {
	bad := document(".jumo/projections/bad-options.yml", "ProjectionSpec", "bad-options", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{
			"id": "s", "i18nKey": "s",
			"fields": [{"path": "members", "representation": "ENTITY_COLLECTION", "optionsFrom": "NoSuchKind"}],
		}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.options-kind")
}

test_rejects_enumeration_field_declaring_no_options_source if {
	bad := document(".jumo/projections/bad-enum.yml", "ProjectionSpec", "bad-enum", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{
			"id": "s", "i18nKey": "s",
			"fields": [{"path": "teamName", "representation": "ENUMERATION"}],
		}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.options-source-missing")
}

test_rejects_field_declaring_both_options_sources if {
	bad := document(".jumo/projections/both-sources.yml", "ProjectionSpec", "both-sources", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{
			"path": "teamName", "representation": "ENUMERATION",
			"optionsFrom": "ConnectorDefinition", "optionsFromEnum": "TeamKind",
		}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.options-source-ambiguous")
}

test_rejects_unknown_nested_options_kind if {
	bad := document(".jumo/projections/bad-nested-kind.yml", "ProjectionSpec", "bad-nested-kind", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{
			"path": "roadmapRef", "representation": "ENTITY_REFERENCE",
			"optionsFromNested": {"sourceKind": "NoSuchKind", "sourceId": "jumo", "path": "spec.milestones"},
		}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.options-nested-kind")
}

test_rejects_field_declaring_optionsfrom_and_optionsfromnested if {
	bad := document(".jumo/projections/both-from-and-nested.yml", "ProjectionSpec", "both-from-and-nested", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{
			"path": "roadmapRef", "representation": "ENTITY_REFERENCE", "optionsFrom": "ConnectorDefinition",
			"optionsFromNested": {"sourceKind": "ConnectorDefinition", "sourceId": "jumo", "path": "spec.milestones"},
		}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.options-source-ambiguous")
}

test_accepts_a_declared_nested_options_source if {
	good := document(".jumo/projections/good-nested-options.yml", "ProjectionSpec", "good-nested-options", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM", "renderedBy": "home",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{
			"path": "roadmapRef", "representation": "ENTITY_REFERENCE",
			"optionsFromNested": {"sourceKind": "ConnectorDefinition", "sourceId": "jumo", "path": "spec.milestones"},
		}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, good]
	not has_rule(violations, "corpus.projection.options-nested-kind")
	not has_rule(violations, "corpus.projection.options-source-ambiguous")
}

test_rejects_eligibility_without_a_kind_to_filter if {
	bad := document(".jumo/projections/loose-eligibility.yml", "ProjectionSpec", "loose-eligibility", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{
			"path": "teamName", "representation": "ENUMERATION", "optionsFromEnum": "TeamKind",
			"optionsEligibility": [{"path": "spec.state", "equalsValue": "ACTIVE"}],
		}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.options-eligibility-without-kind")
}

test_rejects_condition_declaring_neither_or_both_forms if {
	bad := document(".jumo/projections/bad-condition.yml", "ProjectionSpec", "bad-condition", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{
			"path": "members", "representation": "ENTITY_COLLECTION", "optionsFrom": "ConnectorDefinition",
			"optionsEligibility": [
				{"path": "spec.state"},
				{"path": "spec.other", "equalsValue": "ACTIVE", "present": true},
			],
		}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.options-eligibility-form")
}

test_accepts_a_declared_options_source_with_eligibility if {
	good := document(".jumo/projections/good-options.yml", "ProjectionSpec", "good-options", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM", "renderedBy": "home",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{
			"path": "members", "representation": "ENTITY_COLLECTION", "optionsFrom": "ConnectorDefinition",
			"optionsEligibility": [
				{"path": "spec.state", "equalsValue": "ACTIVE"},
				{"path": "spec.secretBindingRef", "present": true},
			],
		}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, good]
	not has_rule(violations, "corpus.projection.options-source-missing")
	not has_rule(violations, "corpus.projection.options-source-ambiguous")
	not has_rule(violations, "corpus.projection.options-eligibility-without-kind")
	not has_rule(violations, "corpus.projection.options-eligibility-form")
}

test_rejects_action_not_declared_as_a_capability if {
	bad := document(".jumo/projections/bad-action.yml", "ProjectionSpec", "bad-action", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "teamName", "representation": "SHORT_TEXT"}]}],
		"actions": ["undeclared.action"],
	})
	violations := data.jumo.corpus.deny with input as [facts, capabilities, bad]
	has_rule(violations, "corpus.reference.capability")
}

journey(identifier, spec) := document(sprintf(".jumo/journeys/%s.yml", [identifier]), "AssistedJourney", identifier, spec)

emitting_journey_spec(emission) := {
	"journeyId": "emitter", "name": "Emitter", "budgetRef": "interactive",
	"emitsCapability": "contract.change.propose",
	"steps": [{"id": "s", "name": "S", "requiredFields": []}],
	"emission": emission,
}

template := document(".jumo/document-templates/t.yml", "DocumentTemplate", "t", {
	"renders": "ConnectorDefinition", "body": "kind: ConnectorDefinition\n",
})

test_rejects_a_proposal_journey_that_declares_no_emission if {
	bad := journey("emitter", {
		"journeyId": "emitter", "name": "Emitter", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "requiredFields": []}],
	})
	violations := data.jumo.corpus.deny with input as [facts, capabilities, bad]
	has_rule(violations, "corpus.journey.emission-missing")
}

test_rejects_an_emission_naming_an_undeclared_kind if {
	bad := journey("emitter", emitting_journey_spec({
		"targetKind": "NoSuchKind", "pathTemplate": ".jumo/x/${id}.yml",
		"identifier": {"fromField": "name"},
	}))
	violations := data.jumo.corpus.deny with input as [facts, capabilities, bad]
	has_rule(violations, "corpus.journey.emission-kind")
}

test_rejects_an_emission_whose_template_renders_another_kind if {
	bad := journey("emitter", emitting_journey_spec({
		"targetKind": "ConnectorDefinition", "pathTemplate": ".jumo/x/${id}.yml",
		"identifier": {"fromField": "name"},
		"documentTemplateRef": {"kind": "DocumentTemplate", "namespace": "dev.jumo.test", "id": "t"},
	}))
	other := document(".jumo/document-templates/t.yml", "DocumentTemplate", "t", {
		"renders": "McpServerRecipe", "body": "kind: McpServerRecipe\n",
	})
	violations := data.jumo.corpus.deny with input as [facts, capabilities, bad, other]
	has_rule(violations, "corpus.journey.emission-template-kind")
}

test_rejects_an_emission_writing_outside_the_contract_directory if {
	bad := journey("emitter", emitting_journey_spec({
		"targetKind": "ConnectorDefinition", "pathTemplate": "etc/${id}.yml",
		"identifier": {"fromField": "name"},
	}))
	violations := data.jumo.corpus.deny with input as [facts, capabilities, bad]
	has_rule(violations, "corpus.journey.emission-path")
}

test_rejects_an_observation_journey_that_declares_an_emission if {
	bad := journey("observer", {
		"journeyId": "observer", "name": "Observer", "budgetRef": "interactive",
		"completionMode": "OBSERVATION",
		"steps": [{"id": "s", "name": "S", "requiredFields": []}],
		"emission": {
			"targetKind": "ConnectorDefinition", "pathTemplate": ".jumo/x/${id}.yml",
			"identifier": {"fromField": "name"},
		},
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.journey.emission-without-proposal")
}

test_accepts_an_emission_naming_a_template_that_renders_its_kind if {
	good := journey("emitter", emitting_journey_spec({
		"targetKind": "ConnectorDefinition", "pathTemplate": ".jumo/x/${id}.yml",
		"identifier": {"fromField": "name"},
		"documentTemplateRef": {"kind": "DocumentTemplate", "namespace": "dev.jumo.test", "id": "t"},
	}))
	violations := data.jumo.corpus.deny with input as [facts, capabilities, good, template]
	not has_rule(violations, "corpus.journey.emission-missing")
	not has_rule(violations, "corpus.journey.emission-kind")
	not has_rule(violations, "corpus.journey.emission-template")
	not has_rule(violations, "corpus.journey.emission-template-kind")
	not has_rule(violations, "corpus.journey.emission-path")
}

emitting_journey_bundle_spec(bundle) := {
	"journeyId": "emitter", "name": "Emitter", "budgetRef": "interactive",
	"emitsCapability": "contract.change.propose",
	"steps": [{"id": "s", "name": "S", "requiredFields": []}],
	"emissionBundle": bundle,
}

bundle_emission(path) := {
	"targetKind": "ConnectorDefinition", "pathTemplate": path, "identifier": {"fromField": "name"},
}

test_accepts_a_bundle_of_two_documents_reusing_the_emission_shape if {
	good := journey("emitter", emitting_journey_bundle_spec([
		{"emission": bundle_emission(".jumo/x/${id}.yml")},
		{"emission": bundle_emission(".jumo/y/${id}.yml")},
	]))
	violations := data.jumo.corpus.deny with input as [facts, capabilities, good]
	not has_rule(violations, "corpus.journey.emission-missing")
	not has_rule(violations, "corpus.journey.emission-and-bundle")
	not has_rule(violations, "corpus.journey.emission-bundle-empty")
	not has_rule(violations, "corpus.journey.emission-kind")
	not has_rule(violations, "corpus.journey.emission-path")
}

test_accepts_a_bundle_item_with_a_fanout_collection_and_a_condition if {
	good := journey("emitter", emitting_journey_bundle_spec([{
		"emission": bundle_emission(".jumo/x/${id}.yml"),
		"fanOutCollection": "members",
		"condition": {"whenField": "kind", "equalsValue": "team"},
	}]))
	violations := data.jumo.corpus.deny with input as [facts, capabilities, good]
	not has_rule(violations, "corpus.journey.emission-bundle-invalid-fanout")
	not has_rule(violations, "corpus.journey.emission-kind")
}

test_rejects_a_bundle_item_naming_an_undeclared_kind if {
	bad := journey("emitter", emitting_journey_bundle_spec([
		{"emission": bundle_emission(".jumo/x/${id}.yml")},
		{"emission": {"targetKind": "NoSuchKind", "pathTemplate": ".jumo/y/${id}.yml", "identifier": {"fromField": "name"}}},
	]))
	violations := data.jumo.corpus.deny with input as [facts, capabilities, bad]
	has_rule(violations, "corpus.journey.emission-kind")
}

test_rejects_a_bundle_item_writing_outside_the_contract_directory if {
	bad := journey("emitter", emitting_journey_bundle_spec([{"emission": bundle_emission("other-repo:.jumo/x/${id}.yml")}]))
	violations := data.jumo.corpus.deny with input as [facts, capabilities, bad]
	has_rule(violations, "corpus.journey.emission-path")
}

test_rejects_a_journey_declaring_both_emission_and_bundle if {
	spec := object.union(
		emitting_journey_spec(bundle_emission(".jumo/x/${id}.yml")),
		{"emissionBundle": [{"emission": bundle_emission(".jumo/y/${id}.yml")}]},
	)
	bad := journey("emitter", spec)
	violations := data.jumo.corpus.deny with input as [facts, capabilities, bad]
	has_rule(violations, "corpus.journey.emission-and-bundle")
}

test_rejects_an_empty_emission_bundle if {
	bad := journey("emitter", emitting_journey_bundle_spec([]))
	violations := data.jumo.corpus.deny with input as [facts, capabilities, bad]
	has_rule(violations, "corpus.journey.emission-bundle-empty")
}

test_rejects_a_bundle_item_with_a_blank_fanout_collection if {
	bad := journey("emitter", emitting_journey_bundle_spec([{
		"emission": bundle_emission(".jumo/x/${id}.yml"),
		"fanOutCollection": "  ",
	}]))
	violations := data.jumo.corpus.deny with input as [facts, capabilities, bad]
	has_rule(violations, "corpus.journey.emission-bundle-invalid-fanout")
}

test_rejects_an_observation_journey_that_declares_a_bundle if {
	bad := journey("observer", {
		"journeyId": "observer", "name": "Observer", "budgetRef": "interactive",
		"completionMode": "OBSERVATION",
		"steps": [{"id": "s", "name": "S", "requiredFields": []}],
		"emissionBundle": [{"emission": bundle_emission(".jumo/x/${id}.yml")}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.journey.emission-without-proposal")
}

test_rejects_collect_step_missing_projection_ref if {
	bad := document(".jumo/journeys/bad.yml", "AssistedJourney", "bad", {
		"journeyId": "bad", "name": "Bad", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "stepKind": "COLLECT", "requiredFields": []}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	has_rule(violations, "corpus.journey.projection-ref")
}

test_rejects_await_step_missing_process_ref if {
	bad := document(".jumo/journeys/bad.yml", "AssistedJourney", "bad", {
		"journeyId": "bad", "name": "Bad", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "stepKind": "AWAIT", "requiredFields": []}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	has_rule(violations, "corpus.journey.projection-ref")
}

test_accepts_step_without_step_kind if {
	ok := document(".jumo/journeys/ok.yml", "AssistedJourney", "ok", {
		"journeyId": "ok", "name": "OK", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "requiredFields": ["x"]}],
	})
	violations := data.jumo.corpus.deny with input as [ok]
	not has_rule(violations, "corpus.journey.projection-ref")
}

test_accepts_collect_step_with_projection_ref if {
	ok := document(".jumo/journeys/ok.yml", "AssistedJourney", "ok", {
		"journeyId": "ok", "name": "OK", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{
			"id": "s", "name": "S", "stepKind": "COLLECT", "projectionRef": "team-form",
			"requiredFields": [],
		}],
	})
	violations := data.jumo.corpus.deny with input as [ok]
	not has_rule(violations, "corpus.journey.projection-ref")
}

test_rejects_dialogue_collect_step_missing_prompt_ref if {
	bad := document(".jumo/journeys/bad.yml", "AssistedJourney", "bad", {
		"journeyId": "bad", "name": "Bad", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "stepKind": "DIALOGUE_COLLECT", "requiredFields": []}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	has_rule(violations, "corpus.journey.projection-ref")
}

test_accepts_dialogue_collect_step_with_prompt_ref if {
	ok := document(".jumo/journeys/ok.yml", "AssistedJourney", "ok", {
		"journeyId": "ok", "name": "OK", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{
			"id": "s", "name": "S", "stepKind": "DIALOGUE_COLLECT", "promptRef": "some-prompt",
			"requiredFields": [],
		}],
	})
	violations := data.jumo.corpus.deny with input as [ok]
	not has_rule(violations, "corpus.journey.projection-ref")
}

test_rejects_dialogue_binding_on_a_non_dialogue_collect_step if {
	bad := document(".jumo/journeys/bad.yml", "AssistedJourney", "bad", {
		"journeyId": "bad", "name": "Bad", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{
			"id": "s", "name": "S", "stepKind": "COLLECT", "projectionRef": "team-form", "requiredFields": [],
			"dialogueBinding": {"fieldBindings": [{"sourcePath": "/openQuestion", "collectedField": "note"}]},
		}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	has_rule(violations, "corpus.journey.dialogue-binding-step")
}

test_rejects_an_empty_dialogue_binding if {
	bad := document(".jumo/journeys/bad.yml", "AssistedJourney", "bad", {
		"journeyId": "bad", "name": "Bad", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{
			"id": "s", "name": "S", "stepKind": "DIALOGUE_COLLECT", "promptRef": "some-prompt", "requiredFields": [],
			"dialogueBinding": {"fieldBindings": [], "fanOutBindings": []},
		}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	has_rule(violations, "corpus.journey.dialogue-binding-empty")
}

test_accepts_a_dialogue_collect_step_with_a_populated_binding if {
	ok := document(".jumo/journeys/ok.yml", "AssistedJourney", "ok", {
		"journeyId": "ok", "name": "OK", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{
			"id": "s", "name": "S", "stepKind": "DIALOGUE_COLLECT", "promptRef": "some-prompt", "requiredFields": [],
			"dialogueBinding": {
				"fieldBindings": [{"sourcePath": "/openQuestion", "collectedField": "note"}],
				"fanOutBindings": [{"sourcePath": "/selectedRefs", "collectedField": "selectedConnectors"}],
			},
		}],
		"emissionBundle": [{
			"emission": bundle_emission(".jumo/x/${id}.yml"),
			"fanOutCollection": "selectedConnectors",
		}],
	})
	violations := data.jumo.corpus.deny with input as [ok]
	not has_rule(violations, "corpus.journey.dialogue-binding-step")
	not has_rule(violations, "corpus.journey.dialogue-binding-empty")
	not has_rule(violations, "corpus.journey.dialogue-fanout-unbound")
}

test_rejects_a_fanout_binding_matching_no_emission_bundle_item if {
	bad := document(".jumo/journeys/bad.yml", "AssistedJourney", "bad", {
		"journeyId": "bad", "name": "Bad", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{
			"id": "s", "name": "S", "stepKind": "DIALOGUE_COLLECT", "promptRef": "some-prompt", "requiredFields": [],
			"dialogueBinding": {
				"fieldBindings": [],
				"fanOutBindings": [{"sourcePath": "/selectedRefs", "collectedField": "selectedConnectors"}],
			},
		}],
		"emissionBundle": [{"emission": bundle_emission(".jumo/x/${id}.yml"), "fanOutCollection": "otherCollection"}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	has_rule(violations, "corpus.journey.dialogue-fanout-unbound")
}

test_rejects_a_fanout_binding_with_no_emission_bundle_at_all if {
	bad := document(".jumo/journeys/bad.yml", "AssistedJourney", "bad", {
		"journeyId": "bad", "name": "Bad", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{
			"id": "s", "name": "S", "stepKind": "DIALOGUE_COLLECT", "promptRef": "some-prompt", "requiredFields": [],
			"dialogueBinding": {
				"fieldBindings": [{"sourcePath": "/openQuestion", "collectedField": "note"}],
				"fanOutBindings": [{"sourcePath": "/selectedRefs", "collectedField": "selectedConnectors"}],
			},
		}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	has_rule(violations, "corpus.journey.dialogue-fanout-unbound")
}

test_rejects_sub_journey_step_missing_ref if {
	bad := document(".jumo/journeys/bad.yml", "AssistedJourney", "bad", {
		"journeyId": "bad", "name": "Bad", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "stepKind": "SUB_JOURNEY", "requiredFields": []}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	has_rule(violations, "corpus.journey.projection-ref")
}

test_accepts_sub_journey_step_with_ref if {
	ok := document(".jumo/journeys/ok.yml", "AssistedJourney", "ok", {
		"journeyId": "ok", "name": "OK", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{
			"id": "s", "name": "S", "stepKind": "SUB_JOURNEY", "subJourneyRef": "child",
			"requiredFields": [],
		}],
	})
	violations := data.jumo.corpus.deny with input as [ok]
	not has_rule(violations, "corpus.journey.projection-ref")
}

test_rejects_sub_journey_self_cycle if {
	bad := document(".jumo/journeys/bad.yml", "AssistedJourney", "bad", {
		"journeyId": "bad", "name": "Bad", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "stepKind": "SUB_JOURNEY", "subJourneyRef": "bad", "requiredFields": []}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	has_rule(violations, "corpus.journey.subjourney-cycle")
}

test_rejects_sub_journey_indirect_cycle if {
	parent := document(".jumo/journeys/parent.yml", "AssistedJourney", "parent", {
		"journeyId": "parent", "name": "Parent", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "stepKind": "SUB_JOURNEY", "subJourneyRef": "child", "requiredFields": []}],
	})
	child := document(".jumo/journeys/child.yml", "AssistedJourney", "child", {
		"journeyId": "child", "name": "Child", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "stepKind": "SUB_JOURNEY", "subJourneyRef": "parent", "requiredFields": []}],
	})
	violations := data.jumo.corpus.deny with input as [parent, child]
	has_rule(violations, "corpus.journey.subjourney-cycle")
}

test_accepts_sub_journey_diamond_without_cycle if {
	parent := document(".jumo/journeys/parent.yml", "AssistedJourney", "parent", {
		"journeyId": "parent", "name": "Parent", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "stepKind": "SUB_JOURNEY", "subJourneyRef": "child", "requiredFields": []}],
	})
	child := document(".jumo/journeys/child.yml", "AssistedJourney", "child", {
		"journeyId": "child", "name": "Child", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{"id": "s", "name": "S", "requiredFields": []}],
	})
	violations := data.jumo.corpus.deny with input as [parent, child]
	not has_rule(violations, "corpus.journey.subjourney-cycle")
}

required_fields_projection := document(".jumo/projections/required-form.yml", "ProjectionSpec", "required-form", {
	"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
	"sections": [{
		"id": "identity", "i18nKey": "teamIdentity",
		"fields": [
			{"path": "teamName", "representation": "SHORT_TEXT", "required": true},
			{"path": "members", "representation": "ENTITY_COLLECTION"},
		],
	}],
})

test_accepts_required_fields_matching_projection if {
	ok := document(".jumo/journeys/ok.yml", "AssistedJourney", "ok", {
		"journeyId": "ok", "name": "OK", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{
			"id": "s", "name": "S", "stepKind": "COLLECT", "projectionRef": "required-form",
			"requiredFields": [{"field": "teamName", "i18nKey": "journeyTeamNameField"}],
		}],
	})
	violations := data.jumo.corpus.deny with input as [facts, required_fields_projection, ok]
	not has_rule(violations, "corpus.journey.required-fields-drift")
}

test_rejects_required_fields_diverging_from_projection if {
	bad := document(".jumo/journeys/bad.yml", "AssistedJourney", "bad", {
		"journeyId": "bad", "name": "Bad", "budgetRef": "interactive",
		"emitsCapability": "contract.change.propose",
		"steps": [{
			"id": "s", "name": "S", "stepKind": "COLLECT", "projectionRef": "required-form",
			"requiredFields": [{"field": "members", "i18nKey": "journeySelectRoles"}],
		}],
	})
	violations := data.jumo.corpus.deny with input as [facts, required_fields_projection, bad]
	has_rule(violations, "corpus.journey.required-fields-drift")
}

# The runtime candidate-corpus gate supplies no repository facts, and before the guard that made
# an EMPTY known_* set read as a COMPLETE one: `not ref in known_payload_schemas` was true for
# every reference, so a valid document was refused. These two cases pin the guard from both sides.
# The paired positive cases above (test_rejects_unknown_payload_schema_ref,
# test_rejects_unknown_projection_class) keep `facts` in their input and still DENY -- without
# them these would pass against a rule that had simply been deleted.
test_unknown_payload_schema_ref_is_not_refused_when_facts_are_absent if {
	bad := document(".jumo/projections/bad-schema.yml", "ProjectionSpec", "bad-schema", {
		"ownerRealm": "home", "payloadSchemaRef": "no-such-schema", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "x", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	not has_rule(violations, "corpus.projection.payload-schema")
}

test_unknown_projection_class_is_not_refused_when_facts_are_absent if {
	bad := document(".jumo/projections/bad-class.yml", "ProjectionSpec", "bad-class", {
		"ownerRealm": "home", "of": "NoSuchGeneratedClass", "projectionKind": "FORM",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "x", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [bad]
	not has_rule(violations, "corpus.projection.class")
}

# --- runtime-repository-facts-provider AC4: the guard is per family, not per evaluation ---
#
# These four tests are the only ones in this file that can see the difference between the
# per-family guard and the single boolean it replaced, because every other test supplies a
# complete facts object and therefore passes under either. They are written as a pair per
# family -- one asserting the rule DOES fire, one asserting a sibling rule does NOT -- because
# an assertion that a rule is silent passes just as well against a rule that was deleted.

facts_payload_schema_only := item("repository-facts.json", {"jumoRepositoryFacts": {
	"payloadSchemaSlots": {"setup-identity": ["nickname"]},
}})

facts_class_slots_only := item("repository-facts.json", {"jumoRepositoryFacts": {
	"classSlots": {"TeamSpec": ["teamName", "members"]},
}})

facts_empty_class_slots := item("repository-facts.json", {"jumoRepositoryFacts": {
	"classSlots": {},
	"payloadSchemaSlots": {"setup-identity": ["nickname"]},
}})

bad_class := document(".jumo/projections/partial-bad-class.yml", "ProjectionSpec", "partial-bad-class", {
	"ownerRealm": "home", "of": "NoSuchClass", "projectionKind": "FORM",
	"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "x", "representation": "SHORT_TEXT"}]}],
})

bad_payload_schema := document(".jumo/projections/partial-bad-schema.yml", "ProjectionSpec", "partial-bad-schema", {
	"ownerRealm": "home", "payloadSchemaRef": "no-such-schema", "projectionKind": "FORM",
	"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "x", "representation": "SHORT_TEXT"}]}],
})

# payloadSchemaSlots supplied, classSlots absent: the payload-schema rule must do its job.
test_payload_schema_rule_fires_when_only_its_own_family_is_supplied if {
	violations := data.jumo.corpus.deny with input as [facts_payload_schema_only, bad_payload_schema]
	has_rule(violations, "corpus.projection.payload-schema")
}

# Same input, and the class rule must stay silent rather than read an absent classSlots as a
# complete-but-empty one. Under a single boolean guard this denies, which is the defect.
test_class_rule_stays_silent_when_its_own_family_is_absent if {
	violations := data.jumo.corpus.deny with input as [facts_payload_schema_only, bad_class]
	not has_rule(violations, "corpus.projection.class")
}

# The mirror image, so neither assertion above can be satisfied by a rule that never fires at all.
test_class_rule_fires_when_only_its_own_family_is_supplied if {
	violations := data.jumo.corpus.deny with input as [facts_class_slots_only, bad_class]
	has_rule(violations, "corpus.projection.class")
}

# A family PRESENT BUT EMPTY is not supplied. `not x in set()` is true for every x, so an empty
# classSlots would arm the rule against every projection in the corpus.
test_empty_family_does_not_count_as_supplied if {
	violations := data.jumo.corpus.deny with input as [facts_empty_class_slots, bad_class, bad_payload_schema]
	not has_rule(violations, "corpus.projection.class")
	has_rule(violations, "corpus.projection.payload-schema")
}

# The deployed shape, where the contract sources are archives with .git removed: payloadSchemaSlots
# cannot be read at a revision, while classSlots still arrives from the generated artifact. Before
# runtime-repository-facts-provider that combination could not occur, because facts were absent
# entirely. Supplying them is what made it reachable, and an unguarded projection_slots would then
# refuse every field of every valid payload-schema projection.
valid_payload_schema_projection := document(".jumo/projections/deployed-good.yml", "ProjectionSpec", "deployed-good", {
	"ownerRealm": "home", "payloadSchemaRef": "setup-identity", "projectionKind": "FORM",
	"renderedBy": "cockpit",
	"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "nickname", "representation": "SHORT_TEXT"}]}],
})

test_field_path_stays_silent_when_the_payload_family_is_absent if {
	violations := data.jumo.corpus.deny with input as array.concat(
		[facts_class_slots_only, capabilities, surface],
		[valid_payload_schema_projection],
	)
	not has_rule(violations, "corpus.projection.field-path")
}

# The mirror, so the silence above is not the silence of a rule that never fires: with the family
# supplied, a field that is genuinely not a slot is still refused.
test_field_path_still_refuses_an_unknown_slot_when_the_family_is_supplied if {
	bad := document(".jumo/projections/deployed-bad-slot.yml", "ProjectionSpec", "deployed-bad-slot", {
		"ownerRealm": "home", "payloadSchemaRef": "setup-identity", "projectionKind": "FORM",
		"renderedBy": "cockpit",
		"sections": [{"id": "s", "i18nKey": "s", "fields": [{"path": "notASlot", "representation": "SHORT_TEXT"}]}],
	})
	violations := data.jumo.corpus.deny with input as [facts, capabilities, surface, bad]
	has_rule(violations, "corpus.projection.field-path")
}

# --- corpus-rules-silently-unchecked-at-runtime AC2/AC4: contractKinds is declared, not assumed ---
#
# These four rules read contractKinds directly, so before runtime-repository-facts-provider they were
# undefined and silent whenever facts were absent -- wrong, but harmlessly so. That order made a
# THIRD state reachable for the first time: facts present, this family missing. RepositoryFacts omits
# contractKinds whenever manifest.json cannot be read, and the schema bundle beside it can read fine,
# so classSlots and payloadSchemaSlots arrive while contractKinds does not. The rules then compare
# against an empty kind list and refuse every optionsFrom and every emission kind in the corpus.
# Reproduced against the real bundle on 2026-09-13: a projection whose optionsFrom named the genuine
# kind TeamSpec was refused as "not a declared contract kind".

facts_without_contract_kinds := item("repository-facts.json", {"jumoRepositoryFacts": {
	"classSlots": {"TeamSpec": ["teamName", "members"]},
	"payloadSchemaSlots": {"setup-identity": ["nickname"]},
}})

valid_options_projection := document(".jumo/projections/kinds-guard.yml", "ProjectionSpec", "kinds-guard", {
	"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
	"sections": [{
		"id": "s", "i18nKey": "s",
		"fields": [{"path": "members", "representation": "ENTITY_COLLECTION", "optionsFrom": "ConnectorDefinition"}],
	}],
})

test_options_kind_stays_silent_when_contract_kinds_is_absent if {
	violations := data.jumo.corpus.deny with input as [facts_without_contract_kinds, valid_options_projection]
	not has_rule(violations, "corpus.projection.options-kind")
}

# The mirror: with the family supplied, a genuinely unknown kind is still refused. Without this the
# test above would pass just as well against a deleted rule.
test_options_kind_still_refuses_an_unknown_kind_when_supplied if {
	bad := document(".jumo/projections/kinds-guard-bad.yml", "ProjectionSpec", "kinds-guard-bad", {
		"ownerRealm": "home", "of": "TeamSpec", "projectionKind": "FORM",
		"sections": [{
			"id": "s", "i18nKey": "s",
			"fields": [{"path": "members", "representation": "ENTITY_COLLECTION", "optionsFrom": "NoSuchKind"}],
		}],
	})
	violations := data.jumo.corpus.deny with input as [facts, bad]
	has_rule(violations, "corpus.projection.options-kind")
}

# The same reachable-third-state argument applies to the emission rules, which read the same family.
# The fixture is spec.emission.targetKind and not a step-level "kind": written the latter way first,
# this pair passed while corpus.journey.emission-kind never evaluated at all -- the only violation
# raised was emission-missing. An absence assertion over a rule that cannot fire proves nothing, so
# the positive case below is what keeps the negative one honest.
emitting_journey(identifier, target) := document(sprintf(".jumo/journeys/%s.yml", [identifier]), "AssistedJourney", identifier, {
	"ownerRealm": "home",
	"journeyKind": "PROPOSAL",
	"emission": {"targetKind": target, "pathTemplate": ".jumo/connectors/{id}.yml"},
	"steps": [{"id": "emit", "stepKind": "CONFIRM", "i18nKey": "s"}],
})

test_emission_kind_stays_silent_when_contract_kinds_is_absent if {
	violations := data.jumo.corpus.deny with input as [
		facts_without_contract_kinds,
		emitting_journey("kinds-guard-emission", "NoSuchKind"),
	]
	not has_rule(violations, "corpus.journey.emission-kind")
}

test_emission_kind_still_refuses_an_unknown_kind_when_supplied if {
	violations := data.jumo.corpus.deny with input as [
		facts,
		emitting_journey("kinds-guard-emission-bad", "NoSuchKind"),
	]
	has_rule(violations, "corpus.journey.emission-kind")
}
