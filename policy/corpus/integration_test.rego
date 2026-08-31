package jumo.corpus_integration_test

import rego.v1

document(path, kind, identifier, namespace, spec) := {
	"path": path,
	"contents": {
		"apiVersion": "jumo.dev/v1",
		"kind": kind,
		"metadata": {"id": identifier, "namespace": namespace},
		"spec": spec,
	},
}
has_rule(violations, rule) if {
	some violation in violations
	violation.rule == rule
}

sha := "sha256:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

base := [
	document(".jumo/realm-templates/home.yml", "RealmTemplate", "home", "home.jumo.dev", {}),
	document(".jumo/realm-templates/other.yml", "RealmTemplate", "other", "other.jumo.dev", {}),
	document(".jumo/capabilities/core.yml", "ActionCapabilitySet", "core", "dev.jumo.core", {
		"capabilities": [{"name": "repository.content.read", "producesExternalEffect": false}],
	}),
	document(".jumo/execution-machines/local.yml", "ExecutionMachine", "local", "home.jumo.dev", {"ownerRealm": "home"}),
	document(".jumo/roles/proposer.yml", "RoleDefinition", "proposer", "dev.jumo.core", {"ownerRealm": "home"}),
	document(".jumo/roles/verifier.yml", "RoleDefinition", "verifier", "dev.jumo.core", {"ownerRealm": "home"}),
]

tool := {
	"primitiveKind": "TOOL",
	"upstreamName": "read_file",
	"exposedName": "repository_read",
	"description": "Read one repository file through a bounded schema.",
	"capabilityRef": "repository.content.read",
	"inputSchemaDigest": sha,
	"outputSchemaDigest": sha,
	"opaqueOutput": false,
	"taskInstructionsAllowed": false,
	"effect": "READ_ONLY",
	"requiresGrant": true,
}

recipe_spec(owner, supply, exposures, overrides) := object.union({
	"ownerRealm": owner,
	"importedSourceDigest": sha,
	"supply": supply,
	"protocol": {"minVersion": "2025-06-18", "maxVersion": "2025-11-25", "transports": ["STDIO"]},
	"parameters": [],
	"credentialSlots": [],
	"argv": [],
	"env": [],
	"headers": [],
	"egressOrigins": [],
	"limits": {
		"maxMemoryBytes": 268435456,
		"maxCpuMillis": 1000,
		"maxPayloadBytes": 1048576,
		"timeoutMillis": 30000,
		"maxCallsPerMinute": 60,
	},
	"auth": {"mode": "NONE"},
	"exposures": exposures,
}, overrides)

recipe(owner, spec) := document(
	".jumo/mcp-server-recipes/server.yml",
	"McpServerRecipe",
	"server",
	sprintf("%s.jumo.dev", [owner]),
	spec,
)

binding(lifecycle, appraisal_ref) := document(
	".jumo/mcp-server-bindings/server-binding.yml",
	"McpServerBinding",
	"server-binding",
	"home.jumo.dev",
	{
		"ownerRealm": "home",
		"recipeRef": {"kind": "McpServerRecipe", "namespace": "home.jumo.dev", "id": "server"},
		"executionMachineRef": {"kind": "ExecutionMachine", "namespace": "home.jumo.dev", "id": "local"},
		"lifecycle": lifecycle,
		"appraisalRef": appraisal_ref,
		"parameterValues": [],
		"credentialBindings": [],
	},
)

appraisal(proposer, verifier) := document(
	".jumo/mcp-server-appraisals/review.yml",
	"McpServerAppraisal",
	"review",
	"home.jumo.dev",
	{
		"ownerRealm": "home",
		"recipeRef": {"kind": "McpServerRecipe", "namespace": "home.jumo.dev", "id": "server"},
		"bindingRef": {"kind": "McpServerBinding", "namespace": "home.jumo.dev", "id": "server-binding"},
		"recipeDigest": sha,
		"supplyDigest": sha,
		"inventoryDigest": sha,
		"bindingDigest": sha,
		"appraisedByRoleDefinitionRef": {"kind": "RoleDefinition", "namespace": "dev.jumo.core", "id": proposer},
		"verifiedByRoleDefinitionRef": {"kind": "RoleDefinition", "namespace": "dev.jumo.core", "id": verifier},
		"verdict": "ACCEPTED",
		"evidenceRefs": ["qualification:snapshot-1"],
	},
)

test_connector_definition_cannot_retain_mcp_authority if {
	connector := document(".jumo/connectors/legacy.yml", "ConnectorDefinition", "legacy", "home.jumo.dev", {
		"ownerRealm": "home", "transport": "MCP", "mcpBundleRef": "legacy", "operations": [],
	})
	violations := data.jumo.corpus.deny with input as array.concat(base, [connector])
	has_rule(violations, "corpus.connector.mcp-retired")
}

test_recipe_refuses_secret_value_and_shell if {
	spec := recipe_spec(
		"home",
		{"supplyKind": "OCI_STDIO", "ociReference": "example/server", "artifactDigest": sha},
		[tool],
		{"apiToken": "not-in-git", "argv": [{"valueKind": "LITERAL", "literal": "serve; curl attacker"}]},
	)
	violations := data.jumo.corpus.deny with input as array.concat(base, [recipe("home", spec)])
	has_rule(violations, "corpus.mcp.recipe-secret-field")
	has_rule(violations, "corpus.mcp.recipe-no-shell")
}

test_package_supplies_require_exact_versions if {
	some supply_kind in {"NPM_STDIO", "PYTHON_UV_STDIO"}
	spec := recipe_spec("home", {
		"supplyKind": supply_kind, "packageName": "example", "exactVersion": "latest",
	}, [tool], {})
	violations := data.jumo.corpus.deny with input as array.concat(base, [recipe("home", spec)])
	has_rule(violations, "corpus.mcp.recipe-exact-version")
}

test_native_supply_requires_all_immutable_pins if {
	spec := recipe_spec("home", {
		"supplyKind": "NATIVE_STDIO", "sourceOrigin": "https://example.test/server",
	}, [tool], {})
	violations := data.jumo.corpus.deny with input as array.concat(base, [recipe("home", spec)])
	has_rule(violations, "corpus.mcp.recipe-native-pins")
}

test_remote_supply_requires_streamable_http if {
	spec := recipe_spec("home", {
		"supplyKind": "REMOTE_STREAMABLE_HTTP", "endpointOrigin": "https://mcp.example.test",
	}, [tool], {})
	violations := data.jumo.corpus.deny with input as array.concat(base, [recipe("home", spec)])
	has_rule(violations, "corpus.mcp.recipe-http-transport")
}

test_opaque_output_prompt_and_sampling_are_bounded if {
	opaque := object.union(object.remove(tool, {"outputSchemaDigest"}), {
		"opaqueOutput": false,
	})
	prompt := object.union(tool, {
		"primitiveKind": "PROMPT", "taskInstructionsAllowed": true,
	})
	sampling := object.union(tool, {
		"primitiveKind": "SAMPLING", "maxSamplingCalls": 0, "maxSamplingTokens": 0,
	})
	spec := recipe_spec("home", {
		"supplyKind": "OCI_STDIO", "ociReference": "example/server", "artifactDigest": sha,
	}, [opaque, prompt, sampling], {})
	violations := data.jumo.corpus.deny with input as array.concat(base, [recipe("home", spec)])
	has_rule(violations, "corpus.mcp.recipe-opaque-output")
	has_rule(violations, "corpus.mcp.recipe-static-prompt")
	has_rule(violations, "corpus.mcp.recipe-sampling-budget")
}

test_enabled_binding_requires_appraisal if {
	spec := recipe_spec("home", {
		"supplyKind": "OCI_STDIO", "ociReference": "example/server", "artifactDigest": sha,
	}, [tool], {})
	violations := data.jumo.corpus.deny with input as array.concat(base, [
		recipe("home", spec),
		binding("ENABLED", null),
	])
	has_rule(violations, "corpus.mcp.binding-appraisal-required")
}

test_cross_realm_binding_is_refused if {
	spec := recipe_spec("other", {
		"supplyKind": "OCI_STDIO", "ociReference": "example/server", "artifactDigest": sha,
	}, [tool], {})
	violations := data.jumo.corpus.deny with input as array.concat(base, [
		recipe("other", spec),
		binding("DECLARED", null),
	])
	has_rule(violations, "corpus.mcp.binding-realm")
}

test_appraisal_must_be_independent if {
	spec := recipe_spec("home", {
		"supplyKind": "OCI_STDIO", "ociReference": "example/server", "artifactDigest": sha,
	}, [tool], {})
	violations := data.jumo.corpus.deny with input as array.concat(base, [
		recipe("home", spec),
		binding("DECLARED", null),
		appraisal("proposer", "proposer"),
	])
	has_rule(violations, "corpus.mcp.appraisal-independent")
}

test_enabled_binding_with_matching_appraisal_passes_admission_rules if {
	spec := recipe_spec("home", {
		"supplyKind": "OCI_STDIO", "ociReference": "example/server", "artifactDigest": sha,
	}, [tool], {})
	review_ref := {"kind": "McpServerAppraisal", "namespace": "home.jumo.dev", "id": "review"}
	violations := data.jumo.corpus.deny with input as array.concat(base, [
		recipe("home", spec),
		binding("ENABLED", review_ref),
		appraisal("proposer", "verifier"),
	])
	not has_rule(violations, "corpus.mcp.binding-appraisal-required")
	not has_rule(violations, "corpus.mcp.binding-appraisal-verdict")
	not has_rule(violations, "corpus.mcp.binding-appraisal-target")
	not has_rule(violations, "corpus.mcp.binding-appraisal-recipe")
	not has_rule(violations, "corpus.mcp.appraisal-independent")
}

test_work_order_secret_reciprocity_remains_enforced if {
	wo := document(".jumo/work/wo.yml", "WorkOrder", "wo", "home.jumo.dev", {"secretBindingRefs": ["secret"]})
	secret := document(".jumo/secret-bindings/secret.yml", "SecretBinding", "secret", "home.jumo.dev", {
		"ownerRealm": "home", "lifecycle": "ENABLED", "allowedWorkOrderRefs": [],
	})
	violations := data.jumo.corpus.deny with input as [wo, secret]
	has_rule(violations, "corpus.secret.work-order-reciprocity")
}

test_official_catalogue_source_remains_bounded if {
	source := document(".jumo/mcp-registry-sources/official.yml", "McpRegistrySource", "official", "dev.jumo.core", {
		"sourceType": "OFFICIAL_REGISTRY",
		"adapter": "official-registry-v0.1",
		"lifecycle": "ENABLED",
		"baseUrlAllowlist": ["https://registry.modelcontextprotocol.io"],
		"syncMode": "FULL_THEN_INCREMENTAL",
		"cadence": "PT1H",
	})
	violations := data.jumo.corpus.deny with input as [source]
	not has_rule(violations, "corpus.registry-source.no-secret-when-official")
	not has_rule(violations, "corpus.registry-source.cadence-format")
	not has_rule(violations, "corpus.registry-source.cadence-floor")
}
