package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

same_owner_realm(left, right) if {
	corpus.owner_realm(left) == corpus.owner_realm(right)
}

external_effect_capability(name) if {
	capability := corpus.capability_by_name(name)
	capability.producesExternalEffect == true
}

connector_appraisal(bundle_id) := document if {
	some document in corpus.documents
	document.kind == "ConnectorAppraisal"
	corpus.ref_id(object.get(corpus.spec(document), "mcpBundleRef", object.get(corpus.spec(document), "bundleRef", ""))) == bundle_id
}

remote_appraisal(service_id) := document if {
	some document in corpus.documents
	document.kind == "RemoteMcpAppraisal"
	corpus.ref_id(object.get(corpus.spec(document), "remoteMcpServiceRef", object.get(corpus.spec(document), "serviceRef", ""))) == service_id
}

bundle_operation(bundle, operation_id) := operation if {
	some operation in object.get(
		object.get(corpus.spec(bundle), "semanticProfile", {}),
		"operations",
		[],
	)
	operation.id == operation_id
}

deny contains corpus.violation("corpus.connector.single-source", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	spec := corpus.spec(document)
	object.get(spec, "mcpBundleRef", object.get(spec, "bundleRef", null)) != null
	object.get(spec, "remoteMcpServiceRef", object.get(spec, "remoteServiceRef", null)) != null
	message := "ConnectorDefinition may reference a McpBundle or a RemoteMcpService, not both"
}

deny contains corpus.violation("corpus.connector.remote-resolves", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	remote_ref := corpus.ref_id(object.get(corpus.spec(document), "remoteMcpServiceRef", object.get(corpus.spec(document), "remoteServiceRef", null)))
	remote_ref != null
	not remote_ref in corpus.ids_of_kind("RemoteMcpService")
	message := sprintf("spec.remoteMcpServiceRef: no RemoteMcpService declares id %q", [remote_ref])
}

deny contains corpus.violation("corpus.connector.remote-realm", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	remote_ref := corpus.ref_id(object.get(corpus.spec(document), "remoteMcpServiceRef", object.get(corpus.spec(document), "remoteServiceRef", null)))
	remote_ref != null
	remote := corpus.document_by_kind_id("RemoteMcpService", remote_ref)
	not same_owner_realm(document, remote)
	message := "ConnectorDefinition and RemoteMcpService must belong to the same Realm"
}

deny contains corpus.violation("corpus.connector.bundle-resolves", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	bundle_ref := corpus.ref_id(object.get(corpus.spec(document), "mcpBundleRef", object.get(corpus.spec(document), "bundleRef", null)))
	bundle_ref != null
	not bundle_ref in corpus.ids_of_kind("McpBundle")
	message := sprintf("spec.mcpBundleRef: no McpBundle declares id %q", [bundle_ref])
}

deny contains corpus.violation("corpus.connector.bundle-realm", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	bundle_ref := corpus.ref_id(object.get(corpus.spec(document), "mcpBundleRef", object.get(corpus.spec(document), "bundleRef", null)))
	bundle_ref != null
	bundle := corpus.document_by_kind_id("McpBundle", bundle_ref)
	not same_owner_realm(document, bundle)
	message := "ConnectorDefinition and McpBundle must belong to the same Realm"
}

deny contains corpus.violation("corpus.connector.bundle-operation", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	bundle_ref := corpus.ref_id(object.get(corpus.spec(document), "mcpBundleRef", object.get(corpus.spec(document), "bundleRef", null)))
	bundle_ref != null
	bundle := corpus.document_by_kind_id("McpBundle", bundle_ref)
	some index, operation in object.get(corpus.spec(document), "operations", [])
	operation_ref := object.get(operation, "bundleOperationRef", null)
	operation_ref != null
	not bundle_operation(bundle, operation_ref)
	message := sprintf(
		"spec.operations[%d].bundleOperationRef: McpBundle %q has no semantic operation %q",
		[index, bundle_ref, operation_ref],
	)
}

deny contains corpus.violation("corpus.connector.bundle-capability", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	bundle_ref := corpus.ref_id(object.get(corpus.spec(document), "mcpBundleRef", object.get(corpus.spec(document), "bundleRef", null)))
	bundle_ref != null
	bundle := corpus.document_by_kind_id("McpBundle", bundle_ref)
	some index, operation in object.get(corpus.spec(document), "operations", [])
	operation_ref := object.get(operation, "bundleOperationRef", null)
	operation_ref != null
	semantic := bundle_operation(bundle, operation_ref)
	operation.capabilityRef != semantic.capabilityRef
	message := sprintf("spec.operations[%d].capabilityRef weakens McpBundle %q", [index, bundle_ref])
}

deny contains corpus.violation("corpus.connector.bundle-idempotency", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	bundle_ref := corpus.ref_id(object.get(corpus.spec(document), "mcpBundleRef", object.get(corpus.spec(document), "bundleRef", null)))
	bundle_ref != null
	bundle := corpus.document_by_kind_id("McpBundle", bundle_ref)
	some index, operation in object.get(corpus.spec(document), "operations", [])
	operation_ref := object.get(operation, "bundleOperationRef", null)
	operation_ref != null
	semantic := bundle_operation(bundle, operation_ref)
	semantic.idempotency == "REQUIRED"
	object.get(operation, "idempotency", "") != "REQUIRED"
	message := sprintf("spec.operations[%d].idempotency weakens the bundle semantic profile", [index])
}

deny contains corpus.violation("corpus.connector.bundle-reconciliation", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	bundle_ref := corpus.ref_id(object.get(corpus.spec(document), "mcpBundleRef", object.get(corpus.spec(document), "bundleRef", null)))
	bundle_ref != null
	bundle := corpus.document_by_kind_id("McpBundle", bundle_ref)
	some index, operation in object.get(corpus.spec(document), "operations", [])
	operation_ref := object.get(operation, "bundleOperationRef", null)
	operation_ref != null
	semantic := bundle_operation(bundle, operation_ref)
	semantic.reconciliation == "REQUIRED"
	object.get(operation, "reconciliation", "") != "REQUIRED"
	message := sprintf("spec.operations[%d].reconciliation weakens the bundle semantic profile", [index])
}

connector_secret_references contains {
	"document": document,
	"index": index,
	"operation": operation,
	"binding_id": corpus.ref_id(binding_ref),
} if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	some index, operation in object.get(corpus.spec(document), "operations", [])
	some binding_ref in object.get(operation, "secretBindingRefs", [])
}

deny contains corpus.violation("corpus.connector.secret-resolves", document, message) if {
	some reference in connector_secret_references
	document := reference.document
	index := reference.index
	binding_id := reference.binding_id
	not binding_id in corpus.ids_of_kind("SecretBinding")
	message := sprintf("spec.operations[%d].secretBindingRefs: no SecretBinding declares id %q", [index, binding_id])
}

deny contains corpus.violation("corpus.connector.secret-realm", document, message) if {
	some reference in connector_secret_references
	document := reference.document
	index := reference.index
	binding_id := reference.binding_id
	binding := corpus.document_by_kind_id("SecretBinding", binding_id)
	not same_owner_realm(document, binding)
	message := sprintf("spec.operations[%d].secretBindingRefs: SecretBinding %q belongs to another Realm", [index, binding_id])
}

deny contains corpus.violation("corpus.connector.secret-allowlist", document, message) if {
	some reference in connector_secret_references
	document := reference.document
	index := reference.index
	binding_id := reference.binding_id
	binding := corpus.document_by_kind_id("SecretBinding", binding_id)
	allowed := [corpus.ref_id(c) | some c in object.get(corpus.spec(binding), "allowedConnectorDefinitionRefs", object.get(corpus.spec(binding), "allowedConnectorRefs", []))]
	count(allowed) > 0
	not corpus.id(document) in allowed
	message := sprintf("spec.operations[%d]: SecretBinding %q does not allow connector %q", [index, binding_id, corpus.id(document)])
}

deny contains corpus.violation("corpus.connector.secret-operation", document, message) if {
	some reference in connector_secret_references
	document := reference.document
	index := reference.index
	operation := reference.operation
	binding_id := reference.binding_id
	binding := corpus.document_by_kind_id("SecretBinding", binding_id)
	allowed := object.get(corpus.spec(binding), "allowedOperationRefs", [])
	count(allowed) > 0
	not operation.id in allowed
	message := sprintf("spec.operations[%d]: SecretBinding %q does not allow operation %q", [index, binding_id, operation.id])
}

deny contains corpus.violation("corpus.connector.effect-semantics", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	some index, operation in object.get(corpus.spec(document), "operations", [])
	operation.idempotency == "REQUIRED"
	not external_effect_capability(operation.capabilityRef)
	message := sprintf("spec.operations[%d].idempotency: only external effects require idempotency", [index])
}

deny contains corpus.violation("corpus.connector.effect-semantics", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	some index, operation in object.get(corpus.spec(document), "operations", [])
	operation.reconciliation == "REQUIRED"
	not external_effect_capability(operation.capabilityRef)
	message := sprintf("spec.operations[%d].reconciliation: only external effects require reconciliation", [index])
}

deny contains corpus.violation("corpus.bundle.execution-cell-only-placement", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	placement := object.get(corpus.spec(document).runtime, "placement", "")
	placement != "EXECUTION_CELL"
	message := sprintf("spec.runtime.placement %q: v2 McpBundleRuntime admits only EXECUTION_CELL", [placement])
}

deny contains corpus.violation("corpus.bundle.upstream-kind-required", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	object.get(corpus.spec(document).runtime, "upstreamKind", "") != "OCI_STDIO"
	message := "spec.runtime.upstreamKind: v2 McpBundleRuntime's single upstream branch must be OCI_STDIO"
}

deny contains corpus.violation("corpus.bundle.quarantine", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	spec := corpus.spec(document)
	spec.lifecycle == "ENABLED"
	spec.trustClass == "CLIENT_QUARANTINED"
	message := "CLIENT_QUARANTINED bundles may not be ENABLED"
}

reviewed_lifecycle(lifecycle) if {
	lifecycle in {"REVIEWED", "ENABLED"}
}

deny contains corpus.violation("corpus.bundle.appraisal-required", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	reviewed_lifecycle(corpus.spec(document).lifecycle)
	not connector_appraisal(corpus.id(document))
	message := sprintf("lifecycle requires a ConnectorAppraisal of bundle %q", [corpus.id(document)])
}

deny contains corpus.violation("corpus.bundle.appraisal-verdict", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	reviewed_lifecycle(corpus.spec(document).lifecycle)
	appraisal := connector_appraisal(corpus.id(document))
	corpus.spec(appraisal).verdict == "REFUSED"
	message := sprintf("ConnectorAppraisal of %q returned REFUSED", [corpus.id(document)])
}

deny contains corpus.violation("corpus.bundle.appraisal-digest", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	reviewed_lifecycle(corpus.spec(document).lifecycle)
	appraisal := connector_appraisal(corpus.id(document))
	corpus.spec(appraisal).appraisedDigest != corpus.spec(document).artifact.digest
	message := sprintf("ConnectorAppraisal of %q appraised a different digest", [corpus.id(document)])
}

deny contains corpus.violation("corpus.bundle.operation-unique", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	operations := object.get(object.get(corpus.spec(document), "semanticProfile", {}), "operations", [])
	ids := [operation.id | some operation in operations]
	count(ids) != count({identifier | some identifier in ids})
	message := "spec.semanticProfile.operations: operation ids must be unique"
}

deny contains corpus.violation("corpus.bundle.external-capability", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	some index, operation in object.get(object.get(corpus.spec(document), "semanticProfile", {}), "operations", [])
	operation.effect == "EXTERNAL_EFFECT"
	not external_effect_capability(operation.capabilityRef)
	message := sprintf("spec.semanticProfile.operations[%d].effect maps to a non-effect capability", [index])
}

deny contains corpus.violation("corpus.bundle.schema-pins-required", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	some index, operation in object.get(object.get(corpus.spec(document), "semanticProfile", {}), "operations", [])
	object.get(operation, "inputSchemaRef", "") == ""
	message := sprintf("spec.semanticProfile.operations[%d]: MCP bundle operations require inputSchemaRef (ADR-0050 schema-pin discussion)", [index])
}

deny contains corpus.violation("corpus.bundle.schema-pins-required", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	some index, operation in object.get(object.get(corpus.spec(document), "semanticProfile", {}), "operations", [])
	object.get(operation, "outputSchemaRef", "") == ""
	message := sprintf("spec.semanticProfile.operations[%d]: MCP bundle operations require outputSchemaRef (ADR-0050 schema-pin discussion)", [index])
}

deny contains corpus.violation("corpus.connector.schema-pins-required", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	corpus.spec(document).transport == "MCP"
	some index, operation in object.get(corpus.spec(document), "operations", [])
	object.get(operation, "inputSchemaRef", "") == ""
	message := sprintf("spec.operations[%d]: an MCP-transport connector requires inputSchemaRef (ADR-0050 schema-pin discussion; FORGE/HTTP/LOCAL_PROCESS/CHANNEL connectors are exempt)", [index])
}

deny contains corpus.violation("corpus.connector.schema-pins-required", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	corpus.spec(document).transport == "MCP"
	some index, operation in object.get(corpus.spec(document), "operations", [])
	object.get(operation, "outputSchemaRef", "") == ""
	message := sprintf("spec.operations[%d]: an MCP-transport connector requires outputSchemaRef (ADR-0050 schema-pin discussion; FORGE/HTTP/LOCAL_PROCESS/CHANNEL connectors are exempt)", [index])
}

deny contains corpus.violation("corpus.bundle.external-idempotency", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	some index, operation in object.get(object.get(corpus.spec(document), "semanticProfile", {}), "operations", [])
	operation.effect == "EXTERNAL_EFFECT"
	object.get(operation, "idempotency", "") != "REQUIRED"
	message := sprintf("spec.semanticProfile.operations[%d]: external effects require idempotency", [index])
}

deny contains corpus.violation("corpus.bundle.external-reconciliation", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	some index, operation in object.get(object.get(corpus.spec(document), "semanticProfile", {}), "operations", [])
	operation.effect == "EXTERNAL_EFFECT"
	object.get(operation, "reconciliation", "") != "REQUIRED"
	message := sprintf("spec.semanticProfile.operations[%d]: external effects require reconciliation", [index])
}

deny contains corpus.violation("corpus.bundle.system-effect-recovery", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	corpus.spec(document).lifecycle == "ENABLED"
	some index, operation in object.get(object.get(corpus.spec(document), "semanticProfile", {}), "operations", [])
	operation.effect == "SYSTEM_EFFECT"
	object.get(operation, "recoveryPlanDigest", "") == ""
	message := sprintf("spec.semanticProfile.operations[%d]: an ENABLED SYSTEM_EFFECT operation requires recoveryPlanDigest (ADR-0056 decision 3)", [index])
}

deny contains corpus.violation("corpus.bundle.system-effect-kill-switch", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	corpus.spec(document).lifecycle == "ENABLED"
	some index, operation in object.get(object.get(corpus.spec(document), "semanticProfile", {}), "operations", [])
	operation.effect == "SYSTEM_EFFECT"
	object.get(operation, "killSwitchRef", "") == ""
	message := sprintf("spec.semanticProfile.operations[%d]: an ENABLED SYSTEM_EFFECT operation requires killSwitchRef (ADR-0056 decision 4)", [index])
}

exposed_tools(appraisal) := {item.upstreamToolName |
	some item in object.get(corpus.spec(appraisal), "upstreamInventory", [])
	item.disposition == "EXPOSED"
}

deny contains corpus.violation("corpus.bundle.appraisal-exposure", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	appraisal := connector_appraisal(corpus.id(document))
	some index, operation in object.get(object.get(corpus.spec(document), "semanticProfile", {}), "operations", [])
	not operation.upstreamToolName in exposed_tools(appraisal)
	message := sprintf("spec.semanticProfile.operations[%d]: upstream tool is not exposed by appraisal", [index])
}

deny contains corpus.violation("corpus.remote.oauth-secret", document, message) if {
	some document in corpus.documents
	document.kind == "RemoteMcpService"
	secret_ref := corpus.ref_id(object.get(corpus.spec(document), "oauthSecretBindingRef", null))
	secret_ref != null
	not secret_ref in corpus.ids_of_kind("SecretBinding")
	message := sprintf("spec.oauthSecretBindingRef: no SecretBinding declares id %q", [secret_ref])
}

deny contains corpus.violation("corpus.remote.oauth-secret-realm", document, message) if {
	some document in corpus.documents
	document.kind == "RemoteMcpService"
	secret_ref := corpus.ref_id(object.get(corpus.spec(document), "oauthSecretBindingRef", null))
	secret_ref != null
	secret := corpus.document_by_kind_id("SecretBinding", secret_ref)
	not same_owner_realm(document, secret)
	message := "spec.oauthSecretBindingRef: SecretBinding belongs to another Realm"
}

deny contains corpus.violation("corpus.remote.appraisal-required", document, message) if {
	some document in corpus.documents
	document.kind == "RemoteMcpService"
	corpus.spec(document).lifecycle == "ENABLED"
	appraisal := remote_appraisal(corpus.id(document))
	corpus.spec(appraisal).verdict != "ACCEPTED"
	message := "ENABLED RemoteMcpService requires an accepted appraisal"
}

deny contains corpus.violation("corpus.remote.appraisal-required", document, message) if {
	some document in corpus.documents
	document.kind == "RemoteMcpService"
	corpus.spec(document).lifecycle == "ENABLED"
	not remote_appraisal(corpus.id(document))
	message := "ENABLED RemoteMcpService requires an accepted appraisal"
}

deny contains corpus.violation("corpus.appraisal.remote-service", document, message) if {
	some document in corpus.documents
	document.kind == "RemoteMcpAppraisal"
	service_ref := corpus.ref_id(object.get(corpus.spec(document), "remoteMcpServiceRef", object.get(corpus.spec(document), "serviceRef", null)))
	not service_ref in corpus.ids_of_kind("RemoteMcpService")
	message := sprintf("spec.remoteMcpServiceRef: no RemoteMcpService declares id %q", [service_ref])
}

deny contains corpus.violation("corpus.appraisal.remote-realm", document, message) if {
	some document in corpus.documents
	document.kind == "RemoteMcpAppraisal"
	service_ref := corpus.ref_id(object.get(corpus.spec(document), "remoteMcpServiceRef", object.get(corpus.spec(document), "serviceRef", null)))
	service := corpus.document_by_kind_id("RemoteMcpService", service_ref)
	not same_owner_realm(document, service)
	message := "spec.remoteMcpServiceRef: RemoteMcpService belongs to another Realm"
}

deny contains corpus.violation("corpus.appraisal.validity-order", document, message) if {
	some document in corpus.documents
	document.kind == "RemoteMcpAppraisal"
	spec := corpus.spec(document)
	valid_until := object.get(spec, "validUntil", null)
	valid_until != null
	observed_at := object.get(spec, "observedAt", object.get(spec, "appraisedAt", null))
	observed_at != null
	time.parse_rfc3339_ns(sprintf("%sT00:00:00Z", [substring(valid_until, 0, 10)])) <= time.parse_rfc3339_ns(sprintf("%sT00:00:00Z", [substring(observed_at, 0, 10)]))
	message := "spec.validUntil must remain after the appraisal observation"
}

deny contains corpus.violation("corpus.appraisal.bundle", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorAppraisal"
	bundle_ref := corpus.ref_id(object.get(corpus.spec(document), "mcpBundleRef", object.get(corpus.spec(document), "bundleRef", null)))
	not bundle_ref in corpus.ids_of_kind("McpBundle")
	message := sprintf("spec.mcpBundleRef: no McpBundle declares id %q", [bundle_ref])
}

deny contains corpus.violation("corpus.appraisal.bundle-realm", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorAppraisal"
	bundle_ref := corpus.ref_id(object.get(corpus.spec(document), "mcpBundleRef", object.get(corpus.spec(document), "bundleRef", null)))
	bundle := corpus.document_by_kind_id("McpBundle", bundle_ref)
	not same_owner_realm(document, bundle)
	message := "ConnectorAppraisal and McpBundle must belong to the same Realm"
}

is_local_dev_non_promotable(document) if {
	spec := corpus.spec(document)
	spec.environment == "LOCAL_DEV"
	spec.promotable == false
}

is_local_dev_non_promotable(document) if {
	spec := corpus.spec(document)
	realm_id := corpus.owner_realm(document)
	realm := corpus.document_by_kind_id("RealmTemplate", realm_id)
	corpus.spec(realm).environment == "LOCAL_DEV"
	spec.promotable == false
}

deny contains corpus.violation("corpus.appraisal.independent", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorAppraisal"
	spec := corpus.spec(document)
	appraised_by := corpus.ref_id(object.get(spec, "appraisedByRoleDefinitionRef", object.get(spec, "appraisedBy", null)))
	verified_by := corpus.ref_id(object.get(spec, "verifiedByRoleDefinitionRef", object.get(spec, "verifiedBy", null)))
	appraised_by == verified_by
	not is_local_dev_non_promotable(document)
	message := sprintf("spec.verifiedByRoleDefinitionRef: %q also performed this appraisal (mono-operator only allowed in LOCAL_DEV with promotable: false)", [verified_by])
}

deny contains corpus.violation("corpus.appraisal.local-dev-promotion-blocked", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorAppraisal"
	spec := corpus.spec(document)
	appraised_by := corpus.ref_id(object.get(spec, "appraisedByRoleDefinitionRef", object.get(spec, "appraisedBy", null)))
	verified_by := corpus.ref_id(object.get(spec, "verifiedByRoleDefinitionRef", object.get(spec, "verifiedBy", null)))
	appraised_by == verified_by
	spec.promotable == true
	message := "mono-operator appraisal cannot be marked promotable"
}

deny contains corpus.violation("corpus.appraisal.operator-reference", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorAppraisal"
	some field in {"appraisedByRoleDefinitionRef", "verifiedByRoleDefinitionRef", "appraisedBy", "verifiedBy"}
	ref := object.get(corpus.spec(document), field, null)
	ref != null
	identifier := corpus.ref_id(ref)
	not identifier in corpus.ids_of_kind("RoleDefinition")
	message := sprintf("spec.%s: no RoleDefinition declares id %q", [field, identifier])
}

deny contains corpus.violation("corpus.appraisal.operator-realm", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorAppraisal"
	some field in {"appraisedByRoleDefinitionRef", "verifiedByRoleDefinitionRef", "appraisedBy", "verifiedBy"}
	ref := object.get(corpus.spec(document), field, null)
	ref != null
	identifier := corpus.ref_id(ref)
	operator := corpus.document_by_kind_id("RoleDefinition", identifier)
	not same_owner_realm(document, operator)
	message := sprintf("spec.%s: operator belongs to another Realm", [field])
}

deny contains corpus.violation("corpus.appraisal.inventory-unique", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorAppraisal"
	inventory := object.get(corpus.spec(document), "upstreamInventory", [])
	names := [item.upstreamToolName | some item in inventory]
	count(names) != count({name | some name in names})
	message := "spec.upstreamInventory: upstream tool names must be unique"
}

allowed_endpoint_operations(binding) := {operation.id |
	some bundle_ref in object.get(corpus.spec(binding), "allowedMcpBundleRefs", object.get(corpus.spec(binding), "allowedBundleRefs", []))
	bundle := corpus.document_by_kind_id("McpBundle", corpus.ref_id(bundle_ref))
	some operation in object.get(object.get(corpus.spec(bundle), "semanticProfile", {}), "operations", [])
} | {operation.id |
	some connector_ref in object.get(corpus.spec(binding), "allowedConnectorDefinitionRefs", object.get(corpus.spec(binding), "allowedConnectorRefs", []))
	connector := corpus.document_by_kind_id("ConnectorDefinition", corpus.ref_id(connector_ref))
	some operation in object.get(corpus.spec(connector), "operations", [])
}

secret_references contains {
	"document": document,
	"field": field,
	"target_kind": target_kind,
	"identifier": corpus.ref_id(identifier),
} if {
	some document in corpus.documents
	document.kind == "SecretBinding"
	some field in {"allowedMcpBundleRefs", "allowedBundleRefs", "allowedConnectorDefinitionRefs", "allowedConnectorRefs", "allowedRemoteMcpServiceRefs", "allowedRemoteServiceRefs"}
	some identifier in object.get(corpus.spec(document), field, [])
	target_kind := {
		"allowedMcpBundleRefs": "McpBundle",
		"allowedBundleRefs": "McpBundle",
		"allowedConnectorDefinitionRefs": "ConnectorDefinition",
		"allowedConnectorRefs": "ConnectorDefinition",
		"allowedRemoteMcpServiceRefs": "RemoteMcpService",
		"allowedRemoteServiceRefs": "RemoteMcpService",
	}[field]
}

deny contains corpus.violation("corpus.secret.reference", document, message) if {
	some reference in secret_references
	document := reference.document
	field := reference.field
	target_kind := reference.target_kind
	identifier := reference.identifier
	not identifier in corpus.ids_of_kind(target_kind)
	message := sprintf("spec.%s: no %s declares id %q", [field, target_kind, identifier])
}

deny contains corpus.violation("corpus.secret.reference-realm", document, message) if {
	some reference in secret_references
	document := reference.document
	field := reference.field
	target_kind := reference.target_kind
	identifier := reference.identifier
	target := corpus.document_by_kind_id(target_kind, identifier)
	not same_owner_realm(document, target)
	message := sprintf("spec.%s: %s %q belongs to another Realm", [field, target_kind, identifier])
}

deny contains corpus.violation("corpus.secret.operation", document, message) if {
	some document in corpus.documents
	document.kind == "SecretBinding"
	some operation_ref in object.get(corpus.spec(document), "allowedOperationRefs", [])
	not operation_ref in allowed_endpoint_operations(document)
	message := sprintf("spec.allowedOperationRefs: no allowed endpoint declares operation %q", [operation_ref])
}

# openbao-delegated-lease AC2: WorkOrder.secretBindingRefs <-> SecretBinding.allowedWorkOrderRefs
# reciprocity, same-Realm and lifecycle-enabled. WorkOrder carries no ownerRealm attribute (unlike
# SecretBinding), so its Realm is the first label of its Realm-owned namespace (e.g.
# "home.jumo.dev" -> "home"), the same convention jumo-gof's realm-templates/*.yml declares.
work_order_realm(document) := split(corpus.namespace(document), ".")[0]

work_order_secret_binding_refs contains {"document": document, "identifier": corpus.ref_id(ref)} if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	some ref in object.get(corpus.spec(document), "secretBindingRefs", [])
}

deny contains corpus.violation("corpus.secret.work-order-kind", document, message) if {
	some entry in work_order_secret_binding_refs
	document := entry.document
	identifier := entry.identifier
	not identifier in corpus.ids_of_kind("SecretBinding")
	message := sprintf("spec.secretBindingRefs: no SecretBinding declares id %q", [identifier])
}

deny contains corpus.violation("corpus.secret.work-order-realm", document, message) if {
	some entry in work_order_secret_binding_refs
	document := entry.document
	identifier := entry.identifier
	identifier in corpus.ids_of_kind("SecretBinding")
	binding := corpus.document_by_kind_id("SecretBinding", identifier)
	work_order_realm(document) != corpus.owner_realm(binding)
	message := sprintf("spec.secretBindingRefs: SecretBinding %q belongs to another Realm", [identifier])
}

deny contains corpus.violation("corpus.secret.work-order-lifecycle", document, message) if {
	some entry in work_order_secret_binding_refs
	document := entry.document
	identifier := entry.identifier
	identifier in corpus.ids_of_kind("SecretBinding")
	binding := corpus.document_by_kind_id("SecretBinding", identifier)
	object.get(corpus.spec(binding), "lifecycle", "") != "ENABLED"
	message := sprintf("spec.secretBindingRefs: SecretBinding %q is not ENABLED", [identifier])
}

deny contains corpus.violation("corpus.secret.work-order-reciprocity", document, message) if {
	some entry in work_order_secret_binding_refs
	document := entry.document
	identifier := entry.identifier
	identifier in corpus.ids_of_kind("SecretBinding")
	binding := corpus.document_by_kind_id("SecretBinding", identifier)
	allowed := {corpus.ref_id(ref) | some ref in object.get(corpus.spec(binding), "allowedWorkOrderRefs", [])}
	not corpus.id(document) in allowed
	message := sprintf("spec.secretBindingRefs: SecretBinding %q does not reciprocate in allowedWorkOrderRefs", [identifier])
}

deny contains corpus.violation("corpus.secret.binding-work-order-kind", document, message) if {
	some document in corpus.documents
	document.kind == "SecretBinding"
	some ref in object.get(corpus.spec(document), "allowedWorkOrderRefs", [])
	wo_id := corpus.ref_id(ref)
	not wo_id in corpus.ids_of_kind("WorkOrder")
	message := sprintf("spec.allowedWorkOrderRefs: no WorkOrder declares id %q", [wo_id])
}

deny contains corpus.violation("corpus.secret.binding-work-order-reciprocity", document, message) if {
	some document in corpus.documents
	document.kind == "SecretBinding"
	some ref in object.get(corpus.spec(document), "allowedWorkOrderRefs", [])
	wo_id := corpus.ref_id(ref)
	wo_id in corpus.ids_of_kind("WorkOrder")
	wo := corpus.document_by_kind_id("WorkOrder", wo_id)
	allowed := {corpus.ref_id(ref2) | some ref2 in object.get(corpus.spec(wo), "secretBindingRefs", [])}
	not corpus.id(document) in allowed
	message := sprintf("spec.allowedWorkOrderRefs: WorkOrder %q does not reciprocate in secretBindingRefs", [wo_id])
}

deny contains corpus.violation("corpus.execution-cell.connector", document, message) if {
	some document in corpus.documents
	document.kind == "ExecutionCell"
	some connector_ref in object.get(corpus.spec(document), "connectorDefinitionRefs", object.get(corpus.spec(document), "connectorRefs", []))
	cid := corpus.ref_id(connector_ref)
	not cid in corpus.ids_of_kind("ConnectorDefinition")
	message := sprintf("spec.connectorDefinitionRefs: no ConnectorDefinition declares id %q", [cid])
}

deny contains corpus.violation("corpus.execution-cell.connector-realm", document, message) if {
	some document in corpus.documents
	document.kind == "ExecutionCell"
	some connector_ref in object.get(corpus.spec(document), "connectorDefinitionRefs", object.get(corpus.spec(document), "connectorRefs", []))
	cid := corpus.ref_id(connector_ref)
	connector := corpus.document_by_kind_id("ConnectorDefinition", cid)
	not same_owner_realm(document, connector)
	message := sprintf("spec.connectorDefinitionRefs: ConnectorDefinition %q belongs to another Realm", [cid])
}

deny contains corpus.violation("corpus.execution-cell.connector-placement", document, message) if {
	some document in corpus.documents
	document.kind == "ExecutionCell"
	some connector_ref in object.get(corpus.spec(document), "connectorDefinitionRefs", object.get(corpus.spec(document), "connectorRefs", []))
	cid := corpus.ref_id(connector_ref)
	connector := corpus.document_by_kind_id("ConnectorDefinition", cid)
	corpus.spec(connector).placement != "EXECUTION_CELL"
	message := sprintf("spec.connectorDefinitionRefs: ConnectorDefinition %q is not placed in an EXECUTION_CELL", [cid])
}

deny contains corpus.violation("corpus.worker-profile.benchmark", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerRequirementProfile"
	some benchmark_ref in object.get(object.get(corpus.spec(document), "quality", {}), "goldenTaskSetRefs", object.get(object.get(corpus.spec(document), "quality", {}), "benchmarkRefs", []))
	benchmark := corpus.ref_id(benchmark_ref)
	not benchmark in corpus.ids_of_kind("GoldenTaskSet")
	message := sprintf("spec.quality.goldenTaskSetRefs: no GoldenTaskSet declares id %q", [benchmark])
}

deny contains corpus.violation("corpus.worker-profile.benchmark-target", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerRequirementProfile"
	some benchmark_ref in object.get(object.get(corpus.spec(document), "quality", {}), "goldenTaskSetRefs", object.get(object.get(corpus.spec(document), "quality", {}), "benchmarkRefs", []))
	benchmark := corpus.ref_id(benchmark_ref)
	task_set := corpus.document_by_kind_id("GoldenTaskSet", benchmark)
	target_profile := corpus.ref_id(object.get(corpus.spec(task_set), "workerRequirementProfileRef", object.get(corpus.spec(task_set), "requirementProfileRef", "")))
	target_profile != corpus.id(document)
	message := sprintf("GoldenTaskSet %q targets another requirement profile", [benchmark])
}

practice_references contains {
	"document": document,
	"field": field,
	"target_kind": target_kind,
	"identifier": corpus.ref_id(identifier),
} if {
	some document in corpus.documents
	document.kind == "Practice"
	some field in {"promptTemplateRef", "promptRef", "processSpecRef", "workflowRef"}
	identifier := object.get(object.get(corpus.spec(document), "invokes", {}), field, null)
	identifier != null
	target_kind := {
		"promptTemplateRef": "PromptTemplate",
		"promptRef": "PromptTemplate",
		"processSpecRef": "ProcessSpec",
		"workflowRef": "ProcessSpec",
	}[field]
}

practice_references contains {
	"document": document,
	"field": "resourceBudgetRef",
	"target_kind": "ResourceBudget",
	"identifier": corpus.ref_id(identifier),
} if {
	some document in corpus.documents
	document.kind == "Practice"
	identifier := object.get(corpus.spec(document), "resourceBudgetRef", object.get(corpus.spec(document), "budgetRef", null))
	identifier != null
}

deny contains corpus.violation("corpus.practice.reference", document, message) if {
	some reference in practice_references
	document := reference.document
	field := reference.field
	target_kind := reference.target_kind
	identifier := reference.identifier
	not identifier in corpus.ids_of_kind(target_kind)
	message := sprintf("spec.%s: no %s declares id %q", [field, target_kind, identifier])
}

deny contains corpus.violation("corpus.registry-binding.source-resolves", document, message) if {
	some document in corpus.documents
	document.kind == "McpRegistrySourceBinding"
	source_ref := corpus.ref_id(object.get(corpus.spec(document), "mcpRegistrySourceRef", null))
	source_ref != null
	not source_ref in corpus.ids_of_kind("McpRegistrySource")
	message := sprintf("spec.mcpRegistrySourceRef: no McpRegistrySource declares id %q", [source_ref])
}

deny contains corpus.violation("corpus.registry-binding.machine-resolves", document, message) if {
	some document in corpus.documents
	document.kind == "McpRegistrySourceBinding"
	machine_ref := corpus.ref_id(object.get(corpus.spec(document), "executionMachineRef", null))
	machine_ref != null
	not machine_ref in corpus.ids_of_kind("ExecutionMachine")
	message := sprintf("spec.executionMachineRef: no ExecutionMachine declares id %q", [machine_ref])
}

deny contains corpus.violation("corpus.registry-binding.machine-realm", document, message) if {
	some document in corpus.documents
	document.kind == "McpRegistrySourceBinding"
	machine_ref := corpus.ref_id(object.get(corpus.spec(document), "executionMachineRef", null))
	machine_ref != null
	machine := corpus.document_by_kind_id("ExecutionMachine", machine_ref)
	not same_owner_realm(document, machine)
	message := "McpRegistrySourceBinding and its ExecutionMachine must belong to the same Realm -- cross-Realm machine use is refused"
}

deny contains corpus.violation("corpus.certification.platform-only", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorPackageCertification"
	corpus.namespace(document) != "dev.jumo.core"
	message := sprintf(
		"metadata.namespace %q: ConnectorPackageCertification is Platform-only and must use namespace dev.jumo.core, not a Realm-owned namespace",
		[corpus.namespace(document)],
	)
}

# ConnectorPackage is Platform-only too (AC1, mcp-platform-package-certification), but unlike the
# certification rule above it must not require the exact dev.jumo.core namespace: the live
# package (google) already uses dev.jumo.connectors, a second legitimate Platform namespace for
# reusable package manifests (verified against the real composed corpus, not a fixture -- the
# only other namespaces are dev.jumo.core and home.jumo.dev). The real Platform/Realm boundary
# this corpus enforces is "not home.jumo.dev", the one
# private Realm namespace (composition.rego's sealed-no-private-reference rule reads it the same
# way) -- so that is the predicate here, deliberately not mirrored onto the certification rule
# above, which stays as shipped.
deny contains corpus.violation("corpus.package.platform-only", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorPackage"
	corpus.namespace(document) == "home.jumo.dev"
	message := sprintf(
		"metadata.namespace %q: ConnectorPackage is Platform-only and must not use the private home.jumo.dev Realm namespace",
		[corpus.namespace(document)],
	)
}

# AC1's second half: reject a certification whose digests differ from the package it certifies.
# One field is spelled differently (imageDigest <-> runtimeImageDigest); the other six are named
# the same on both sides. signatureDigest/licenceDigest/testDigest are optional on both specs --
# no local package supplies them yet (no LICENSE file, no cosign/sigstore signing, no committed
# test report), so the comparison is vacuously true (package_digest == null) until one exists.
package_certified_digest_fields := {
	"packageDigest": "packageDigest",
	"imageDigest": "runtimeImageDigest",
	"sbomDigest": "sbomDigest",
	"provenanceDigest": "provenanceDigest",
	"signatureDigest": "signatureDigest",
	"licenceDigest": "licenceDigest",
	"testDigest": "testDigest",
}

deny contains corpus.violation("corpus.certification.digest-consistency", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorPackageCertification"
	package_id := corpus.ref_id(corpus.spec(document).connectorPackageRef)
	certified_package := corpus.document_by_kind_id("ConnectorPackage", package_id)
	some cert_field, package_field in package_certified_digest_fields
	cert_digest := corpus.spec(document)[cert_field]
	package_digest := object.get(corpus.spec(certified_package), package_field, null)
	package_digest != null
	cert_digest != package_digest
	message := sprintf(
		"spec.%s %q does not match ConnectorPackage %q spec.%s %q",
		[cert_field, cert_digest, package_id, package_field, package_digest],
	)
}

# O-A (owner, 2026-08-25): supportedTransportDigests was required with cardinality 1 and a 64-hex
# pattern while nothing said what it was a digest of, so no Core certification could be authored
# without inventing a Platform contract. It pins one McpServerDescriptor per entry from the
# certified package's supportedTransports -- sha256: followed by the SHA-256 of the descriptor's
# canonical JSON, which scripts/generate/compute-package-digests.py computes. Certifying a
# transport the package does not declare, or omitting one it does, is the thing this refuses:
# without it the field would be a number a certifier could assert about nothing.
package_transport_digests(package_spec) := {digest |
	some descriptor in object.get(package_spec, "supportedTransports", [])
	digest := sprintf("sha256:%s", [crypto.sha256(json.marshal(descriptor))])
}

deny contains corpus.violation("corpus.certification.transport-consistency", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorPackageCertification"
	package_id := corpus.ref_id(corpus.spec(document).connectorPackageRef)
	certified_package := corpus.document_by_kind_id("ConnectorPackage", package_id)
	expected := package_transport_digests(corpus.spec(certified_package))
	count(expected) > 0
	certified := {digest | some digest in object.get(corpus.spec(document), "supportedTransportDigests", [])}
	certified != expected
	message := sprintf(
		"spec.supportedTransportDigests %v does not pin ConnectorPackage %q spec.supportedTransports, whose descriptors digest to %v",
		[sort(certified), package_id, sort(expected)],
	)
}

deny contains corpus.violation("corpus.certification.package-resolves", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorPackageCertification"
	package_id := corpus.ref_id(corpus.spec(document).connectorPackageRef)
	not package_id in corpus.ids_of_kind("ConnectorPackage")
	message := sprintf("spec.connectorPackageRef: no ConnectorPackage declares id %q", [package_id])
}

# AC3: a Realm McpBundle that names a ConnectorPackage must reference an exactly certified one --
# references.rego already checks the package itself resolves; this checks it is certified. A
# bundle with no connectorPackageRef (e.g. github-read-only, which predates this mechanism) is
# unaffected -- only additive for a bundle that opts in.
certified_package_ids contains package_id if {
	some certification in corpus.documents
	certification.kind == "ConnectorPackageCertification"
	package_id := corpus.ref_id(corpus.spec(certification).connectorPackageRef)
}

deny contains corpus.violation("corpus.bundle.package-certified", document, message) if {
	some document in corpus.documents
	document.kind == "McpBundle"
	package_ref := object.get(corpus.spec(document), "connectorPackageRef", null)
	package_ref != null
	package_id := corpus.ref_id(package_ref)
	package_id in corpus.ids_of_kind("ConnectorPackage")
	not package_id in certified_package_ids
	message := sprintf(
		"spec.connectorPackageRef: ConnectorPackage %q has no ConnectorPackageCertification",
		[package_id],
	)
}
