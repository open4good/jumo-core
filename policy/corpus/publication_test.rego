package jumo.corpus_test

import rego.v1

import data.jumo.corpus

test_accepts_valid_publication_conforming_to_organization if {
	corpus_input := [
		{"path": "organizations/yamaka/.jumo/organization.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "Organization",
			"metadata": {"id": "yamaka", "namespace": "yamaka.jumo.dev"},
			"spec": {"contractRepository": "deployment://yamaka", "memberRealmIds": ["home"], "ownerPrincipalId": "owner@example.test"},
		}},
		{"path": "organizations/yamaka/.jumo/owner.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "OrganizationAccessBinding",
			"metadata": {"id": "yamaka-owner", "namespace": "yamaka.jumo.dev"},
			"spec": {"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"}, "principalId": "owner@example.test", "role": "OWNER"},
		}},
		{"path": "organizations/yamaka/.jumo/publication-policy.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "OrganizationPublicationPolicy",
			"metadata": {"id": "yamaka-pub-policy", "namespace": "yamaka.jumo.dev"},
			"spec": {
				"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"},
				"allowedAdapters": ["jumo-profile-v1", "bpmn-2.0-v1", "a2a-v1-read-v1", "acs-jumo-opa-v1"],
				"maxPublishedRealms": 10,
			},
		}},
		{"path": ".jumo/publications/home.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "RealmPublication",
			"metadata": {"id": "home-pub", "namespace": "home.jumo.dev"},
			"spec": {
				"ownerRealm": "home",
				"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"},
				"publicHandle": "alice",
				"exposure": "PUBLIC_DISCOVERABLE",
				"enabledAdapters": ["jumo-profile-v1", "bpmn-2.0-v1"],
				"artifactAllowlist": ["bpmn/core-process/1.0.bpmn", "jumo.json"],
			},
		}},
	]
	violations := [v | some v in corpus.deny with input as corpus_input; startswith(v.rule, "corpus.publication.")]
	count(violations) == 0
}

test_rejects_duplicate_public_handle if {
	corpus_input := [
		{"path": ".jumo/publications/pub1.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "RealmPublication",
			"metadata": {"id": "pub1", "namespace": "home.jumo.dev"},
			"spec": {
				"ownerRealm": "home",
				"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"},
				"publicHandle": "alice",
				"exposure": "PUBLIC_DISCOVERABLE",
				"enabledAdapters": ["jumo-profile-v1"],
				"artifactAllowlist": ["jumo.json"],
			},
		}},
		{"path": ".jumo/publications/pub2.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "RealmPublication",
			"metadata": {"id": "pub2", "namespace": "other.jumo.dev"},
			"spec": {
				"ownerRealm": "other",
				"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"},
				"publicHandle": "alice",
				"exposure": "PUBLIC_DISCOVERABLE",
				"enabledAdapters": ["jumo-profile-v1"],
				"artifactAllowlist": ["jumo.json"],
			},
		}},
	]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.publication.unique-handle"
}

test_rejects_non_member_realm_publication if {
	corpus_input := [
		{"path": "organizations/yamaka/.jumo/organization.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "Organization",
			"metadata": {"id": "yamaka", "namespace": "yamaka.jumo.dev"},
			"spec": {"contractRepository": "deployment://yamaka", "memberRealmIds": ["home"], "ownerPrincipalId": "owner@example.test"},
		}},
		{"path": ".jumo/publications/intruder.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "RealmPublication",
			"metadata": {"id": "intruder-pub", "namespace": "intruder.jumo.dev"},
			"spec": {
				"ownerRealm": "intruder",
				"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"},
				"publicHandle": "intruder",
				"exposure": "PUBLIC_DISCOVERABLE",
				"enabledAdapters": ["jumo-profile-v1"],
				"artifactAllowlist": ["jumo.json"],
			},
		}},
	]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.publication.member-organization-binding"
}

test_rejects_broadening_adapter_beyond_organization if {
	corpus_input := [
		{"path": "organizations/yamaka/.jumo/organization.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "Organization",
			"metadata": {"id": "yamaka", "namespace": "yamaka.jumo.dev"},
			"spec": {"contractRepository": "deployment://yamaka", "memberRealmIds": ["home"], "ownerPrincipalId": "owner@example.test"},
		}},
		{"path": "organizations/yamaka/.jumo/publication-policy.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "OrganizationPublicationPolicy",
			"metadata": {"id": "yamaka-pub-policy", "namespace": "yamaka.jumo.dev"},
			"spec": {
				"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"},
				"allowedAdapters": ["jumo-profile-v1"],
				"maxPublishedRealms": 5,
			},
		}},
		{"path": ".jumo/publications/home.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "RealmPublication",
			"metadata": {"id": "home-pub", "namespace": "home.jumo.dev"},
			"spec": {
				"ownerRealm": "home",
				"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"},
				"publicHandle": "alice",
				"exposure": "PUBLIC_DISCOVERABLE",
				"enabledAdapters": ["jumo-profile-v1", "bpmn-2.0-v1"],
				"artifactAllowlist": ["jumo.json"],
			},
		}},
	]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.publication.adapter-narrowing-only"
}

test_rejects_unknown_sealed_adapter if {
	corpus_input := [
		{"path": "organizations/yamaka/.jumo/publication-policy.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "OrganizationPublicationPolicy",
			"metadata": {"id": "yamaka-pub-policy", "namespace": "yamaka.jumo.dev"},
			"spec": {
				"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"},
				"allowedAdapters": ["unknown-custom-adapter"],
				"maxPublishedRealms": 5,
			},
		}},
	]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.publication.sealed-adapter-only"
}

test_rejects_non_public_exposure if {
	corpus_input := [
		{"path": ".jumo/publications/home.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "RealmPublication",
			"metadata": {"id": "home-pub", "namespace": "home.jumo.dev"},
			"spec": {
				"ownerRealm": "home",
				"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"},
				"publicHandle": "alice",
				"exposure": "PRIVATE_STEALTH",
				"enabledAdapters": ["jumo-profile-v1"],
				"artifactAllowlist": ["jumo.json"],
			},
		}},
	]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.publication.exposure-must-be-public-discoverable"
}

test_rejects_sensitive_artifact_in_allowlist if {
	corpus_input := [
		{"path": ".jumo/publications/home.yml", "contents": {
			"apiVersion": "jumo.dev/v1", "kind": "RealmPublication",
			"metadata": {"id": "home-pub", "namespace": "home.jumo.dev"},
			"spec": {
				"ownerRealm": "home",
				"organizationRef": {"kind": "Organization", "namespace": "yamaka.jumo.dev", "id": "yamaka"},
				"publicHandle": "alice",
				"exposure": "PUBLIC_DISCOVERABLE",
				"enabledAdapters": ["jumo-profile-v1"],
				"artifactAllowlist": [".jumo/secrets/db_password.yml"],
			},
		}},
	]
	violations := corpus.deny with input as corpus_input
	some v in violations
	v.rule == "corpus.publication.artifact-allowlist-boundary"
}
