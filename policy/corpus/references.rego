package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

capability_references contains {"document": document, "location": location, "name": name} if {
	some document in corpus.documents
	document.kind == "AgentDefinition"
	some name in object.get(corpus.spec(document), "requestedCapabilities", [])
	location := "spec.requestedCapabilities"
}

capability_references contains {"document": document, "location": location, "name": name} if {
	some document in corpus.documents
	document.kind == "PolicySet"
	some rule_index, rule in object.get(corpus.spec(document), "rules", [])
	some name in object.get(rule, "actions", [])
	location := sprintf("spec.rules[%d].actions", [rule_index])
}

capability_references contains {"document": document, "location": location, "name": name} if {
	some document in corpus.documents
	document.kind == "SolicitationContract"
	some request_index, request in object.get(corpus.spec(document), "allowedRequests", [])
	name := request.capability
	location := sprintf("spec.allowedRequests[%d].capability", [request_index])
}

capability_references contains {"document": document, "location": location, "name": name} if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	some operation_index, operation in object.get(corpus.spec(document), "operations", [])
	name := operation.capabilityRef
	location := sprintf("spec.operations[%d].capabilityRef", [operation_index])
}

capability_references contains {"document": document, "location": location, "name": name} if {
	some document in corpus.documents
	document.kind == "McpBundle"
	some operation_index, operation in object.get(
		object.get(corpus.spec(document), "semanticProfile", {}),
		"operations",
		[],
	)
	name := operation.capabilityRef
	location := sprintf("spec.semanticProfile.operations[%d].capabilityRef", [operation_index])
}

capability_references contains {"document": document, "location": location, "name": name} if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface_index, surface in object.get(corpus.spec(document), "surfaces", [])
	some name in object.get(surface, "proposes", [])
	location := sprintf("spec.surfaces[%d].proposes", [surface_index])
}

capability_references contains {"document": document, "location": location, "name": name} if {
	some document in corpus.documents
	document.kind == "ProjectionSpec"
	some name in object.get(corpus.spec(document), "actions", [])
	location := "spec.actions"
}

capability_references contains {"document": document, "location": location, "name": name} if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	name := object.get(corpus.spec(document), "emitsCapability", null)
	name != null
	location := "spec.emitsCapability"
}

capability_references contains {"document": document, "location": location, "name": name} if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some name in object.get(corpus.spec(document), "requiredCapabilities", [])
	location := "spec.requiredCapabilities"
}

capability_references contains {"document": document, "location": location, "name": name} if {
	some document in corpus.documents
	document.kind == "SelfDescription"
	some skill_index, skill in object.get(object.get(corpus.spec(document), "agentCard", {}), "skills", [])
	some name in object.get(skill, "capabilityRefs", [])
	location := sprintf("spec.agentCard.skills[%d].capabilityRefs", [skill_index])
}

deny contains corpus.violation("corpus.reference.capability", document, message) if {
	some reference in capability_references
	document := reference.document
	location := reference.location
	name := reference.name
	not name in corpus.capability_names
	message := sprintf("%s: capability %q is not declared", [location, name])
}

owner_realm_kind(kind) if {
	kind in {
		"CapabilityProfile",
		"AdvisorProfile",
		"ChiefOfStaffProfile",
		"ConnectorAppraisal",
		"ConnectorDefinition",
		"ExecutionCell",
		"ExecutionToolchain",
		"EventIngress",
		"FederatedPeer",
		"FederationProfile",
		"GoldenTaskSet",
		"InterfaceSurface",
		"ImprovementLoop",
		"KitBinding",
	}
}

owner_realm_kind(kind) if {
	kind in {
		"McpBundle",
		"MonetaryRiskPolicy",
		"PersonalSpace",
		"PrincipalIdentityBinding",
		"Project",
		"RemoteMcpService",
		"RoleAssignment",
		"RoleDefinition",
		"RoutingEligibility",
		"SecretBinding",
		"TeamSpec",
		"WorkerRequirementProfile",
		"WorkerSubstrate",
	}
}

deny contains corpus.violation("corpus.reference.owner-realm", document, message) if {
	some document in corpus.documents
	owner_realm_kind(document.kind)
	realm := corpus.owner_realm(document)
	not realm in corpus.ids_of_kind("RealmTemplate")
	message := sprintf("spec.ownerRealm: no RealmTemplate declares id %q", [realm])
}

# --- Structured Contract References ---

# WorkOrder
references contains {"document": document, "location": "spec.producerRoleDefinitionRef", "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	ref := object.get(corpus.spec(document), "producerRoleDefinitionRef", object.get(corpus.spec(document), "operatorRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.teamSpecRef", "expected_kind": "TeamSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	ref := object.get(corpus.spec(document), "teamSpecRef", object.get(corpus.spec(document), "teamRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.projectRef", "expected_kind": "Project", "ref": ref} if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	ref := object.get(corpus.spec(document), "projectRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.verifierRoleDefinitionRef", "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	ref := object.get(corpus.spec(document), "verifierRoleDefinitionRef", object.get(corpus.spec(document), "verifierRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.parentWorkOrderRef", "expected_kind": "WorkOrder", "ref": ref} if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	ref := object.get(corpus.spec(document), "parentWorkOrderRef", object.get(corpus.spec(document), "parentRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.resourceBudgetRef", "expected_kind": "ResourceBudget", "ref": ref} if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	ref := object.get(corpus.spec(document), "resourceBudgetRef", object.get(corpus.spec(document), "budgetRef", null))
	ref != null
}

references contains {"document": document, "location": sprintf("spec.dependsOnWorkOrderRefs[%d]", [index]), "expected_kind": "WorkOrder", "ref": ref} if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	some index, ref in object.get(corpus.spec(document), "dependsOnWorkOrderRefs", object.get(corpus.spec(document), "dependsOn", []))
}

# RoleAssignment
references contains {"document": document, "location": "spec.roleDefinitionRef", "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RoleAssignment"
	ref := object.get(corpus.spec(document), "roleDefinitionRef", object.get(corpus.spec(document), "operatorRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.bearer.principalRef", "expected_kind": "Principal", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RoleAssignment"
	bearer := object.get(corpus.spec(document), "bearer", {})
	ref := object.get(bearer, "principalRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.bearer.agentDefinitionRef", "expected_kind": "AgentDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RoleAssignment"
	bearer := object.get(corpus.spec(document), "bearer", {})
	ref := object.get(bearer, "agentDefinitionRef", object.get(bearer, "archetypeRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.bearer.defaultWorkerRequirementProfileRef", "expected_kind": "WorkerRequirementProfile", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RoleAssignment"
	bearer := object.get(corpus.spec(document), "bearer", {})
	ref := object.get(bearer, "defaultWorkerRequirementProfileRef", object.get(bearer, "defaultWorkerRequirementRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.bearer.federatedPeerRef", "expected_kind": "FederatedPeer", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RoleAssignment"
	bearer := object.get(corpus.spec(document), "bearer", {})
	ref := object.get(bearer, "federatedPeerRef", null)
	ref != null
}

# TeamSpec
references contains {"document": document, "location": "spec.coordination.leadRoleDefinitionRef", "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "TeamSpec"
	coord := object.get(corpus.spec(document), "coordination", {})
	ref := object.get(coord, "leadRoleDefinitionRef", object.get(coord, "leadOperatorRef", object.get(coord, "leadRoleRef", null)))
	ref != null
}

references contains {"document": document, "location": sprintf("spec.members[%d].roleDefinitionRef", [index]), "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "TeamSpec"
	some index, member in object.get(corpus.spec(document), "members", [])
	ref := object.get(member, "roleDefinitionRef", object.get(member, "operatorRef", object.get(member, "roleRef", null)))
	ref != null
}

references contains {"document": document, "location": sprintf("spec.members[%d].teamSpecRef", [index]), "expected_kind": "TeamSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "TeamSpec"
	some index, member in object.get(corpus.spec(document), "members", [])
	ref := object.get(member, "teamSpecRef", object.get(member, "teamRef", null))
	ref != null
}

# RoutingEligibility
references contains {"document": document, "location": "spec.projectRef", "expected_kind": "Project", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RoutingEligibility"
	ref := object.get(corpus.spec(document), "projectRef", null)
	ref != null
}

references contains {"document": document, "location": sprintf("spec.eligibleRoleDefinitionRefs[%d]", [index]), "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RoutingEligibility"
	some index, ref in object.get(corpus.spec(document), "eligibleRoleDefinitionRefs", object.get(corpus.spec(document), "operatorRefs", object.get(corpus.spec(document), "eligibleOperators", [])))
}

references contains {"document": document, "location": sprintf("spec.eligibleTeamSpecRefs[%d]", [index]), "expected_kind": "TeamSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RoutingEligibility"
	some index, ref in object.get(corpus.spec(document), "eligibleTeamSpecRefs", object.get(corpus.spec(document), "teamRefs", object.get(corpus.spec(document), "eligibleTeams", [])))
}

# ChiefOfStaffProfile
references contains {"document": document, "location": "spec.roleDefinitionRef", "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ChiefOfStaffProfile"
	ref := object.get(corpus.spec(document), "roleDefinitionRef", object.get(corpus.spec(document), "operatorRef", null))
	ref != null
}

# AdvisorProfile
references contains {"document": document, "location": "spec.roleDefinitionRef", "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AdvisorProfile"
	ref := object.get(corpus.spec(document), "roleDefinitionRef", null)
	ref != null
}

references contains {"document": document, "location": sprintf("spec.dialogueOptions[%d].capabilityProfileRef", [index]), "expected_kind": "CapabilityProfile", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AdvisorProfile"
	some index, option in object.get(corpus.spec(document), "dialogueOptions", [])
	ref := object.get(option, "capabilityProfileRef", null)
	ref != null
}

references contains {"document": document, "location": sprintf("spec.dialogueOptions[%d].engagementMethodRef", [index]), "expected_kind": "EngagementMethod", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AdvisorProfile"
	some index, option in object.get(corpus.spec(document), "dialogueOptions", [])
	ref := object.get(option, "engagementMethodRef", null)
	ref != null
}

references contains {"document": document, "location": sprintf("spec.practiceRefs[%d]", [index]), "expected_kind": "Practice", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AdvisorProfile"
	some index, ref in object.get(corpus.spec(document), "practiceRefs", [])
}

# PrincipalIdentityBinding
references contains {"document": document, "location": "spec.principalRef", "expected_kind": "Principal", "ref": ref} if {
	some document in corpus.documents
	document.kind == "PrincipalIdentityBinding"
	ref := object.get(corpus.spec(document), "principalRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.intakeProcessSpecRef", "expected_kind": "ProcessSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ChiefOfStaffProfile"
	ref := object.get(corpus.spec(document), "intakeProcessSpecRef", object.get(corpus.spec(document), "intakeWorkflowRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.directWorkProcessSpecRef", "expected_kind": "ProcessSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ChiefOfStaffProfile"
	ref := object.get(corpus.spec(document), "directWorkProcessSpecRef", object.get(corpus.spec(document), "directWorkWorkflowRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.statusPracticeRef", "expected_kind": "Practice", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ChiefOfStaffProfile"
	ref := object.get(corpus.spec(document), "statusPracticeRef", null)
	ref != null
}

references contains {"document": document, "location": location, "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ChiefOfStaffProfile"
	some rule_index, rule in object.get(corpus.spec(document), "dispositionRules", [])
	some index, ref in object.get(object.get(rule, "match", {}), "addressedRoleRefs", [])
	location := sprintf("spec.dispositionRules[%d].match.addressedRoleRefs[%d]", [rule_index, index])
}

references contains {"document": document, "location": location, "expected_kind": "TeamSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ChiefOfStaffProfile"
	some rule_index, rule in object.get(corpus.spec(document), "dispositionRules", [])
	some index, ref in object.get(object.get(rule, "match", {}), "addressedTeamRefs", [])
	location := sprintf("spec.dispositionRules[%d].match.addressedTeamRefs[%d]", [rule_index, index])
}

# RealmTemplate
references contains {"document": document, "location": "spec.chiefOfStaff.roleDefinitionRef", "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RealmTemplate"
	chief := object.get(corpus.spec(document), "chiefOfStaff", {})
	ref := object.get(chief, "roleDefinitionRef", object.get(chief, "operatorRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.chiefOfStaff.chiefOfStaffProfileRef", "expected_kind": "ChiefOfStaffProfile", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RealmTemplate"
	chief := object.get(corpus.spec(document), "chiefOfStaff", {})
	ref := object.get(chief, "chiefOfStaffProfileRef", object.get(chief, "profileRef", null))
	ref != null
}

references contains {"document": document, "location": sprintf("spec.policySetRefs[%d]", [index]), "expected_kind": "PolicySet", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RealmTemplate"
	some index, ref in object.get(corpus.spec(document), "policySetRefs", object.get(corpus.spec(document), "policyRefs", []))
}

references contains {"document": document, "location": sprintf("spec.principleSetRefs[%d]", [index]), "expected_kind": "PrincipleSet", "ref": ref} if {
	some document in corpus.documents
	document.kind == "RealmTemplate"
	some index, ref in object.get(corpus.spec(document), "principleSetRefs", object.get(corpus.spec(document), "principlesRefs", []))
}

# ProcessSpec
references contains {"document": document, "location": "spec.projectRef", "expected_kind": "Project", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ProcessSpec"
	ref := object.get(corpus.spec(document), "projectRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.resourceBudgetRef", "expected_kind": "ResourceBudget", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ProcessSpec"
	ref := object.get(corpus.spec(document), "resourceBudgetRef", object.get(corpus.spec(document), "budgetRef", null))
	ref != null
}

# Practice
references contains {"document": document, "location": "spec.processSpecRef", "expected_kind": "ProcessSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "Practice"
	ref := object.get(corpus.spec(document), "processSpecRef", object.get(corpus.spec(document), "processReleaseRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.resourceBudgetRef", "expected_kind": "ResourceBudget", "ref": ref} if {
	some document in corpus.documents
	document.kind == "Practice"
	ref := object.get(corpus.spec(document), "resourceBudgetRef", object.get(corpus.spec(document), "budgetRef", null))
	ref != null
}

# CapabilityProfile & GoldenTaskSet
references contains {"document": document, "location": "spec.workerRequirementProfileRef", "expected_kind": "WorkerRequirementProfile", "ref": ref} if {
	some document in corpus.documents
	document.kind in {"CapabilityProfile", "GoldenTaskSet"}
	ref := object.get(corpus.spec(document), "workerRequirementProfileRef", object.get(corpus.spec(document), "requirementProfileRef", null))
	ref != null
}

# WorkerRequirementProfile
references contains {"document": document, "location": sprintf("spec.quality.goldenTaskSetRefs[%d]", [index]), "expected_kind": "GoldenTaskSet", "ref": ref} if {
	some document in corpus.documents
	document.kind == "WorkerRequirementProfile"
	q := object.get(corpus.spec(document), "quality", {})
	some index, ref in object.get(q, "goldenTaskSetRefs", object.get(q, "benchmarkRefs", []))
}

# WorkerRequirementProfile / WorkerSubstrate (execution-toolchain-contract-foundations)
references contains {"document": document, "location": sprintf("spec.requiredExecutionToolchainRefs[%d]", [index]), "expected_kind": "ExecutionToolchain", "ref": ref} if {
	some document in corpus.documents
	document.kind == "WorkerRequirementProfile"
	some index, ref in object.get(corpus.spec(document), "requiredExecutionToolchainRefs", [])
}

references contains {"document": document, "location": sprintf("spec.providedExecutionToolchainRefs[%d]", [index]), "expected_kind": "ExecutionToolchain", "ref": ref} if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	some index, ref in object.get(corpus.spec(document), "providedExecutionToolchainRefs", [])
}

# EventIngress (event-ingress-contract-foundations)
references contains {"document": document, "location": "spec.verificationSecretBindingRef", "expected_kind": "SecretBinding", "ref": ref} if {
	some document in corpus.documents
	document.kind == "EventIngress"
	ref := object.get(corpus.spec(document), "verificationSecretBindingRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.processSpecRef", "expected_kind": "ProcessSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "EventIngress"
	ref := object.get(corpus.spec(document), "processSpecRef", null)
	ref != null
}

# PromptTemplate
references contains {"document": document, "location": "spec.agentDefinitionRef", "expected_kind": "AgentDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "PromptTemplate"
	ref := object.get(corpus.spec(document), "agentDefinitionRef", object.get(corpus.spec(document), "archetype", object.get(corpus.spec(document), "archetypeRef", null)))
	ref != null
}

# Knowledge retrieval contracts
references contains {"document": document, "location": "spec.projectRef", "expected_kind": "Project", "ref": ref} if {
	some document in corpus.documents
	document.kind == "KnowledgeCorpus"
	ref := object.get(corpus.spec(document), "projectRef", null)
	ref != null
}

references contains {"document": document, "location": sprintf("spec.knowledgeSourceRefs[%d]", [index]), "expected_kind": "KnowledgeSource", "ref": ref} if {
	some document in corpus.documents
	document.kind == "KnowledgeCorpus"
	some index, ref in object.get(corpus.spec(document), "knowledgeSourceRefs", [])
}

references contains {"document": document, "location": "spec.knowledgeIndexProfileRef", "expected_kind": "KnowledgeIndexProfile", "ref": ref} if {
	some document in corpus.documents
	document.kind == "KnowledgeCorpus"
	ref := object.get(corpus.spec(document), "knowledgeIndexProfileRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.knowledgeCorpusRef", "expected_kind": "KnowledgeCorpus", "ref": ref} if {
	some document in corpus.documents
	document.kind == "KnowledgeSource"
	ref := object.get(corpus.spec(document), "knowledgeCorpusRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.projectRef", "expected_kind": "Project", "ref": ref} if {
	some document in corpus.documents
	document.kind == "KnowledgeSource"
	ref := object.get(corpus.spec(document), "projectRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.connectorDefinitionRef", "expected_kind": "ConnectorDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "KnowledgeSource"
	ref := object.get(corpus.spec(document), "connectorDefinitionRef", null)
	ref != null
}

# AssistedJourney
references contains {"document": document, "location": sprintf("spec.policySetRefs[%d]", [index]), "expected_kind": "PolicySet", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some index, ref in object.get(corpus.spec(document), "policySetRefs", [])
}

references contains {"document": document, "location": "spec.resourceBudgetRef", "expected_kind": "ResourceBudget", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	ref := object.get(corpus.spec(document), "resourceBudgetRef", object.get(corpus.spec(document), "budgetRef", null))
	ref != null
}

references contains {"document": document, "location": sprintf("spec.steps[%d].projectionSpecRef", [index]), "expected_kind": "ProjectionSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some index, step in object.get(corpus.spec(document), "steps", [])
	ref := object.get(step, "projectionSpecRef", object.get(step, "projectionRef", null))
	ref != null
}

references contains {"document": document, "location": sprintf("spec.steps[%d].processSpecRef", [index]), "expected_kind": "ProcessSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some index, step in object.get(corpus.spec(document), "steps", [])
	ref := object.get(step, "processSpecRef", object.get(step, "processRef", null))
	ref != null
}

references contains {"document": document, "location": sprintf("spec.steps[%d].promptTemplateRef", [index]), "expected_kind": "PromptTemplate", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some index, step in object.get(corpus.spec(document), "steps", [])
	ref := object.get(step, "promptTemplateRef", object.get(step, "promptRef", null))
	ref != null
}

references contains {"document": document, "location": sprintf("spec.steps[%d].subAssistedJourneyRef", [index]), "expected_kind": "AssistedJourney", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some index, step in object.get(corpus.spec(document), "steps", [])
	ref := object.get(step, "subAssistedJourneyRef", object.get(step, "subJourneyRef", null))
	ref != null
}

references contains {"document": document, "location": sprintf("spec.steps[%d].verificationSpecRef", [index]), "expected_kind": "JourneyVerificationSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some index, step in object.get(corpus.spec(document), "steps", [])
	ref := object.get(step, "verificationSpecRef", null)
	ref != null
}

# ConnectorDefinition & Appraisal
references contains {"document": document, "location": "spec.connectorPackageRef", "expected_kind": "ConnectorPackage", "ref": ref} if {
	some document in corpus.documents
	document.kind in {"ConnectorDefinition", "McpBundle"}
	ref := object.get(corpus.spec(document), "connectorPackageRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.mcpBundleRef", "expected_kind": "McpBundle", "ref": ref} if {
	some document in corpus.documents
	document.kind in {"ConnectorDefinition", "ConnectorAppraisal"}
	ref := object.get(corpus.spec(document), "mcpBundleRef", object.get(corpus.spec(document), "bundleRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.remoteMcpServiceRef", "expected_kind": "RemoteMcpService", "ref": ref} if {
	some document in corpus.documents
	document.kind in {"ConnectorDefinition", "RemoteMcpAppraisal"}
	ref := object.get(corpus.spec(document), "remoteMcpServiceRef", object.get(corpus.spec(document), "remoteServiceRef", object.get(corpus.spec(document), "serviceRef", null)))
	ref != null
}

references contains {"document": document, "location": "spec.appraisedByRoleDefinitionRef", "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ConnectorAppraisal"
	ref := object.get(corpus.spec(document), "appraisedByRoleDefinitionRef", object.get(corpus.spec(document), "appraisedBy", null))
	ref != null
}

references contains {"document": document, "location": "spec.verifiedByRoleDefinitionRef", "expected_kind": "RoleDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind in {"ConnectorAppraisal", "RemoteMcpAppraisal"}
	ref := object.get(corpus.spec(document), "verifiedByRoleDefinitionRef", object.get(corpus.spec(document), "verifiedBy", null))
	ref != null
}

# ExecutionCell
references contains {"document": document, "location": sprintf("spec.connectorDefinitionRefs[%d]", [index]), "expected_kind": "ConnectorDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ExecutionCell"
	some index, ref in object.get(corpus.spec(document), "connectorDefinitionRefs", object.get(corpus.spec(document), "connectorRefs", []))
}

references contains {"document": document, "location": sprintf("spec.mountedPersonalSpaceRefs[%d]", [index]), "expected_kind": "PersonalSpace", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ExecutionCell"
	some index, ref in object.get(corpus.spec(document), "mountedPersonalSpaceRefs", [])
}

# SecretBinding
references contains {"document": document, "location": sprintf("spec.allowedMcpBundleRefs[%d]", [index]), "expected_kind": "McpBundle", "ref": ref} if {
	some document in corpus.documents
	document.kind == "SecretBinding"
	some index, ref in object.get(corpus.spec(document), "allowedMcpBundleRefs", object.get(corpus.spec(document), "allowedBundleRefs", []))
}

references contains {"document": document, "location": sprintf("spec.allowedRemoteMcpServiceRefs[%d]", [index]), "expected_kind": "RemoteMcpService", "ref": ref} if {
	some document in corpus.documents
	document.kind == "SecretBinding"
	some index, ref in object.get(corpus.spec(document), "allowedRemoteMcpServiceRefs", object.get(corpus.spec(document), "allowedRemoteServiceRefs", []))
}

references contains {"document": document, "location": sprintf("spec.allowedConnectorDefinitionRefs[%d]", [index]), "expected_kind": "ConnectorDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "SecretBinding"
	some index, ref in object.get(corpus.spec(document), "allowedConnectorDefinitionRefs", object.get(corpus.spec(document), "allowedConnectorRefs", []))
}

# FederatedPeer
references contains {"document": document, "location": sprintf("spec.federationProfileRefs[%d]", [index]), "expected_kind": "FederationProfile", "ref": ref} if {
	some document in corpus.documents
	document.kind == "FederatedPeer"
	some index, ref in object.get(corpus.spec(document), "federationProfileRefs", object.get(corpus.spec(document), "profileRefs", []))
}

# Principal & PersonalSpace
references contains {"document": document, "location": "spec.personalSpaceRef", "expected_kind": "PersonalSpace", "ref": ref} if {
	some document in corpus.documents
	document.kind in {"Principal", "Project"}
	ref := object.get(corpus.spec(document), "personalSpaceRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.preferencesRef", "expected_kind": "Preferences", "ref": ref} if {
	some document in corpus.documents
	document.kind == "PersonalSpace"
	ref := object.get(corpus.spec(document), "preferencesRef", null)
	ref != null
}

# ThemePack (portable-theme-contract-foundations). ThemePack itself declares no ownerRealm --
# OVERRIDABLE composition, shared like VocabularySet -- so corpus.reference.same-realm is a no-op
# for both of these; kind-match/kind-id still refuse an unresolved or wrongly-kinded reference.
references contains {"document": document, "location": "spec.themePackRef", "expected_kind": "ThemePack", "ref": ref} if {
	some document in corpus.documents
	document.kind == "Preferences"
	ref := object.get(corpus.spec(document), "themePackRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.defaultThemePackRef", "expected_kind": "ThemePack", "ref": ref} if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	ref := object.get(corpus.spec(document), "defaultThemePackRef", null)
	ref != null
}

# KitLock
references contains {"document": document, "location": "spec.kitBindingRef", "expected_kind": "KitBinding", "ref": ref} if {
	some document in corpus.documents
	document.kind == "KitLock"
	ref := object.get(corpus.spec(document), "kitBindingRef", object.get(corpus.spec(document), "bindingRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.kitReleaseCertificationRef", "expected_kind": "KitReleaseCertification", "ref": ref} if {
	some document in corpus.documents
	document.kind == "KitLock"
	ref := object.get(corpus.spec(document), "kitReleaseCertificationRef", object.get(corpus.spec(document), "certificationRef", null))
	ref != null
}

# ImprovementLoop & Recommendation
references contains {"document": document, "location": "spec.projectRef", "expected_kind": "Project", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ImprovementLoop"
	ref := object.get(corpus.spec(document), "projectRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.synthesisPracticeRef", "expected_kind": "Practice", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ImprovementLoop"
	ref := object.get(corpus.spec(document), "synthesisPracticeRef", null)
	ref != null
}

references contains {"document": document, "location": "spec.assessmentProcessSpecRef", "expected_kind": "ProcessSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ImprovementLoop"
	ref := object.get(corpus.spec(document), "assessmentProcessSpecRef", object.get(corpus.spec(document), "assessmentWorkflowRef", null))
	ref != null
}

references contains {"document": document, "location": "spec.improvementLoopRef", "expected_kind": "ImprovementLoop", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ImprovementRecommendation"
	ref := object.get(corpus.spec(document), "improvementLoopRef", object.get(corpus.spec(document), "loopRef", null))
	ref != null
}

# ExecutionMachine
references contains {"document": document, "location": "spec.hostDefinitionRef", "expected_kind": "MachineHostDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ExecutionMachine"
	ref := object.get(corpus.spec(document), "hostDefinitionRef", null)
	ref != null
}

references contains {"document": document, "location": sprintf("spec.installedCliRefs[%d]", [index]), "expected_kind": "CliToolDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ExecutionMachine"
	some index, ref in object.get(corpus.spec(document), "installedCliRefs", [])
}

references contains {"document": document, "location": sprintf("spec.installedConnectorRefs[%d]", [index]), "expected_kind": "ConnectorDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ExecutionMachine"
	some index, ref in object.get(corpus.spec(document), "installedConnectorRefs", [])
}

# CliRelease
references contains {"document": document, "location": "spec.toolRef", "expected_kind": "CliToolDefinition", "ref": ref} if {
	some document in corpus.documents
	document.kind == "CliRelease"
	ref := object.get(corpus.spec(document), "toolRef", null)
	ref != null
}

# ProcessSpec (subprocess step target)
references contains {"document": document, "location": sprintf("spec.steps[%d].subprocessReleaseRef", [index]), "expected_kind": "ProcessSpec", "ref": ref} if {
	some document in corpus.documents
	document.kind == "ProcessSpec"
	some index, step in object.get(corpus.spec(document), "steps", [])
	ref := object.get(step, "subprocessReleaseRef", null)
	ref != null
}

# --- Reference Validation Rules ---

target_matches_kind(actual_kind, expected_kind) if {
	actual_kind == expected_kind
}

deny contains corpus.violation("corpus.reference.kind-match", document, message) if {
	some reference in references
	document := reference.document
	location := reference.location
	expected_kind := reference.expected_kind
	ref := reference.ref
	is_object(ref)
	not target_matches_kind(ref.kind, expected_kind)
	message := sprintf("%s: reference declares kind %q, expected %q", [location, ref.kind, expected_kind])
}

target_id(ref) := ref.id if {
	is_object(ref)
}

target_id(ref) := ref if {
	is_string(ref)
}

valid_target_id(expected_kind, cid) if {
	cid in corpus.ids_of_kind(expected_kind)
}

deny contains corpus.violation("corpus.reference.kind-id", document, message) if {
	some reference in references
	document := reference.document
	location := reference.location
	expected_kind := reference.expected_kind
	ref := reference.ref
	cid := target_id(ref)
	not valid_target_id(expected_kind, cid)
	message := sprintf("%s: no %s declares id %q", [location, expected_kind, cid])
}

governing_realm(document) := corpus.id(document) if {
	document.kind == "RealmTemplate"
}

governing_realm(document) := corpus.owner_realm(document) if {
	document.kind != "RealmTemplate"
}

deny contains corpus.violation("corpus.reference.same-realm", document, message) if {
	some reference in references
	document := reference.document
	cid := target_id(reference.ref)
	cid in corpus.ids_of_kind(reference.expected_kind)
	target := corpus.document_by_kind_id(reference.expected_kind, cid)
	source_realm := governing_realm(document)
	source_realm != ""
	target_realm := governing_realm(target)
	target_realm != ""
	source_realm != target_realm
	message := sprintf("%s: %s %q belongs to another Realm", [reference.location, reference.expected_kind, cid])
}
