package jumo.corpus_test

import rego.v1

import data.jumo.corpus

test_sealed_in_kit_refused if {
	corpus_input := [
		{"path": ".jumo/kits/sample-skill/policies/bad.yml", "contents": {
			"apiVersion": "jumo.dev/v1",
			"kind": "PolicySet",
			"metadata": {"id": "bad", "namespace": "dev.jumo.core"},
			"spec": {"ownerRealm": "home", "rules": []},
		}},
	]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.composition.sealed-in-kit-refused"
}

test_realm_only_in_kit_refused if {
	corpus_input := [
		{"path": ".jumo/kits/sample-skill/secret-bindings/bad.yml", "contents": {
			"apiVersion": "jumo.dev/v1",
			"kind": "SecretBinding",
			"metadata": {"id": "bad", "namespace": "home.jumo.dev"},
			"spec": {"ownerRealm": "home", "slot": "test", "broker": "OPENBAO"},
		}},
	]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.composition.realm-only-in-kit-refused"
}

test_additive_collision_refused if {
	corpus_input := [
		{"path": ".jumo/journeys/my-journey.yml", "contents": {
			"apiVersion": "jumo.dev/v1",
			"kind": "AssistedJourney",
			"metadata": {"id": "my-journey", "namespace": "dev.jumo.core"},
			"spec": {"journeyId": "my-journey", "name": "Journey 1", "budgetRef": "interactive", "emitsCapability": "core.test"},
		}},
		{"path": ".jumo/kits/sample-skill/journeys/my-journey.yml", "contents": {
			"apiVersion": "jumo.dev/v1",
			"kind": "AssistedJourney",
			"metadata": {"id": "my-journey", "namespace": "dev.jumo.core"},
			"spec": {"journeyId": "my-journey", "name": "Journey 2", "budgetRef": "interactive", "emitsCapability": "core.test"},
		}},
	]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.composition.additive-collision"
}

test_additive_override_permitted if {
	corpus_input := [
		{"path": ".jumo/journeys/my-journey.yml", "contents": {
			"apiVersion": "jumo.dev/v1",
			"kind": "AssistedJourney",
			"metadata": {
				"id": "my-journey",
				"namespace": "home.jumo.dev",
				"overrides": {"layer": "sample-skill", "id": "my-journey"},
			},
			"spec": {"journeyId": "my-journey", "name": "Journey 1", "budgetRef": "interactive", "emitsCapability": "core.test"},
		}},
		{"path": ".jumo/kits/sample-skill/journeys/my-journey.yml", "contents": {
			"apiVersion": "jumo.dev/v1",
			"kind": "AssistedJourney",
			"metadata": {"id": "my-journey", "namespace": "sample.skill.dev"},
			"spec": {"journeyId": "my-journey", "name": "Journey 2", "budgetRef": "interactive", "emitsCapability": "core.test"},
		}},
	]
	violations := [v | some v in corpus.deny with input as corpus_input; v.rule == "corpus.composition.additive-collision"]
	count(violations) == 0
}

test_organization_contract_outside_dedicated_source_refused if {
	corpus_input := [{"path": ".jumo/organizations/yamaka.yml", "contents": {
		"apiVersion": "jumo.dev/v1", "kind": "Organization",
		"metadata": {"id": "yamaka", "namespace": "yamaka.jumo.dev"},
		"spec": {"contractRepository": "deployment://yamaka", "memberRealmIds": ["home"], "ownerPrincipalId": "owner@example.test"},
	}}]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.composition.organization-only-source-refused"
}

test_organization_member_binding_refused_when_not_derived if {
	corpus_input := [{"path": "organizations/yamaka/.jumo/access.yml", "contents": {
		"apiVersion": "jumo.dev/v1", "kind": "OrganizationAccessBinding",
		"metadata": {"id": "member", "namespace": "yamaka.jumo.dev"},
		"spec": {"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"}, "principalId": "member@example.test", "role": "MEMBER"},
	}}]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.organization.member-binding-derived"
}

test_realm_source_duplicate_work_order_refused if {
	corpus_input := [
		{"path": ".jumo/work/public-realm-collision.yml", "contents": {
			"apiVersion": "jumo.dev/v1",
			"kind": "WorkOrder",
			"metadata": {"id": "public-realm-collision", "namespace": "home.jumo.dev"},
			"spec": {"purpose": "Declared by the public Realm overlay.", "state": "PROPOSED"},
		}},
		{"path": ".jumo/work/public-realm-collision-duplicate.yml", "contents": {
			"apiVersion": "jumo.dev/v1",
			"kind": "WorkOrder",
			"metadata": {"id": "public-realm-collision", "namespace": "home.jumo.dev"},
			"spec": {"purpose": "Accidentally re-declared by the private Realm source.", "state": "PROPOSED"},
		}},
	]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.identity.unique"
}

test_realm_only_kind_permitted_from_any_realm_source_path if {
	corpus_input := [
		{"path": ".jumo/work/from-public-overlay.yml", "contents": {
			"apiVersion": "jumo.dev/v1",
			"kind": "WorkOrder",
			"metadata": {"id": "from-public-overlay", "namespace": "home.jumo.dev"},
			"spec": {"purpose": "Declared by the public Realm overlay.", "state": "PROPOSED"},
		}},
	]
	violations := [v |
		some v in corpus.deny with input as corpus_input
		startswith(v.rule, "corpus.composition.")
	]
	count(violations) == 0
}

test_organization_requires_declared_owner_binding if {
	corpus_input := [{"path": "organizations/yamaka/.jumo/organization.yml", "contents": {
		"apiVersion": "jumo.dev/v1", "kind": "Organization",
		"metadata": {"id": "yamaka", "namespace": "yamaka.jumo.dev"},
		"spec": {"contractRepository": "deployment://yamaka", "memberRealmIds": ["home"], "ownerPrincipalId": "owner@example.test"},
	}}]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.organization.owner-binding-required"
}
