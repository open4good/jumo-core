package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

api_inputs := [item |
	some item in input
	endswith(object.get(item, "path", ""), "api/openapi/jumo-web-v1.yaml")
]

web_contracts := [item |
	some item in api_inputs
	is_object(item.contents)
	object.get(item.contents, "openapi", null) != null
]

web_contract := web_contracts[0]

api_input_expected if {
	corpus.policy_context.expectedApiPath == "api/openapi/jumo-web-v1.yaml"
}

deny contains {"msg": "active API input is missing", "path": "api/openapi/jumo-web-v1.yaml", "rule": "api.input.missing"} if {
	api_input_expected
	count(api_inputs) == 0
}

deny contains {"msg": "active API input must be a mapping", "path": item.path, "rule": "api.input.mapping"} if {
	some item in api_inputs
	not is_object(item.contents)
}

deny contains {"msg": "active API input must declare OpenAPI", "path": item.path, "rule": "api.input.dispatch"} if {
	some item in api_inputs
	is_object(item.contents)
	object.get(item.contents, "openapi", null) == null
}

declared_surfaces contains surface if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
}

surface_reads_projection(projection, capability) if {
	some surface in declared_surfaces
	projection in object.get(surface, "reads", [])
	capability in object.get(surface, "proposes", [])
}

surface_reads(projection) if {
	some surface in declared_surfaces
	projection in object.get(surface, "reads", [])
}

surface_write_capability(capability) if {
	some surface in declared_surfaces
	some write in object.get(surface, "writePaths", [])
	write.capabilityRef == capability
}

surface_command_capability(capability) if {
	some surface in declared_surfaces
	capability in object.get(surface, "proposes", [])
	not surface_write_capability(capability)
}

http_operations contains {"method": method, "path": path, "operation": operation} if {
	document := web_contract.contents
	some path, item in object.get(document, "paths", {})
	some method, operation in item
	method in {"get", "post", "put", "patch", "delete"}
	is_object(operation)
}

success_responses(operation) := {{"code": code, "response": response} |
	some code, response in object.get(operation, "responses", {})
	startswith(sprintf("%v", [code]), "2")
}

resolved_schema(document, node) := schema if {
	reference := object.get(node, "$ref", "")
	startswith(reference, "#/components/schemas/")
	name := trim_prefix(reference, "#/components/schemas/")
	schema := object.get(object.get(object.get(document, "components", {}), "schemas", {}), name, {})
}

resolved_schema(_, node) := node if {
	object.get(node, "$ref", null) == null
}

json_schema(document, wrapper) := schema if {
	resolved := resolved_schema(document, wrapper)
	content := object.get(resolved, "content", {})
	media := object.get(content, "application/json", object.get(content, "text/event-stream", {}))
	schema := object.get(media, "schema", {})
}

required_field(document, node, field) if {
	resolved := resolved_schema(document, node)
	field in object.get(resolved, "required", [])
}

required_field(document, node, field) if {
	resolved := resolved_schema(document, node)
	some branch in object.get(resolved, "allOf", [])
	branch_resolved := resolved_schema(document, branch)
	field in object.get(branch_resolved, "required", [])
}

# The published pilot projections use at most two composed schema levels. Keep the expansion
# bounded and explicit so the admission policy remains finite and compilable under Rego v1.
required_field(document, node, field) if {
	resolved := resolved_schema(document, node)
	some branch in object.get(resolved, "allOf", [])
	branch_resolved := resolved_schema(document, branch)
	some nested in object.get(branch_resolved, "allOf", [])
	nested_resolved := resolved_schema(document, nested)
	field in object.get(nested_resolved, "required", [])
}

operation_location(method, path) := sprintf("%s %s", [upper(method), path])

deny contains {"msg": "active API input must identify the pilot OpenAPI contract", "path": web_contract.path, "rule": "api.contract.identity"} if {
	count(web_contracts) > 0
	item := web_contracts[0]
	object.get(object.get(item.contents, "info", {}), "x-jumo-contract", "") != "urn:jumo:web-interface-contract:v1"
}

deny contains {"msg": "openapi must be 3.1.x", "path": web_contract.path, "rule": "api.contract.version"} if {
	not startswith(web_contract.contents.openapi, "3.1")
}

deny contains {"msg": "components.securitySchemes must not be empty", "path": web_contract.path, "rule": "api.security.schemes"} if {
	count(object.get(object.get(web_contract.contents, "components", {}), "securitySchemes", {})) == 0
}

deny contains {"msg": "a default security requirement is required", "path": web_contract.path, "rule": "api.security.default"} if {
	count(object.get(web_contract.contents, "security", [])) == 0
}

deny contains {"msg": sprintf("%s: operation must name x-jumo-capability", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.operation.capability"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	not object.get(operation, "x-jumo-auth-ceremony", false)
	object.get(operation, "x-jumo-capability", null) == null
}

deny contains {"msg": sprintf("%s: capability is not declared", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.operation.capability-resolves"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	not object.get(operation, "x-jumo-auth-ceremony", false)
	capability := object.get(operation, "x-jumo-capability", null)
	capability != null
	not capability in corpus.capability_names
}

deny contains {"msg": sprintf("%s: operation requires a 2xx response", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.operation.success-response"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	count(success_responses(operation)) == 0
}

deny contains {"msg": sprintf("%s: read must name a projection", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.read.projection"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	method == "get"
	operation := endpoint.operation
	not object.get(operation, "x-jumo-auth-ceremony", false)
	object.get(operation, "x-jumo-projection", null) == null
}

deny contains {"msg": sprintf("%s: no surface reads the projection", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.read.surface"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	method == "get"
	operation := endpoint.operation
	projection := object.get(operation, "x-jumo-projection", null)
	projection != null
	not surface_reads(projection)
}

deny contains {"msg": sprintf("%s: surface does not propose the read capability", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.read.surface-capability"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	method == "get"
	operation := endpoint.operation
	projection := object.get(operation, "x-jumo-projection", null)
	projection != null
	surface_reads(projection)
	capability := object.get(operation, "x-jumo-capability", null)
	not surface_reads_projection(projection, capability)
}

projection_field := {"jumoRealmId", "audience"}

deny contains {"msg": sprintf("%s %v: projection response drops %s", [operation_location(method, path), code, field]), "path": web_contract.path, "rule": "api.response.realm-audience"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	some success in success_responses(operation)
	code := success.code
	response := success.response
	some field in projection_field
	not required_field(web_contract.contents, json_schema(web_contract.contents, response), field)
}

deny contains {"msg": sprintf("%s: command capability has no declared surface", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.command.surface-capability"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	method != "get"
	operation := endpoint.operation
	object.get(operation, "x-jumo-command", null) != null
	capability := object.get(operation, "x-jumo-capability", null)
	not surface_command_capability(capability)
	not surface_write_capability(capability)
}

deny contains {"msg": sprintf("%s %v: command response requires a result id", [operation_location(method, path), code]), "path": web_contract.path, "rule": "api.command.result-id"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	object.get(operation, "x-jumo-command", null) != null
	some success in success_responses(operation)
	code := success.code
	response := success.response
	not required_field(web_contract.contents, json_schema(web_contract.contents, response), "interactionId")
	not required_field(web_contract.contents, json_schema(web_contract.contents, response), "changeProposalId")
	not required_field(web_contract.contents, json_schema(web_contract.contents, response), "episodeId")
}

plain_write(method, operation) if {
	method != "get"
	object.get(operation, "x-jumo-command", null) == null
}

deny contains {"msg": sprintf("%s: write capability has no declared surface path", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.write.surface-capability"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	plain_write(method, operation)
	capability := object.get(operation, "x-jumo-capability", null)
	not surface_write_capability(capability)
}

deny contains {"msg": sprintf("%s: write must name x-jumo-ring", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.write.ring"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	plain_write(method, operation)
	object.get(operation, "x-jumo-ring", null) == null
}

deny contains {"msg": sprintf("%s: Ring 0 is unreachable", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.write.ring-zero"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	plain_write(method, operation)
	operation["x-jumo-ring"] == "RING_0_ROOT_OF_TRUST"
}

step_up_scheme(name) if {
	name in object.keys(object.get(object.get(web_contract.contents, "components", {}), "securitySchemes", {}))
	contains(lower(name), "step")
}

step_up_scheme(name) if {
	scheme := object.get(object.get(object.get(web_contract.contents, "components", {}), "securitySchemes", {}), name, {})
	contains(lower(object.get(scheme, "description", "")), "step-up")
}

operation_uses_step_up(operation) if {
	some requirement in object.get(operation, "security", [])
	some name, _ in requirement
	step_up_scheme(name)
}

deny contains {"msg": sprintf("%s: Ring 1 requires step-up", [operation_location(method, path)]), "path": web_contract.path, "rule": "api.write.step-up"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	plain_write(method, operation)
	operation["x-jumo-ring"] == "RING_1_CONTROL_PLANE"
	not operation_uses_step_up(operation)
}

deny contains {"msg": sprintf("%s: request requires %s", [operation_location(method, path), field]), "path": web_contract.path, "rule": "api.write.request-binding"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	plain_write(method, operation)
	some field in {"path", "baseCommit"}
	request_schema := json_schema(web_contract.contents, object.get(operation, "requestBody", {}))
	not required_field(web_contract.contents, request_schema, field)
}

deny contains {"msg": sprintf("%s %v: proposal response requires changeProposalId", [operation_location(method, path), code]), "path": web_contract.path, "rule": "api.write.proposal-result"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	plain_write(method, operation)
	some success in success_responses(operation)
	code := success.code
	response := success.response
	not required_field(web_contract.contents, json_schema(web_contract.contents, response), "changeProposalId")
}

deny contains {"msg": sprintf("%s %v: proposal response may not require commitSha", [operation_location(method, path), code]), "path": web_contract.path, "rule": "api.write.no-applied-commit"} if {
	some endpoint in http_operations
	method := endpoint.method
	path := endpoint.path
	operation := endpoint.operation
	plain_write(method, operation)
	some success in success_responses(operation)
	code := success.code
	response := success.response
	required_field(web_contract.contents, json_schema(web_contract.contents, response), "commitSha")
}

answer_schema := object.get(object.get(object.get(web_contract.contents, "components", {}), "schemas", {}), "CorpusAnswerProjection", {})

uses_corpus_answer if {
	some endpoint in http_operations
	endpoint.operation["x-jumo-projection"] == "CORPUS_ANSWER"
}

deny contains {"msg": "CorpusAnswerProjection is required for CORPUS_ANSWER", "path": web_contract.path, "rule": "api.citation.schema-required"} if {
	uses_corpus_answer
	count(answer_schema) == 0
}

citation_schema := citation if {
	some branch in object.get(answer_schema, "allOf", [])
	properties := object.get(branch, "properties", {})
	citations := object.get(properties, "citations", {})
	citation := object.get(citations, "items", {})
	count(citation) > 0
}

deny contains {"msg": "CorpusAnswerProjection must require citations", "path": web_contract.path, "rule": "api.citation.required"} if {
	count(answer_schema) > 0
	not required_field(web_contract.contents, answer_schema, "citations")
}

deny contains {"msg": sprintf("citation must require %s", [field]), "path": web_contract.path, "rule": "api.citation.provenance"} if {
	count(answer_schema) > 0
	some field in {"chunkId", "path", "normative", "audience", "usedAs"}
	not field in object.get(citation_schema, "required", [])
}

deny contains {"msg": "citation chunkId must encode path#heading@commit", "path": web_contract.path, "rule": "api.citation.commit-pattern"} if {
	count(answer_schema) > 0
	pattern := object.get(object.get(object.get(citation_schema, "properties", {}), "chunkId", {}), "pattern", "")
	not regex.match(pattern, "docs/glossary.md#realm@6dd6a4e")
}

deny contains {"msg": "citation chunkId must require the commit component", "path": web_contract.path, "rule": "api.citation.commit-required"} if {
	count(answer_schema) > 0
	pattern := object.get(object.get(object.get(citation_schema, "properties", {}), "chunkId", {}), "pattern", "")
	regex.match(pattern, "docs/glossary.md#realm")
}

deny contains {"msg": "citation usedAs must distinguish authority from explanation", "path": web_contract.path, "rule": "api.citation.used-as"} if {
	count(answer_schema) > 0
	values := {value | some value in object.get(object.get(object.get(citation_schema, "properties", {}), "usedAs", {}), "enum", [])}
	values != {"AUTHORITY", "EXPLANATION"}
}
