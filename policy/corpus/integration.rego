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

# ADR-0063: ConnectorDefinition is reserved for non-MCP integrations.
deny contains corpus.violation("corpus.connector.mcp-retired", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	spec := corpus.spec(document)
	spec.transport == "MCP"
	message := "ConnectorDefinition cannot represent MCP; import an McpServerRecipe and declare a separate McpServerBinding"
}

deny contains corpus.violation("corpus.connector.mcp-retired", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	spec := corpus.spec(document)
	some field in {"mcpBundleRef", "remoteMcpServiceRef", "connectorPackageRef", "bundleRef", "remoteServiceRef"}
	object.get(spec, field, null) != null
	message := sprintf("spec.%s: package-era MCP executable references are refused", [field])
}

mcp_ref_id(value) := corpus.ref_id(value)

mcp_recipe_for(binding) := recipe if {
	recipe_id := mcp_ref_id(corpus.spec(binding).recipeRef)
	recipe := corpus.document_by_kind_id("McpServerRecipe", recipe_id)
}

mcp_appraisal_for(binding) := appraisal if {
	appraisal_id := mcp_ref_id(object.get(corpus.spec(binding), "appraisalRef", null))
	appraisal := corpus.document_by_kind_id("McpServerAppraisal", appraisal_id)
}

recipe_parameter_names(recipe) := {parameter.name |
	some parameter in object.get(corpus.spec(recipe), "parameters", [])
}

recipe_credential_slots(recipe) := {slot.name |
	some slot in object.get(corpus.spec(recipe), "credentialSlots", [])
}

binding_parameter_names(binding) := {parameter.parameterRef |
	some parameter in object.get(corpus.spec(binding), "parameterValues", [])
}

binding_credential_slots(binding) := {credential.credentialSlotRef |
	some credential in object.get(corpus.spec(binding), "credentialBindings", [])
}

deny contains corpus.violation("corpus.mcp.recipe-secret-field", document, message) if {
	some document in corpus.documents
	document.kind in {"McpServerRecipe", "McpServerBinding"}
	walk(corpus.spec(document), [path, _])
	count(path) > 0
	key := lower(sprintf("%v", [path[count(path) - 1]]))
	regex.match(`(password|token|secret|apikey|api[_-]key)`, key)
	key != "secretbindingref"
	message := sprintf("%s: secret values are not representable in MCP recipe or binding YAML", [json.marshal(path)])
}

deny contains corpus.violation("corpus.mcp.recipe-no-shell", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	spec := corpus.spec(document)
	some argument in object.get(spec, "argv", [])
	argument.valueKind == "LITERAL"
	regex.match(`[;&|<>\x60$\n\r]`, object.get(argument, "literal", ""))
	message := "spec.argv: shell metacharacters are refused; argv is passed directly without a shell"
}

deny contains corpus.violation("corpus.mcp.recipe-no-shell", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	some named in array.concat(object.get(corpus.spec(document), "env", []), object.get(corpus.spec(document), "headers", []))
	named.value.valueKind == "LITERAL"
	regex.match(`[\n\r]`, object.get(named.value, "literal", ""))
	message := "spec.env/spec.headers: newline-bearing literal values are refused"
}

deny contains corpus.violation("corpus.mcp.recipe-argument-reference", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	some argument in object.get(corpus.spec(document), "argv", [])
	argument.valueKind == "PARAMETER"
	not argument.parameterRef in recipe_parameter_names(document)
	message := sprintf("spec.argv: parameterRef %q is not declared", [argument.parameterRef])
}

deny contains corpus.violation("corpus.mcp.recipe-argument-reference", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	some named in array.concat(object.get(corpus.spec(document), "env", []), object.get(corpus.spec(document), "headers", []))
	named.value.valueKind == "CREDENTIAL"
	not named.value.credentialSlotRef in recipe_credential_slots(document)
	message := sprintf("spec.env/spec.headers: credentialSlotRef %q is not declared", [named.value.credentialSlotRef])
}

deny contains corpus.violation("corpus.mcp.recipe-supply", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	supply := corpus.spec(document).supply
	supply.supplyKind == "REMOTE_STREAMABLE_HTTP"
	object.get(supply, "endpointOrigin", "") == ""
	message := "spec.supply.endpointOrigin: required for REMOTE_STREAMABLE_HTTP"
}

deny contains corpus.violation("corpus.mcp.recipe-supply", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	supply := corpus.spec(document).supply
	supply.supplyKind == "OCI_STDIO"
	object.get(supply, "ociReference", "") == ""
	message := "spec.supply.ociReference: required for OCI_STDIO"
}

deny contains corpus.violation("corpus.mcp.recipe-supply", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	supply := corpus.spec(document).supply
	supply.supplyKind == "OCI_STDIO"
	not regex.match(`^sha256:[0-9a-f]{64}$`, object.get(supply, "artifactDigest", ""))
	message := "spec.supply.artifactDigest: exact OCI digest is required"
}

deny contains corpus.violation("corpus.mcp.recipe-exact-version", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	supply := corpus.spec(document).supply
	supply.supplyKind in {"NPM_STDIO", "PYTHON_UV_STDIO"}
	not regex.match(`^[0-9]+\.[0-9]+\.[0-9]+([+.-][0-9A-Za-z.-]+)?$`, object.get(supply, "exactVersion", ""))
	message := "spec.supply.exactVersion: an exact immutable version is required"
}

deny contains corpus.violation("corpus.mcp.recipe-supply", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	supply := corpus.spec(document).supply
	supply.supplyKind in {"NPM_STDIO", "PYTHON_UV_STDIO"}
	object.get(supply, "packageName", "") == ""
	message := "spec.supply.packageName: required for package materialization"
}

deny contains corpus.violation("corpus.mcp.recipe-native-pins", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	supply := corpus.spec(document).supply
	supply.supplyKind == "NATIVE_STDIO"
	some field in {"sourceOrigin", "architecture", "artifactDigest", "signatureDigest"}
	object.get(supply, field, "") == ""
	message := sprintf("spec.supply.%s: required for NATIVE_STDIO", [field])
}

deny contains corpus.violation("corpus.mcp.recipe-http-transport", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	corpus.spec(document).supply.supplyKind == "REMOTE_STREAMABLE_HTTP"
	not "STREAMABLE_HTTP" in corpus.spec(document).protocol.transports
	message := "spec.protocol.transports: remote supply requires STREAMABLE_HTTP"
}

deny contains corpus.violation("corpus.mcp.recipe-stdio-transport", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	corpus.spec(document).supply.supplyKind != "REMOTE_STREAMABLE_HTTP"
	not "STDIO" in corpus.spec(document).protocol.transports
	message := "spec.protocol.transports: materialized supply requires STDIO"
}

deny contains corpus.violation("corpus.mcp.recipe-legacy-transport", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	"LEGACY_HTTP_SSE" in corpus.spec(document).protocol.transports
	object.get(corpus.spec(document).supply, "supplyKind", "") != "REMOTE_STREAMABLE_HTTP"
	message := "spec.protocol.transports: LEGACY_HTTP_SSE is allowlist-only for remote HTTP"
}

deny contains corpus.violation("corpus.mcp.recipe-exposure-grant", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	some index, exposure in corpus.spec(document).exposures
	exposure.requiresGrant != true
	message := sprintf("spec.exposures[%d].requiresGrant: every MCP primitive is grant-only", [index])
}

deny contains corpus.violation("corpus.mcp.recipe-opaque-output", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	some index, exposure in corpus.spec(document).exposures
	object.get(exposure, "outputSchemaDigest", "") == ""
	exposure.opaqueOutput != true
	message := sprintf("spec.exposures[%d]: missing output schema requires an opaque untrusted envelope", [index])
}

deny contains corpus.violation("corpus.mcp.recipe-opaque-output", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	some index, exposure in corpus.spec(document).exposures
	exposure.opaqueOutput == true
	count(object.get(exposure, "allowedMimeTypes", [])) == 0
	message := sprintf("spec.exposures[%d].allowedMimeTypes: opaque output requires an allowlist", [index])
}

deny contains corpus.violation("corpus.mcp.recipe-static-prompt", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	some index, exposure in corpus.spec(document).exposures
	exposure.primitiveKind == "PROMPT"
	exposure.taskInstructionsAllowed == true
	not regex.match(`^sha256:[0-9a-f]{64}$`, object.get(exposure, "staticContentDigest", ""))
	message := sprintf("spec.exposures[%d]: only a static prompt at an exact digest may become task instructions", [index])
}

deny contains corpus.violation("corpus.mcp.recipe-sampling-budget", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	some index, exposure in corpus.spec(document).exposures
	exposure.primitiveKind == "SAMPLING"
	object.get(exposure, "maxSamplingCalls", 0) <= 0
	message := sprintf("spec.exposures[%d].maxSamplingCalls: sampling requires a positive call budget", [index])
}

deny contains corpus.violation("corpus.mcp.recipe-sampling-budget", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	some index, exposure in corpus.spec(document).exposures
	exposure.primitiveKind == "SAMPLING"
	object.get(exposure, "maxSamplingTokens", 0) <= 0
	message := sprintf("spec.exposures[%d].maxSamplingTokens: sampling requires a positive token budget", [index])
}

deny contains corpus.violation("corpus.mcp.recipe-elicitation-origin", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerRecipe"
	some index, exposure in corpus.spec(document).exposures
	exposure.primitiveKind == "ELICITATION"
	some origin in object.get(exposure, "allowedOrigins", [])
	not origin in object.get(corpus.spec(document), "egressOrigins", [])
	message := sprintf("spec.exposures[%d].allowedOrigins: elicitation origin %q is not appraised egress", [index, origin])
}

deny contains corpus.violation("corpus.mcp.binding-recipe", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	recipe_id := mcp_ref_id(corpus.spec(document).recipeRef)
	not recipe_id in corpus.ids_of_kind("McpServerRecipe")
	message := sprintf("spec.recipeRef: no McpServerRecipe declares id %q", [recipe_id])
}

deny contains corpus.violation("corpus.mcp.binding-realm", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	recipe := mcp_recipe_for(document)
	not same_owner_realm(document, recipe)
	message := "McpServerBinding and McpServerRecipe must belong to the same Realm"
}

deny contains corpus.violation("corpus.mcp.binding-machine", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	machine_id := mcp_ref_id(corpus.spec(document).executionMachineRef)
	not machine_id in corpus.ids_of_kind("ExecutionMachine")
	message := sprintf("spec.executionMachineRef: no ExecutionMachine declares id %q", [machine_id])
}

deny contains corpus.violation("corpus.mcp.binding-machine-realm", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	machine := corpus.document_by_kind_id("ExecutionMachine", mcp_ref_id(corpus.spec(document).executionMachineRef))
	not same_owner_realm(document, machine)
	message := "McpServerBinding and ExecutionMachine must belong to the same Realm"
}

deny contains corpus.violation("corpus.mcp.binding-parameter", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	recipe := mcp_recipe_for(document)
	some parameter in binding_parameter_names(document)
	not parameter in recipe_parameter_names(recipe)
	message := sprintf("spec.parameterValues: parameter %q is not declared by the recipe", [parameter])
}

deny contains corpus.violation("corpus.mcp.binding-required-parameter", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	recipe := mcp_recipe_for(document)
	some parameter in object.get(corpus.spec(recipe), "parameters", [])
	parameter.required == true
	not parameter.name in binding_parameter_names(document)
	message := sprintf("spec.parameterValues: required parameter %q is missing", [parameter.name])
}

deny contains corpus.violation("corpus.mcp.binding-credential-slot", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	recipe := mcp_recipe_for(document)
	some slot in binding_credential_slots(document)
	not slot in recipe_credential_slots(recipe)
	message := sprintf("spec.credentialBindings: credential slot %q is not declared by the recipe", [slot])
}

mcp_binding_secret_refs contains {"binding": binding, "slot": credential.credentialSlotRef, "secret_id": mcp_ref_id(credential.secretBindingRef)} if {
	some binding in corpus.documents
	binding.kind == "McpServerBinding"
	some credential in object.get(corpus.spec(binding), "credentialBindings", [])
}

deny contains corpus.violation("corpus.mcp.binding-secret", document, message) if {
	some entry in mcp_binding_secret_refs
	not entry.secret_id in corpus.ids_of_kind("SecretBinding")
	document := entry.binding
	message := sprintf("spec.credentialBindings: no SecretBinding declares id %q", [entry.secret_id])
}

deny contains corpus.violation("corpus.mcp.binding-secret-realm", document, message) if {
	some entry in mcp_binding_secret_refs
	document := entry.binding
	secret := corpus.document_by_kind_id("SecretBinding", entry.secret_id)
	not same_owner_realm(document, secret)
	message := sprintf("spec.credentialBindings: SecretBinding %q belongs to another Realm", [entry.secret_id])
}

deny contains corpus.violation("corpus.mcp.binding-secret-lifecycle", document, message) if {
	some entry in mcp_binding_secret_refs
	document := entry.binding
	corpus.spec(document).lifecycle == "ENABLED"
	secret := corpus.document_by_kind_id("SecretBinding", entry.secret_id)
	corpus.spec(secret).lifecycle != "ENABLED"
	message := sprintf("spec.credentialBindings: SecretBinding %q is not ENABLED", [entry.secret_id])
}

deny contains corpus.violation("corpus.mcp.binding-required-credential", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	corpus.spec(document).lifecycle == "ENABLED"
	recipe := mcp_recipe_for(document)
	some slot in object.get(corpus.spec(recipe), "credentialSlots", [])
	slot.required == true
	not slot.name in binding_credential_slots(document)
	message := sprintf("spec.credentialBindings: required credential slot %q is missing", [slot.name])
}

deny contains corpus.violation("corpus.mcp.binding-secret-reciprocity", document, message) if {
	some entry in mcp_binding_secret_refs
	document := entry.binding
	secret := corpus.document_by_kind_id("SecretBinding", entry.secret_id)
	allowed := {mcp_ref_id(ref) | some ref in object.get(corpus.spec(secret), "allowedMcpServerBindingRefs", [])}
	not corpus.id(document) in allowed
	message := sprintf("spec.credentialBindings: SecretBinding %q does not allow binding %q", [entry.secret_id, corpus.id(document)])
}

deny contains corpus.violation("corpus.mcp.binding-appraisal-required", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	corpus.spec(document).lifecycle == "ENABLED"
	object.get(corpus.spec(document), "appraisalRef", null) == null
	message := "spec.appraisalRef: required before an MCP binding can be ENABLED"
}

deny contains corpus.violation("corpus.mcp.binding-empty-exposure", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	corpus.spec(document).lifecycle == "ENABLED"
	recipe := mcp_recipe_for(document)
	count(object.get(corpus.spec(recipe), "exposures", [])) == 0
	message := "spec.recipeRef: an enabled binding requires at least one appraised primitive exposure"
}

deny contains corpus.violation("corpus.mcp.binding-appraisal-required", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	corpus.spec(document).lifecycle == "ENABLED"
	appraisal_id := mcp_ref_id(corpus.spec(document).appraisalRef)
	not appraisal_id in corpus.ids_of_kind("McpServerAppraisal")
	message := sprintf("spec.appraisalRef: no McpServerAppraisal declares id %q", [appraisal_id])
}

deny contains corpus.violation("corpus.mcp.binding-appraisal-verdict", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	corpus.spec(document).lifecycle == "ENABLED"
	appraisal := mcp_appraisal_for(document)
	not corpus.spec(appraisal).verdict in {"ACCEPTED", "ACCEPTED_WITH_CONDITIONS"}
	message := "spec.appraisalRef: appraisal is not accepted"
}

deny contains corpus.violation("corpus.mcp.binding-appraisal-target", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	corpus.spec(document).lifecycle == "ENABLED"
	appraisal := mcp_appraisal_for(document)
	mcp_ref_id(corpus.spec(appraisal).bindingRef) != corpus.id(document)
	message := "spec.appraisalRef: appraisal targets another binding"
}

deny contains corpus.violation("corpus.mcp.binding-appraisal-recipe", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerBinding"
	corpus.spec(document).lifecycle == "ENABLED"
	appraisal := mcp_appraisal_for(document)
	mcp_ref_id(corpus.spec(appraisal).recipeRef) != mcp_ref_id(corpus.spec(document).recipeRef)
	message := "spec.appraisalRef: appraisal targets another recipe"
}

deny contains corpus.violation("corpus.mcp.appraisal-independent", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerAppraisal"
	spec := corpus.spec(document)
	mcp_ref_id(spec.appraisedByRoleDefinitionRef) == mcp_ref_id(spec.verifiedByRoleDefinitionRef)
	message := "spec.verifiedByRoleDefinitionRef: proposer/appraiser and verifier must be independent"
}

deny contains corpus.violation("corpus.mcp.appraisal-realm", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerAppraisal"
	recipe := corpus.document_by_kind_id("McpServerRecipe", mcp_ref_id(corpus.spec(document).recipeRef))
	not same_owner_realm(document, recipe)
	message := "McpServerAppraisal and recipe must belong to the same Realm"
}

deny contains corpus.violation("corpus.mcp.appraisal-realm", document, message) if {
	some document in corpus.documents
	document.kind == "McpServerAppraisal"
	binding := corpus.document_by_kind_id("McpServerBinding", mcp_ref_id(corpus.spec(document).bindingRef))
	not same_owner_realm(document, binding)
	message := "McpServerAppraisal and binding must belong to the same Realm"
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

# ADR-0050 6: only the Official Registry source is credential-free by design; the sync it drives
# never holds an Authorization header or OpenBao token, so a declared secretBindingRef would be
# dead configuration signalling a design a McpRegistrySource of this type must never take.
deny contains corpus.violation("corpus.registry-source.no-secret-when-official", document, message) if {
	some document in corpus.documents
	document.kind == "McpRegistrySource"
	corpus.spec(document).sourceType == "OFFICIAL_REGISTRY"
	object.get(corpus.spec(document), "secretBindingRef", null) != null
	message := "spec.secretBindingRef: an OFFICIAL_REGISTRY source is credential-free by design and must declare no secretBindingRef"
}

# ADR-0050 6: "other registry types are disabled" -- GLAMA, SMITHERY and PULSE_MCP have no
# approved worker, credential binding or terms evidence yet.
deny contains corpus.violation("corpus.registry-source.disabled-types", document, message) if {
	some document in corpus.documents
	document.kind == "McpRegistrySource"
	corpus.spec(document).sourceType in {"GLAMA", "SMITHERY", "PULSE_MCP"}
	corpus.spec(document).lifecycle == "ENABLED"
	message := sprintf("spec.lifecycle: sourceType %q may not be ENABLED (ADR-0050 6)", [corpus.spec(document).sourceType])
}

# ADR-0050 6: GitHub enrichment "remains disabled until ... terms evidence are approved".
deny contains corpus.violation("corpus.registry-source.enrichment-requires-terms", document, message) if {
	some document in corpus.documents
	document.kind == "McpRegistrySource"
	corpus.spec(document).sourceType == "GITHUB_ENRICHMENT"
	corpus.spec(document).lifecycle == "ENABLED"
	object.get(corpus.spec(document), "termsApprovalRef", null) == null
	message := "spec.termsApprovalRef: required for an ENABLED GITHUB_ENRICHMENT source"
}

deny contains corpus.violation("corpus.registry-source.cadence-format", document, message) if {
	some document in corpus.documents
	document.kind == "McpRegistrySource"
	cadence := object.get(corpus.spec(document), "cadence", "")
	cadence != ""
	not iso8601_duration_ns(cadence)
	message := sprintf("spec.cadence: %q is not a valid ISO-8601 duration", [cadence])
}

# A source with no documented upstream rate limit (official-sync AC2/AC3) must not be scheduled
# tightly enough to make undocumented throttling the common case rather than the rare one.
deny contains corpus.violation("corpus.registry-source.cadence-floor", document, message) if {
	some document in corpus.documents
	document.kind == "McpRegistrySource"
	cadence := object.get(corpus.spec(document), "cadence", "")
	cadence != ""
	iso8601_duration_ns(cadence) < iso8601_duration_ns("PT15M")
	message := sprintf("spec.cadence: %q is below the PT15M floor", [cadence])
}
