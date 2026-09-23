package jumo.corpus_api_test

import rego.v1

item(path, contents) := {"path": path, "contents": contents}

contract_document(path, kind, identifier, spec) := item(path, {
	"apiVersion": "jumo.dev/v1",
	"kind": kind,
	"metadata": {"id": identifier, "namespace": "dev.jumo.test"},
	"spec": spec,
})

projection_schema := {
	"type": "object",
	"required": ["jumoRealmId", "audience"],
	"properties": {"jumoRealmId": {"type": "string"}, "audience": {"type": "string"}},
}

proposal_schema := {
	"allOf": [
		{"$ref": "#/components/schemas/Projection"},
		{"type": "object", "required": ["changeProposalId"], "properties": {"changeProposalId": {"type": "string"}}},
	],
}

valid_api := {
	"openapi": "3.1.0",
	"info": {"title": "test", "x-jumo-contract": "urn:jumo:web-interface-contract:v1"},
	"security": [{"realmSession": []}],
	"paths": {
		"/documents": {"get": {
			"x-jumo-capability": "document.read",
			"x-jumo-projection": "DOCUMENTS",
			"responses": {"200": {"content": {"application/json": {"schema": {"$ref": "#/components/schemas/Projection"}}}}},
		}},
		"/proposals": {"post": {
			"x-jumo-capability": "document.propose",
			"x-jumo-ring": "RING_3_GOVERNED_PROJECT",
			"requestBody": {"content": {"application/json": {"schema": {"$ref": "#/components/schemas/Request"}}}},
			"responses": {"202": {"content": {"application/json": {"schema": {"$ref": "#/components/schemas/Proposal"}}}}},
		}},
	},
	"components": {
		"securitySchemes": {"realmSession": {"type": "http"}},
		"schemas": {
			"Projection": projection_schema,
			"Proposal": proposal_schema,
			"Request": {"type": "object", "required": ["path", "baseCommit"]},
		},
	},
}

api_corpus := [
	contract_document(".jumo/capabilities/core.yml", "ActionCapabilitySet", "core", {"capabilities": [
		{"name": "document.read"}, {"name": "document.propose"},
	]}),
	contract_document(".jumo/interfaces/web.yml", "InterfaceSurface", "web", {
		"surfaces": [{
			"id": "documents",
			"reads": ["DOCUMENTS"],
			"proposes": ["document.read", "document.propose"],
			"writePaths": [{"capabilityRef": "document.propose"}],
		}],
	}),
	item("api/openapi/jumo-web-v1.yaml", valid_api),
]

has_rule(violations, rule) if {
	some violation in violations
	violation.rule == rule
}

has_api_rule(violations) if {
	some violation in violations
	startswith(violation.rule, "api.")
}

replace_api(patch) := array.concat(
	array.slice(api_corpus, 0, count(api_corpus) - 1),
	[item("api/openapi/jumo-web-v1.yaml", object.union(
		object.remove(valid_api, object.keys(patch)),
		patch,
	))],
)

test_valid_active_openapi_has_no_api_denials if {
	violations := data.jumo.corpus.deny with input as api_corpus
	not has_api_rule(violations)
}

test_rejects_invalid_openapi_identity_and_version if {
	bad_info := object.union(valid_api.info, {"x-jumo-contract": "wrong"})
	violations := data.jumo.corpus.deny with input as replace_api({"openapi": "3.0.0", "info": bad_info})
	has_rule(violations, "api.contract.identity")
}

test_rejects_missing_security_and_operation_contract if {
	get := object.union(object.remove(valid_api.paths["/documents"].get, {"responses"}), {"x-jumo-capability": "missing", "responses": {}})
	components := object.union(object.remove(valid_api.components, {"securitySchemes"}), {"securitySchemes": {}})
	bad := object.union(object.remove(valid_api, {"security", "paths", "components"}), {"security": [], "paths": {"/documents": {"get": get}}, "components": components})
	violations := data.jumo.corpus.deny with input as array.concat(array.slice(api_corpus, 0, count(api_corpus) - 1), [item("api/openapi/jumo-web-v1.yaml", bad)])
	has_rule(violations, "api.security.default")
	has_rule(violations, "api.security.schemes")
	has_rule(violations, "api.operation.capability-resolves")
	has_rule(violations, "api.operation.success-response")
}

test_rejects_missing_projection_and_surface_contract if {
	get := object.remove(valid_api.paths["/documents"].get, {"x-jumo-capability", "x-jumo-projection"})
	unknown := object.union(valid_api.paths["/documents"].get, {"x-jumo-projection": "UNKNOWN"})
	paths := {"/missing": {"get": get}, "/unknown": {"get": unknown}}
	bad := object.union(object.remove(valid_api, {"paths"}), {"paths": paths})
	violations := data.jumo.corpus.deny with input as array.concat(array.slice(api_corpus, 0, count(api_corpus) - 1), [item("api/openapi/jumo-web-v1.yaml", bad)])
	has_rule(violations, "api.operation.capability")
	has_rule(violations, "api.read.projection")
	has_rule(violations, "api.read.surface")
}

test_rejects_unrouted_command_and_write if {
	command_response := {"202": {"content": {"application/json": {"schema": {"$ref": "#/components/schemas/Projection"}}}}}
	command := object.union(object.remove(valid_api.paths["/proposals"].post, {"responses"}), {"x-jumo-capability": "missing", "x-jumo-command": "DO", "responses": command_response})
	write := object.union(object.remove(valid_api.paths["/proposals"].post, {"x-jumo-ring"}), {"x-jumo-capability": "document.read"})
	paths := {"/command": {"post": command}, "/write": {"post": write}}
	bad := object.union(object.remove(valid_api, {"paths"}), {"paths": paths})
	violations := data.jumo.corpus.deny with input as array.concat(array.slice(api_corpus, 0, count(api_corpus) - 1), [item("api/openapi/jumo-web-v1.yaml", bad)])
	has_rule(violations, "api.command.surface-capability")
	has_rule(violations, "api.command.result-id")
	has_rule(violations, "api.write.surface-capability")
	has_rule(violations, "api.write.ring")
}

test_rejects_non_mapping_and_unsupported_api_input if {
	non_mapping := data.jumo.corpus.deny with input as [item("api/openapi/jumo-web-v1.yaml", [])]
	has_rule(non_mapping, "api.input.mapping")
	unsupported := data.jumo.corpus.deny with input as [item("api/openapi/jumo-web-v1.yaml", {"contract": "unknown"})]
	has_rule(unsupported, "api.input.dispatch")
	expected := item("policy-context.json", {"jumoPolicyContext": {
		"now": "2026-08-12", "expectedApiPath": "api/openapi/jumo-web-v1.yaml",
	}})
	missing := data.jumo.corpus.deny with input as [expected]
	has_rule(missing, "api.input.missing")
}

test_rejects_projection_boundary_loss if {
	bad_projection := object.union(projection_schema, {"required": ["audience"]})
	components := object.union(valid_api.components, {"schemas": object.union(valid_api.components.schemas, {"Projection": bad_projection})})
	violations := data.jumo.corpus.deny with input as replace_api({"components": components})
	has_rule(violations, "api.response.realm-audience")
}

test_rejects_unbound_write_and_applied_commit_claim if {
	bad_request := object.union(valid_api.components.schemas.Request, {"required": ["path"]})
	bad_proposal := {"type": "object", "required": ["jumoRealmId", "audience", "commitSha"]}
	schemas := object.union(object.remove(valid_api.components.schemas, {"Request", "Proposal"}), {"Request": bad_request, "Proposal": bad_proposal})
	components := object.union(object.remove(valid_api.components, {"schemas"}), {"schemas": schemas})
	violations := data.jumo.corpus.deny with input as replace_api({"components": components})
	has_rule(violations, "api.write.request-binding")
	has_rule(violations, "api.write.proposal-result")
	has_rule(violations, "api.write.no-applied-commit")
}

test_rejects_ring_zero_and_missing_step_up if {
	post_zero := object.union(valid_api.paths["/proposals"].post, {"x-jumo-ring": "RING_0_ROOT_OF_TRUST"})
	paths_zero := object.union(valid_api.paths, {"/proposals": {"post": post_zero}})
	zero := data.jumo.corpus.deny with input as replace_api({"paths": paths_zero})
	has_rule(zero, "api.write.ring-zero")
	post_one := object.union(valid_api.paths["/proposals"].post, {"x-jumo-ring": "RING_1_CONTROL_PLANE"})
	paths_one := object.union(valid_api.paths, {"/proposals": {"post": post_one}})
	one := data.jumo.corpus.deny with input as replace_api({"paths": paths_one})
	has_rule(one, "api.write.step-up")
}

test_rejects_incomplete_citation_provenance if {
	citation := {
		"type": "object",
		"required": ["chunkId", "path"],
		"properties": {
			"chunkId": {"pattern": "^[^@]+$"},
			"usedAs": {"enum": ["AUTHORITY"]},
		},
	}
	answer := {"allOf": [{"$ref": "#/components/schemas/Projection"}, {"type": "object", "properties": {"citations": {"items": citation}}}]}
	schemas := object.union(valid_api.components.schemas, {"CorpusAnswerProjection": answer})
	components := object.union(valid_api.components, {"schemas": schemas})
	violations := data.jumo.corpus.deny with input as replace_api({"components": components})
	has_rule(violations, "api.citation.required")
	has_rule(violations, "api.citation.provenance")
	has_rule(violations, "api.citation.commit-pattern")
	has_rule(violations, "api.citation.used-as")
}

dry_run_api(response_schema) := replace_api({
	"paths": object.union(valid_api.paths, {"/proposals/preflight": {"post": {
		"x-jumo-capability": "document.propose",
		"x-jumo-ring": "RING_3_GOVERNED_PROJECT",
		"x-jumo-dry-run": true,
		"requestBody": {"content": {"application/json": {"schema": {"$ref": "#/components/schemas/Request"}}}},
		"responses": {"200": {"content": {"application/json": {"schema": response_schema}}}},
	}}}),
})

test_dry_run_write_needs_no_proposal_id if {
	violations := data.jumo.corpus.deny with input as dry_run_api({"$ref": "#/components/schemas/Projection"})
	not has_api_rule(violations)
}

test_dry_run_is_exempt_from_nothing_else if {
	unlabelled := data.jumo.corpus.deny with input as replace_api({"paths": object.union(valid_api.paths, {"/proposals/preflight": {"post": object.remove(
		dry_run_api({"$ref": "#/components/schemas/Projection"})[2].contents.paths["/proposals/preflight"].post,
		{"x-jumo-dry-run"},
	)}})})
	has_rule(unlabelled, "api.write.proposal-result")
	ringless := data.jumo.corpus.deny with input as replace_api({"paths": object.union(valid_api.paths, {"/proposals/preflight": {"post": object.remove(
		dry_run_api({"$ref": "#/components/schemas/Projection"})[2].contents.paths["/proposals/preflight"].post,
		{"x-jumo-ring"},
	)}})})
	has_rule(ringless, "api.write.ring")
	not has_rule(ringless, "api.write.proposal-result")
}

test_dry_run_response_declaring_an_identifier_is_refused if {
	with_proposal := data.jumo.corpus.deny with input as dry_run_api({"$ref": "#/components/schemas/Proposal"})
	has_rule(with_proposal, "api.dry-run.no-result-id")
	optional_interaction := {"allOf": [
		{"$ref": "#/components/schemas/Projection"},
		{"type": "object", "properties": {"interactionId": {"type": "string"}}},
	]}
	with_interaction := data.jumo.corpus.deny with input as dry_run_api(optional_interaction)
	has_rule(with_interaction, "api.dry-run.no-result-id")
}

test_dry_run_command_needs_no_result_id if {
	command := {
		"x-jumo-capability": "document.propose",
		"x-jumo-command": "CHECK",
		"x-jumo-dry-run": true,
		"responses": {"200": {"content": {"application/json": {"schema": {"$ref": "#/components/schemas/Projection"}}}}},
	}
	violations := data.jumo.corpus.deny with input as replace_api({"paths": object.union(valid_api.paths, {"/check": {"post": command}})})
	not has_rule(violations, "api.command.result-id")
	undeclared := data.jumo.corpus.deny with input as replace_api({"paths": object.union(valid_api.paths, {"/check": {"post": object.remove(command, {"x-jumo-dry-run"})}})})
	has_rule(undeclared, "api.command.result-id")
}

contract_set_api(request) := replace_api({
	"paths": object.union(valid_api.paths, {"/proposals/set": {"post": {
		"x-jumo-capability": "document.propose",
		"x-jumo-ring": "RING_3_GOVERNED_PROJECT",
		"requestBody": {"content": {"application/json": {"schema": {"$ref": "#/components/schemas/SetRequest"}}}},
		"responses": {"202": {"content": {"application/json": {"schema": {"$ref": "#/components/schemas/SetProposal"}}}}},
	}}}),
	"components": object.union(valid_api.components, {"schemas": object.union(valid_api.components.schemas, {
		"SetRequest": request,
		"SetProposal": {"allOf": [
			{"$ref": "#/components/schemas/Projection"},
			{"type": "object", "required": ["changeSetProposalId"], "properties": {"changeSetProposalId": {"type": "string"}}},
		]},
	})}),
})

set_request := {
	"type": "object",
	"required": ["baseCommit", "documents"],
	"properties": {"documents": {"type": "array", "items": {"type": "object", "required": ["path", "content"]}}},
}

test_contract_set_binds_each_document_path_and_answers_a_changeset_id if {
	violations := data.jumo.corpus.deny with input as contract_set_api(set_request)
	not has_api_rule(violations)
}

test_contract_set_without_a_per_document_path_is_refused if {
	unbound := json.patch(set_request, [{"op": "replace", "path": "/properties/documents/items/required", "value": ["content"]}])
	violations := data.jumo.corpus.deny with input as contract_set_api(unbound)
	has_rule(violations, "api.write.request-binding")
	baseless := json.patch(set_request, [{"op": "replace", "path": "/required", "value": ["documents"]}])
	baseless_violations := data.jumo.corpus.deny with input as contract_set_api(baseless)
	has_rule(baseless_violations, "api.write.request-binding")
}

test_contract_set_is_still_a_plain_write_needing_step_up_at_ring_one if {
	api := contract_set_api(set_request)
	contents := api[count(api) - 1].contents
	post := object.union(contents.paths["/proposals/set"].post, {"x-jumo-ring": "RING_1_CONTROL_PLANE"})
	violations := data.jumo.corpus.deny with input as replace_api({
		"paths": object.union(contents.paths, {"/proposals/set": {"post": post}}),
		"components": contents.components,
	})
	has_rule(violations, "api.write.step-up")
}

test_dry_run_response_declaring_a_changeset_id_is_refused if {
	with_changeset := {"allOf": [
		{"$ref": "#/components/schemas/Projection"},
		{"type": "object", "properties": {"changeSetProposalId": {"type": "string"}}},
	]}
	violations := data.jumo.corpus.deny with input as dry_run_api(with_changeset)
	has_rule(violations, "api.dry-run.no-result-id")
}
