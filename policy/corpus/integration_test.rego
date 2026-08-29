package jumo.corpus_integration_test

import rego.v1

document(path, kind, identifier, spec) := {
	"path": path,
	"contents": {
		"apiVersion": "jumo.dev/v1",
		"kind": kind,
		"metadata": {"id": identifier, "namespace": "dev.jumo.test"},
		"spec": spec,
	},
}

has_rule(violations, rule) if {
	some violation in violations
	violation.rule == rule
}

integration_base := [
	document(".jumo/realms/home.yml", "RealmTemplate", "home", {}),
	document(
		".jumo/capabilities/core.yml",
		"ActionCapabilitySet",
		"core",
		{"capabilities": [{"name": "external.apply", "producesExternalEffect": true}]},
	),
	document(".jumo/operators/a.yml", "RoleDefinition", "a", {"ownerRealm": "home"}),
	document(".jumo/operator-assignments/a.yml", "RoleAssignment", "a", {"ownerRealm": "home", "operatorRef": "a"}),
]

test_connector_may_not_combine_two_authority_sources if {
	connector := document(
		".jumo/connectors/bad.yml",
		"ConnectorDefinition",
		"bad",
		{"ownerRealm": "home", "bundleRef": "bundle", "remoteServiceRef": "remote", "operations": []},
	)
	violations := data.jumo.corpus.deny with input as array.concat(integration_base, [connector])
	has_rule(violations, "corpus.connector.single-source")
}

test_bundle_external_effect_requires_idempotency_and_reconciliation if {
	bundle := document(
		".jumo/bundles/bad.yml",
		"McpBundle",
		"bad",
		{
			"ownerRealm": "home",
			"lifecycle": "DECLARED",
			"semanticProfile": {"operations": [{
				"id": "apply",
				"capabilityRef": "external.apply",
				"effect": "EXTERNAL_EFFECT",
				"upstreamToolName": "apply",
			}]},
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(integration_base, [bundle])
	has_rule(violations, "corpus.bundle.external-idempotency")
	has_rule(violations, "corpus.bundle.external-reconciliation")
}

test_monetary_operations_require_a_same_realm_active_policy_and_consistent_limits if {
	other_realm := document(".jumo/realms/other.yml", "RealmTemplate", "other", {})
	wrong_scope := document(".jumo/monetary-risk-policies/scope.yml", "MonetaryRiskPolicy", "scope", {
		"ownerRealm": "home", "scope": "PROJECT", "currency": "EUR", "window": "P1D",
		"perEffectLimit": 0, "cumulativeLimit": -1, "lifecycle": "ENABLED",
	})
	inconsistent := document(".jumo/monetary-risk-policies/inconsistent.yml", "MonetaryRiskPolicy", "inconsistent", {
		"ownerRealm": "home", "scope": "REALM_ONLY", "currency": "EUR", "window": "P1D",
		"perEffectLimit": 20, "cumulativeLimit": 10, "lifecycle": "ENABLED",
	})
	other_policy := document(".jumo/monetary-risk-policies/other.yml", "MonetaryRiskPolicy", "other", {
		"ownerRealm": "other", "scope": "REALM_ONLY", "currency": "USD", "window": "P1D",
		"perEffectLimit": 10, "cumulativeLimit": 100, "lifecycle": "ENABLED",
	})
	bundle := document(".jumo/bundles/money.yml", "McpBundle", "money", {
		"ownerRealm": "home", "semanticProfile": {"operations": [
			{"id": "currency-missing", "effect": "EXTERNAL_EFFECT", "monetaryAmountInput": "amount"},
			{"id": "wrong-effect", "effect": "READ_ONLY", "monetaryAmountInput": "amount", "monetaryCurrency": "EUR"},
			{"id": "no-policy", "effect": "EXTERNAL_EFFECT", "monetaryAmountInput": "amount", "monetaryCurrency": "USD"},
		]},
	})
	violations := data.jumo.corpus.deny with input as [integration_base[0], other_realm, wrong_scope, inconsistent, other_policy, bundle]
	every rule in {
		"corpus.monetary-risk.scope", "corpus.monetary-risk.limits",
		"corpus.monetary-risk.operation-declaration", "corpus.monetary-risk.active-policy",
	} {
		has_rule(violations, rule)
	}
}

test_monetary_operation_accepts_matching_enabled_realm_policy if {
	policy := document(".jumo/monetary-risk-policies/eur.yml", "MonetaryRiskPolicy", "eur", {
		"ownerRealm": "home", "scope": "REALM_ONLY", "currency": "EUR", "window": "P1D",
		"perEffectLimit": 10, "cumulativeLimit": 100, "lifecycle": "ENABLED",
	})
	bundle := document(".jumo/bundles/money.yml", "McpBundle", "money", {
		"ownerRealm": "home", "semanticProfile": {"operations": [{
			"id": "pay", "effect": "EXTERNAL_EFFECT", "monetaryAmountInput": "amount", "monetaryCurrency": "EUR",
		}]},
	})
	violations := data.jumo.corpus.deny with input as [integration_base[0], policy, bundle]
	not has_rule(violations, "corpus.monetary-risk.active-policy")
	not has_rule(violations, "corpus.monetary-risk.operation-declaration")
}

test_connector_appraisal_requires_independent_verification if {
	appraisal := document(
		".jumo/appraisals/bad.yml",
		"ConnectorAppraisal",
		"bad",
		{"ownerRealm": "home", "bundleRef": "missing", "appraisedBy": "a", "verifiedBy": "a"},
	)
	violations := data.jumo.corpus.deny with input as array.concat(integration_base, [appraisal])
	has_rule(violations, "corpus.appraisal.independent")
}

test_secret_allowlist_references_must_resolve if {
	secret := document(
		".jumo/secrets/bad.yml",
		"SecretBinding",
		"bad",
		{"ownerRealm": "home", "allowedConnectorRefs": ["missing"]},
	)
	violations := data.jumo.corpus.deny with input as array.concat(integration_base, [secret])
	has_rule(violations, "corpus.secret.reference")
}

test_connector_rules_reject_boundary_weakening if {
	other_realm := document(".jumo/realms/other.yml", "RealmTemplate", "other", {})
	remote := document(".jumo/remotes/other.yml", "RemoteMcpService", "remote-other", {"ownerRealm": "other"})
	bundle := document(".jumo/bundles/bundle.yml", "McpBundle", "bundle", {"ownerRealm": "home", "semanticProfile": {"operations": [{"id": "apply", "capabilityRef": "external.apply", "idempotency": "REQUIRED", "reconciliation": "REQUIRED"}]}})
	other_bundle := document(".jumo/bundles/other.yml", "McpBundle", "bundle-other", {"ownerRealm": "other"})
	secret_other := document(".jumo/secrets/other.yml", "SecretBinding", "secret-other", {"ownerRealm": "other"})
	secret_restricted := document(".jumo/secrets/restricted.yml", "SecretBinding", "secret-restricted", {"ownerRealm": "home", "allowedConnectorRefs": ["another"], "allowedOperationRefs": ["another"]})
	connectors := [
		document(".jumo/connectors/remote-missing.yml", "ConnectorDefinition", "remote-missing", {"ownerRealm": "home", "remoteServiceRef": "missing", "operations": []}),
		document(".jumo/connectors/remote-realm.yml", "ConnectorDefinition", "remote-realm", {"ownerRealm": "home", "remoteServiceRef": "remote-other", "operations": []}),
		document(".jumo/connectors/bundle-missing.yml", "ConnectorDefinition", "bundle-missing", {"ownerRealm": "home", "bundleRef": "missing", "operations": []}),
		document(".jumo/connectors/bundle-realm.yml", "ConnectorDefinition", "bundle-realm", {"ownerRealm": "home", "bundleRef": "bundle-other", "operations": []}),
		document(".jumo/connectors/weak.yml", "ConnectorDefinition", "weak", {"ownerRealm": "home", "bundleRef": "bundle", "operations": [
			{"id": "missing", "bundleOperationRef": "missing", "capabilityRef": "external.apply"},
			{"id": "weaken", "bundleOperationRef": "apply", "capabilityRef": "internal.read"},
			{"id": "semantic", "capabilityRef": "internal.read", "idempotency": "REQUIRED", "reconciliation": "REQUIRED"},
			{"id": "secrets", "capabilityRef": "external.apply", "secretBindingRefs": ["missing", "secret-other", "secret-restricted"]},
		]}),
	]
	capabilities := document(".jumo/capabilities/all.yml", "ActionCapabilitySet", "all", {"capabilities": [{"name": "external.apply", "producesExternalEffect": true}, {"name": "internal.read"}]})
	violations := data.jumo.corpus.deny with input as array.flatten([[integration_base[0], capabilities, other_realm, remote, bundle, other_bundle, secret_other, secret_restricted], connectors])
	every rule in {
		"corpus.connector.remote-resolves", "corpus.connector.remote-realm",
		"corpus.connector.bundle-resolves", "corpus.connector.bundle-realm",
		"corpus.connector.bundle-operation", "corpus.connector.bundle-capability",
		"corpus.connector.bundle-idempotency", "corpus.connector.bundle-reconciliation",
		"corpus.connector.secret-resolves", "corpus.connector.secret-realm",
		"corpus.connector.secret-allowlist", "corpus.connector.secret-operation",
		"corpus.connector.effect-semantics",
	} {
		has_rule(violations, rule)
	}
}

test_bundle_rules_reject_unreviewed_or_unsafe_semantics if {
	capabilities := document(".jumo/capabilities/all.yml", "ActionCapabilitySet", "all", {"capabilities": [{"name": "external.apply", "producesExternalEffect": true}, {"name": "internal.read"}]})
	quarantine := document(".jumo/bundles/quarantine.yml", "McpBundle", "quarantine", {"ownerRealm": "home", "lifecycle": "ENABLED", "trustClass": "CLIENT_QUARANTINED"})
	unreviewed := document(".jumo/bundles/unreviewed.yml", "McpBundle", "unreviewed", {"ownerRealm": "home", "lifecycle": "REVIEWED"})
	refused := document(".jumo/bundles/refused.yml", "McpBundle", "refused", {"ownerRealm": "home", "lifecycle": "REVIEWED", "artifact": {"digest": "same"}})
	refused_appraisal := document(".jumo/appraisals/refused.yml", "ConnectorAppraisal", "refused", {"ownerRealm": "home", "bundleRef": "refused", "verdict": "REFUSED", "appraisedDigest": "same"})
	digest := document(".jumo/bundles/digest.yml", "McpBundle", "digest", {"ownerRealm": "home", "lifecycle": "REVIEWED", "artifact": {"digest": "expected"}})
	digest_appraisal := document(".jumo/appraisals/digest.yml", "ConnectorAppraisal", "digest", {"ownerRealm": "home", "bundleRef": "digest", "verdict": "ACCEPTED", "appraisedDigest": "wrong"})
	unsafe := document(".jumo/bundles/unsafe.yml", "McpBundle", "unsafe", {"ownerRealm": "home", "lifecycle": "DECLARED", "semanticProfile": {"operations": [
		{"id": "same", "capabilityRef": "internal.read", "effect": "EXTERNAL_EFFECT", "upstreamToolName": "hidden"},
		{"id": "same", "capabilityRef": "external.apply", "effect": "EXTERNAL_EFFECT", "upstreamToolName": "hidden2"},
	]}})
	unsafe_appraisal := document(".jumo/appraisals/unsafe.yml", "ConnectorAppraisal", "unsafe", {"ownerRealm": "home", "bundleRef": "unsafe", "upstreamInventory": []})
	violations := data.jumo.corpus.deny with input as [integration_base[0], capabilities, quarantine, unreviewed, refused, refused_appraisal, digest, digest_appraisal, unsafe, unsafe_appraisal]
	every rule in {
		"corpus.bundle.quarantine", "corpus.bundle.appraisal-required",
		"corpus.bundle.appraisal-verdict", "corpus.bundle.appraisal-digest",
		"corpus.bundle.operation-unique", "corpus.bundle.external-capability",
		"corpus.bundle.external-idempotency", "corpus.bundle.external-reconciliation",
		"corpus.bundle.appraisal-exposure",
	} {
		has_rule(violations, rule)
	}
}

test_remote_and_appraisal_rules_fail_closed if {
	other_realm := document(".jumo/realms/other.yml", "RealmTemplate", "other", {})
	secret_other := document(".jumo/secrets/other.yml", "SecretBinding", "secret-other", {"ownerRealm": "other"})
	bundle_other := document(".jumo/bundles/other.yml", "McpBundle", "bundle-other", {"ownerRealm": "other"})
	missing_secret := document(".jumo/remotes/missing-secret.yml", "RemoteMcpService", "missing-secret", {"ownerRealm": "home", "oauthSecretBindingRef": "missing", "lifecycle": "DECLARED"})
	wrong_secret := document(".jumo/remotes/wrong-secret.yml", "RemoteMcpService", "wrong-secret", {"ownerRealm": "home", "oauthSecretBindingRef": "secret-other", "lifecycle": "DECLARED"})
	unreviewed := document(".jumo/remotes/unreviewed.yml", "RemoteMcpService", "unreviewed", {"ownerRealm": "home", "oauthSecretBindingRef": "missing", "lifecycle": "ENABLED"})
	remote_app_missing := document(".jumo/remote-appraisals/missing.yml", "RemoteMcpAppraisal", "missing", {"ownerRealm": "home", "serviceRef": "missing"})
	remote_app_wrong := document(".jumo/remote-appraisals/wrong.yml", "RemoteMcpAppraisal", "wrong", {"ownerRealm": "other", "serviceRef": "unreviewed", "verdict": "REFUSED", "observedAt": "2026-08-12", "validUntil": "2026-08-01"})
	operator_other := document(".jumo/operators/other.yml", "RoleDefinition", "other-operator", {"ownerRealm": "other"})
	connector_app := document(".jumo/appraisals/bad.yml", "ConnectorAppraisal", "bad", {"ownerRealm": "home", "bundleRef": "bundle-other", "appraisedBy": "missing", "verifiedBy": "missing", "upstreamInventory": [{"upstreamToolName": "same"}, {"upstreamToolName": "same"}]})
	connector_app_realm := document(".jumo/appraisals/realm.yml", "ConnectorAppraisal", "realm", {"ownerRealm": "home", "bundleRef": "another-bundle", "appraisedBy": "other-operator", "verifiedBy": "other-operator"})
	violations := data.jumo.corpus.deny with input as [integration_base[0], other_realm, secret_other, bundle_other, missing_secret, wrong_secret, unreviewed, remote_app_missing, remote_app_wrong, operator_other, connector_app, connector_app_realm]
	every rule in {
		"corpus.remote.oauth-secret", "corpus.remote.oauth-secret-realm",
		"corpus.remote.appraisal-required", "corpus.appraisal.remote-service",
		"corpus.appraisal.remote-realm", "corpus.appraisal.bundle-realm",
		"corpus.appraisal.independent", "corpus.appraisal.inventory-unique",
		"corpus.appraisal.validity-order", "corpus.appraisal.operator-reference",
		"corpus.appraisal.operator-realm",
	} {
		has_rule(violations, rule)
	}
}

test_secret_execution_cell_worker_profile_and_practice_references_fail_closed if {
	other_realm := document(".jumo/realms/other.yml", "RealmTemplate", "other", {})
	bundle_other := document(".jumo/bundles/other.yml", "McpBundle", "bundle-other", {"ownerRealm": "other", "semanticProfile": {"operations": []}})
	secret := document(".jumo/secrets/bad.yml", "SecretBinding", "bad", {"ownerRealm": "home", "allowedBundleRefs": ["missing", "bundle-other"], "allowedOperationRefs": ["missing"]})
	connector_other := document(".jumo/connectors/other.yml", "ConnectorDefinition", "other", {"ownerRealm": "other", "placement": "CONTROL_PLANE", "operations": []})
	cell := document(".jumo/cells/bad.yml", "ExecutionCell", "bad", {"ownerRealm": "home", "connectorRefs": ["missing", "other"]})
	profile := document(".jumo/worker-profiles/bad.yml", "WorkerRequirementProfile", "profile", {"ownerRealm": "home", "quality": {"benchmarkRefs": ["missing", "tasks"]}})
	tasks := document(".jumo/golden-tasks/tasks.yml", "GoldenTaskSet", "tasks", {"ownerRealm": "home", "requirementProfileRef": "another"})
	practice := document(".jumo/practices/bad.yml", "Practice", "bad", {"invokes": {"promptRef": "missing", "workflowRef": "missing"}, "budgetRef": "missing"})
	violations := data.jumo.corpus.deny with input as [integration_base[0], other_realm, bundle_other, secret, connector_other, cell, profile, tasks, practice]
	every rule in {
		"corpus.secret.reference", "corpus.secret.reference-realm", "corpus.secret.operation",
		"corpus.execution-cell.connector", "corpus.execution-cell.connector-realm", "corpus.execution-cell.connector-placement",
		"corpus.worker-profile.benchmark", "corpus.worker-profile.benchmark-target",
		"corpus.practice.reference",
	} {
		has_rule(violations, rule)
	}
}

test_connector_mcp_bundle_ref_enforces_idempotency_and_reconciliation if {
	bundle := document(".jumo/bundles/mcp-strict.yml", "McpBundle", "mcp-strict", {"ownerRealm": "home", "semanticProfile": {"operations": [{"id": "write-op", "capabilityRef": "external.apply", "idempotency": "REQUIRED", "reconciliation": "REQUIRED"}]}})
	capabilities := document(".jumo/capabilities/all.yml", "ActionCapabilitySet", "all", {"capabilities": [{"name": "external.apply", "producesExternalEffect": true}]})
	connector_weak_idempotent := document(".jumo/connectors/weak-idem.yml", "ConnectorDefinition", "weak-idem", {
		"ownerRealm": "home",
		"mcpBundleRef": "mcp-strict",
		"operations": [{"id": "op1", "bundleOperationRef": "write-op", "capabilityRef": "external.apply", "idempotency": "OPTIONAL", "reconciliation": "REQUIRED"}],
	})
	connector_weak_reconciliation := document(".jumo/connectors/weak-recon.yml", "ConnectorDefinition", "weak-recon", {
		"ownerRealm": "home",
		"mcpBundleRef": "mcp-strict",
		"operations": [{"id": "op2", "bundleOperationRef": "write-op", "capabilityRef": "external.apply", "idempotency": "REQUIRED", "reconciliation": "OPTIONAL"}],
	})
	violations1 := data.jumo.corpus.deny with input as [integration_base[0], capabilities, bundle, connector_weak_idempotent]
	has_rule(violations1, "corpus.connector.bundle-idempotency")

	violations2 := data.jumo.corpus.deny with input as [integration_base[0], capabilities, bundle, connector_weak_reconciliation]
	has_rule(violations2, "corpus.connector.bundle-reconciliation")
}

test_mcp_operations_require_schema_pins if {
	bundle_missing_pins := document(".jumo/bundles/no-pins.yml", "McpBundle", "no-pins", {
		"ownerRealm": "home",
		"semanticProfile": {"operations": [{"id": "read", "capabilityRef": "external.read"}]},
	})
	violations1 := data.jumo.corpus.deny with input as array.concat(integration_base, [bundle_missing_pins])
	has_rule(violations1, "corpus.bundle.schema-pins-required")

	bundle_with_pins := document(".jumo/bundles/pinned.yml", "McpBundle", "pinned", {
		"ownerRealm": "home",
		"semanticProfile": {"operations": [{
			"id": "read",
			"capabilityRef": "external.read",
			"inputSchemaRef": "https://jumo.dev/schemas/jumo-v1/ReadRequest",
			"outputSchemaRef": "https://jumo.dev/schemas/jumo-v1/ReadResponse",
		}]},
	})
	violations2 := data.jumo.corpus.deny with input as array.concat(integration_base, [bundle_with_pins])
	not has_rule(violations2, "corpus.bundle.schema-pins-required")

	connector_missing_pins := document(".jumo/connectors/no-pins.yml", "ConnectorDefinition", "no-pins", {
		"ownerRealm": "home",
		"transport": "MCP",
		"operations": [{"id": "read", "capabilityRef": "external.read"}],
	})
	violations3 := data.jumo.corpus.deny with input as array.concat(integration_base, [connector_missing_pins])
	has_rule(violations3, "corpus.connector.schema-pins-required")

	connector_forge_exempt := document(".jumo/connectors/forge.yml", "ConnectorDefinition", "forge", {
		"ownerRealm": "home",
		"transport": "FORGE",
		"operations": [{"id": "read", "capabilityRef": "external.read"}],
	})
	violations4 := data.jumo.corpus.deny with input as array.concat(integration_base, [connector_forge_exempt])
	not has_rule(violations4, "corpus.connector.schema-pins-required")
}

test_local_dev_mono_operator_appraisal if {
	operator := document(".jumo/operators/dev.yml", "RoleDefinition", "dev-operator", {"ownerRealm": "home"})
	bundle := document(".jumo/bundles/bundle.yml", "McpBundle", "bundle", {"ownerRealm": "home", "semanticProfile": {"operations": []}})
	appraisal_non_promotable := document(".jumo/appraisals/local.yml", "ConnectorAppraisal", "local", {
		"ownerRealm": "home",
		"mcpBundleRef": "bundle",
		"appraisedByRoleDefinitionRef": "dev-operator",
		"verifiedByRoleDefinitionRef": "dev-operator",
		"environment": "LOCAL_DEV",
		"promotable": false,
		"upstreamInventory": [{"upstreamToolName": "tool1"}],
	})
	violations_ok := data.jumo.corpus.deny with input as [integration_base[0], operator, bundle, appraisal_non_promotable]
	not has_rule(violations_ok, "corpus.appraisal.independent")
	not has_rule(violations_ok, "corpus.appraisal.local-dev-promotion-blocked")

	appraisal_promotable := document(".jumo/appraisals/local-promotable.yml", "ConnectorAppraisal", "local-promotable", {
		"ownerRealm": "home",
		"mcpBundleRef": "bundle",
		"appraisedByRoleDefinitionRef": "dev-operator",
		"verifiedByRoleDefinitionRef": "dev-operator",
		"environment": "LOCAL_DEV",
		"promotable": true,
		"upstreamInventory": [{"upstreamToolName": "tool1"}],
	})
	violations_bad := data.jumo.corpus.deny with input as [integration_base[0], operator, bundle, appraisal_promotable]
	has_rule(violations_bad, "corpus.appraisal.independent")
	has_rule(violations_bad, "corpus.appraisal.local-dev-promotion-blocked")
}

package_document(namespace, identifier, spec) := {
	"path": sprintf(".jumo/connector-packages/%s/package.yml", [identifier]),
	"contents": {
		"apiVersion": "jumo.dev/v1",
		"kind": "ConnectorPackage",
		"metadata": {"id": identifier, "namespace": namespace},
		"spec": spec,
	},
}

certification_document(identifier, spec) := {
	"path": sprintf(".jumo/connector-package-certifications/%s.yml", [identifier]),
	"contents": {
		"apiVersion": "jumo.dev/v1",
		"kind": "ConnectorPackageCertification",
		"metadata": {"id": identifier, "namespace": "dev.jumo.core"},
		"spec": spec,
	},
}

test_connector_package_platform_only_refused if {
	realm_owned := package_document("home.jumo.dev", "bad", {"connectorId": "bad", "version": "1.0.0", "packageDigest": "sha256:aa"})
	violations := data.jumo.corpus.deny with input as [realm_owned]
	has_rule(violations, "corpus.package.platform-only")
}

test_connector_package_connectors_namespace_allowed if {
	real_shape := package_document("dev.jumo.connectors", "google", {"connectorId": "google", "version": "1.0.0", "packageDigest": "sha256:aa"})
	violations := data.jumo.corpus.deny with input as [real_shape]
	not has_rule(violations, "corpus.package.platform-only")
}

# O-A: the certification pins the package's declared transports, so a certifier cannot assert a
# transport the package never declared -- which is what supportedTransportDigests allowed while it
# had no stated meaning. The expected digest is computed here the same way
# scripts/generate/compute-package-digests.py computes it; the two were checked to agree on this
# exact descriptor before this test was written.
transport_descriptor := {"transport": "STREAMABLE_HTTP", "endpointUrl": "https://mcp.example.com/", "tlsRequired": true}

transport_package := package_document("dev.jumo.connectors", "pkg-transport", {
	"connectorId": "pkg-transport",
	"version": "1.0.0",
	"packageDigest": "sha256:aaaa",
	"supportedTransports": [transport_descriptor],
})

test_certification_pinning_the_declared_transport_is_accepted if {
	cert := certification_document("cert-transport-ok", {
		"connectorPackageRef": {"kind": "ConnectorPackage", "namespace": "dev.jumo.connectors", "id": "pkg-transport"},
		"packageDigest": "sha256:aaaa",
		"supportedTransportDigests": ["sha256:81e9d53328e6297721f56d2a13c28bae20e80809c818008123df630df730ae45"],
	})
	violations := data.jumo.corpus.deny with input as [transport_package, cert]
	not has_rule(violations, "corpus.certification.transport-consistency")
}

test_certification_asserting_an_undeclared_transport_is_refused if {
	cert := certification_document("cert-transport-bad", {
		"connectorPackageRef": {"kind": "ConnectorPackage", "namespace": "dev.jumo.connectors", "id": "pkg-transport"},
		"packageDigest": "sha256:aaaa",
		"supportedTransportDigests": ["sha256:2222"],
	})
	violations := data.jumo.corpus.deny with input as [transport_package, cert]
	has_rule(violations, "corpus.certification.transport-consistency")
}

test_certification_omitting_a_declared_transport_is_refused if {
	cert := certification_document("cert-transport-missing", {
		"connectorPackageRef": {"kind": "ConnectorPackage", "namespace": "dev.jumo.connectors", "id": "pkg-transport"},
		"packageDigest": "sha256:aaaa",
		"supportedTransportDigests": [],
	})
	violations := data.jumo.corpus.deny with input as [transport_package, cert]
	has_rule(violations, "corpus.certification.transport-consistency")
}

test_certification_digest_consistency if {
	pkg := package_document("dev.jumo.connectors", "pkg1", {
		"connectorId": "pkg1",
		"version": "1.0.0",
		"packageDigest": "sha256:aaaa",
		"runtimeImageDigest": "sha256:bbbb",
		"sbomDigest": "sha256:cccc",
		"provenanceDigest": "sha256:dddd",
	})
	matching := certification_document("cert-ok", {
		"connectorPackageRef": {"kind": "ConnectorPackage", "namespace": "dev.jumo.connectors", "id": "pkg1"},
		"packageDigest": "sha256:aaaa",
		"imageDigest": "sha256:bbbb",
		"signatureDigest": "sha256:eeee",
		"sbomDigest": "sha256:cccc",
		"provenanceDigest": "sha256:dddd",
		"licenceDigest": "sha256:ffff",
		"testDigest": "sha256:1111",
		"supportedTransportDigests": ["sha256:2222"],
	})
	violations_ok := data.jumo.corpus.deny with input as [pkg, matching]
	not has_rule(violations_ok, "corpus.certification.digest-consistency")
	not has_rule(violations_ok, "corpus.certification.package-resolves")

	mismatched := certification_document("cert-bad", object.union(matching.contents.spec, {"imageDigest": "sha256:9999"}))
	violations_bad := data.jumo.corpus.deny with input as [pkg, mismatched]
	has_rule(violations_bad, "corpus.certification.digest-consistency")
}

test_certification_package_resolves if {
	dangling := certification_document("cert-dangling", {
		"connectorPackageRef": {"kind": "ConnectorPackage", "namespace": "dev.jumo.connectors", "id": "no-such-package"},
		"packageDigest": "sha256:aaaa",
		"imageDigest": "sha256:bbbb",
		"signatureDigest": "sha256:eeee",
		"sbomDigest": "sha256:cccc",
		"provenanceDigest": "sha256:dddd",
		"licenceDigest": "sha256:ffff",
		"testDigest": "sha256:1111",
		"supportedTransportDigests": ["sha256:2222"],
	})
	violations := data.jumo.corpus.deny with input as [dangling]
	has_rule(violations, "corpus.certification.package-resolves")
}

test_bundle_package_certified if {
	pkg := package_document("dev.jumo.connectors", "pkg2", {"connectorId": "pkg2", "version": "1.0.0", "packageDigest": "sha256:aaaa"})
	cert := certification_document("cert-pkg2", {
		"connectorPackageRef": {"kind": "ConnectorPackage", "namespace": "dev.jumo.connectors", "id": "pkg2"},
		"packageDigest": "sha256:aaaa",
		"imageDigest": "sha256:bbbb",
		"signatureDigest": "sha256:eeee",
		"sbomDigest": "sha256:cccc",
		"provenanceDigest": "sha256:dddd",
		"licenceDigest": "sha256:ffff",
		"testDigest": "sha256:1111",
		"supportedTransportDigests": ["sha256:2222"],
	})
	referencing := document(".jumo/bundles/referencing.yml", "McpBundle", "referencing", {
		"ownerRealm": "home",
		"connectorPackageRef": {"kind": "ConnectorPackage", "namespace": "dev.jumo.connectors", "id": "pkg2"},
	})

	violations_certified := data.jumo.corpus.deny with input as [pkg, cert, referencing]
	not has_rule(violations_certified, "corpus.bundle.package-certified")

	violations_uncertified := data.jumo.corpus.deny with input as [pkg, referencing]
	has_rule(violations_uncertified, "corpus.bundle.package-certified")

	no_ref := document(".jumo/bundles/no-ref.yml", "McpBundle", "no-ref", {"ownerRealm": "home"})
	violations_no_ref := data.jumo.corpus.deny with input as [pkg, no_ref]
	not has_rule(violations_no_ref, "corpus.bundle.package-certified")
}

# openbao-delegated-lease AC2: WorkOrder.secretBindingRefs <-> SecretBinding.allowedWorkOrderRefs.
work_order_document(identifier, namespace, spec) := {
	"path": sprintf(".jumo/work/%s.yml", [identifier]),
	"contents": {
		"apiVersion": "jumo.dev/v1",
		"kind": "WorkOrder",
		"metadata": {"id": identifier, "namespace": namespace},
		"spec": spec,
	},
}

test_secret_work_order_reciprocity_satisfied_raises_nothing if {
	wo := work_order_document("wo-good", "home.jumo.dev", {"secretBindingRefs": ["secret-good"]})
	secret := document(".jumo/secrets/good.yml", "SecretBinding", "secret-good", {
		"ownerRealm": "home",
		"lifecycle": "ENABLED",
		"allowedWorkOrderRefs": ["wo-good"],
	})
	violations := data.jumo.corpus.deny with input as [wo, secret]
	not has_rule(violations, "corpus.secret.work-order-reciprocity")
	not has_rule(violations, "corpus.secret.binding-work-order-reciprocity")
	not has_rule(violations, "corpus.secret.work-order-realm")
	not has_rule(violations, "corpus.secret.work-order-lifecycle")
	not has_rule(violations, "corpus.secret.work-order-kind")
	not has_rule(violations, "corpus.secret.binding-work-order-kind")
}

test_secret_work_order_reciprocity_one_sided_from_work_order_fails if {
	wo := work_order_document("wo-one-sided", "home.jumo.dev", {"secretBindingRefs": ["secret-no-reciprocate"]})
	secret := document(".jumo/secrets/no-reciprocate.yml", "SecretBinding", "secret-no-reciprocate", {
		"ownerRealm": "home",
		"lifecycle": "ENABLED",
	})
	violations := data.jumo.corpus.deny with input as [wo, secret]
	has_rule(violations, "corpus.secret.work-order-reciprocity")
}

test_secret_work_order_reciprocity_one_sided_from_binding_fails if {
	wo := work_order_document("wo-not-declared", "home.jumo.dev", {})
	secret := document(".jumo/secrets/declares-wo.yml", "SecretBinding", "secret-declares-wo", {
		"ownerRealm": "home",
		"lifecycle": "ENABLED",
		"allowedWorkOrderRefs": ["wo-not-declared"],
	})
	violations := data.jumo.corpus.deny with input as [wo, secret]
	has_rule(violations, "corpus.secret.binding-work-order-reciprocity")
}

test_secret_work_order_cross_realm_fails if {
	wo := work_order_document("wo-cross-realm", "other.jumo.dev", {"secretBindingRefs": ["secret-home"]})
	secret := document(".jumo/secrets/home-only.yml", "SecretBinding", "secret-home", {
		"ownerRealm": "home",
		"lifecycle": "ENABLED",
		"allowedWorkOrderRefs": ["wo-cross-realm"],
	})
	violations := data.jumo.corpus.deny with input as [wo, secret]
	has_rule(violations, "corpus.secret.work-order-realm")
}

test_secret_work_order_binding_not_enabled_fails if {
	wo := work_order_document("wo-declared-lifecycle", "home.jumo.dev", {"secretBindingRefs": ["secret-suspended"]})
	secret := document(".jumo/secrets/suspended.yml", "SecretBinding", "secret-suspended", {
		"ownerRealm": "home",
		"lifecycle": "SUSPENDED",
		"allowedWorkOrderRefs": ["wo-declared-lifecycle"],
	})
	violations := data.jumo.corpus.deny with input as [wo, secret]
	has_rule(violations, "corpus.secret.work-order-lifecycle")
}

test_secret_work_order_unresolved_refs_fail if {
	wo := work_order_document("wo-dangling", "home.jumo.dev", {"secretBindingRefs": ["missing-secret"]})
	secret := document(".jumo/secrets/dangling-wo-ref.yml", "SecretBinding", "secret-dangling-wo-ref", {
		"ownerRealm": "home",
		"lifecycle": "ENABLED",
		"allowedWorkOrderRefs": ["missing-wo"],
	})
	violations := data.jumo.corpus.deny with input as [wo, secret]
	has_rule(violations, "corpus.secret.work-order-kind")
	has_rule(violations, "corpus.secret.binding-work-order-kind")
}
