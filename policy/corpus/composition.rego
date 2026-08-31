package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

sealed_kinds := {
	"ActionCapabilitySet",
	"CapabilityProfile",
	"ComplianceProfile",
	"ControlCatalog",
	"InterfaceSurface",
	"McpRegistrySource",
	"PolicySet",
	"PrincipleSet",
	"RoleLifecyclePolicy",
}

# A REALM_ONLY kind is accepted from any REALM-layer source path (the private realm-home and the
# public realm-home-public overlay are peers, not layered): base.rego's corpus.identity.unique
# already denies a duplicate (kind, namespace, id) between them without a source-specific rule here.
realm_only_kinds := {
	"AdvisorProfile",
	"ChiefOfStaffProfile",
	"ExecutionCell",
	"KitBinding",
	"KitLock",
	"KitReleaseCertification",
	"KnowledgeCorpus",
	"KnowledgeSource",
	"MonetaryRiskPolicy",
	"McpRegistrySourceBinding",
	"McpServerAppraisal",
	"McpServerBinding",
	"McpServerRecipe",
	"PersonalSpace",
	"Principal",
	"PrincipalIdentityBinding",
	"Project",
	"ProviderAccount",
	"RealmTemplate",
	"RoleAssignment",
	"RoutingEligibility",
	"SecretBinding",
	"TeamSpec",
	"WorkOrder",
	"RealmPublication",
}

organization_only_kinds := {
	"Organization",
	"OrganizationAccessBinding",
	"OrganizationEnrollmentPolicy",
	"OrganizationAuditRetentionPolicy",
	"OrganizationRetentionHold",
	"OrganizationPublicationPolicy",
}

additive_kinds := {
	"AgentDefinition",
	"AssistedJourney",
	"JourneyVerificationSpec",
	"ConnectorDefinition",
	"CoordinationProfile",
	"EngagementMethod",
	"EvidenceProfile",
	"FederatedPeer",
	"FederationProfile",
	"GoldenTaskSet",
	"ImprovementLoop",
	"ImprovementRecommendation",
	"JumoKit",
	"KnowledgeIndexProfile",
	"OfferingSpec",
	"OrganizationSpec",
	"OrganizationTemplate",
	"Practice",
	"ProcessSpec",
	"ProjectionSpec",
	"PromptTemplate",
	"ProviderPlatform",
	"RoleDefinition",
	"SelfDescription",
	"SolicitationContract",
	"WorkerRequirementProfile",
	"WorkerSubstrate",
}

deny contains corpus.violation("corpus.composition.sealed-in-kit-refused", document, message) if {
	some document in corpus.documents
	document.kind in sealed_kinds
	startswith(corpus.path(document), ".jumo/kits/")
	message := sprintf("kind %s is SEALED and cannot be imported in a kit", [document.kind])
}

deny contains corpus.violation("corpus.composition.realm-only-in-kit-refused", document, message) if {
	some document in corpus.documents
	document.kind in realm_only_kinds
	startswith(corpus.path(document), ".jumo/kits/")
	message := sprintf("kind %s is REALM_ONLY and cannot be exported by a kit", [document.kind])
}

deny contains corpus.violation("corpus.composition.sealed-no-private-reference", document, message) if {
	some document in corpus.documents
	document.kind in sealed_kinds
	some trail, value in walk(corpus.spec(document))
	is_object(value)
	value.namespace == "home.jumo.dev"
	object.get(value, "kind", "") != ""
	message := sprintf(
		"%s: SEALED %s document must not reference a private home.jumo.dev instance (found %s/%s)",
		[json.marshal(trail), document.kind, value.kind, object.get(value, "id", "?")],
	)
}

deny contains corpus.violation("corpus.composition.organization-only-source-refused", document, message) if {
	some document in corpus.documents
	document.kind in organization_only_kinds
	not startswith(corpus.path(document), "organizations/")
	message := sprintf("kind %s must be declared in a dedicated organization source", [document.kind])
}

deny contains corpus.violation("corpus.organization.member-binding-derived", document, message) if {
	some document in corpus.documents
	document.kind == "OrganizationAccessBinding"
	corpus.spec(document).role == "MEMBER"
	message := "MEMBER is derived from OrganizationEnrollmentPolicy and may not be an explicit binding"
}

deny contains corpus.violation("corpus.organization.owner-binding-required", document, message) if {
	some document in corpus.documents
	document.kind == "Organization"
	owner := corpus.spec(document).ownerPrincipalId
	not organization_owner_binding(document, owner)
	message := sprintf("Organization %q must have an explicit OWNER binding for its declared owner", [corpus.id(document)])
}

organization_owner_binding(organization, owner) if {
	some binding in corpus.documents
	binding.kind == "OrganizationAccessBinding"
	corpus.spec(binding).organizationRef.id == corpus.id(organization)
	corpus.spec(binding).principalId == owner
	corpus.spec(binding).role == "OWNER"
}

deny contains corpus.violation("corpus.composition.additive-collision", document, message) if {
	some document in corpus.documents
	some other in corpus.documents
	corpus.path(document) < corpus.path(other)
	document.kind in additive_kinds
	document.kind == other.kind
	corpus.id(document) == corpus.id(other)
	not is_valid_override(document, other)
	not is_valid_override(other, document)
	message := sprintf(
		"kind %s id %q has undeclared collision between %s and %s",
		[document.kind, corpus.id(document), corpus.path(document), corpus.path(other)],
	)
}

is_valid_override(source, target) if {
	not startswith(corpus.path(source), ".jumo/kits/")
	startswith(corpus.path(target), ".jumo/kits/")
	meta := object.get(source, "metadata", {})
	overrides := object.get(meta, "overrides", {})
	overrides.id == corpus.id(target)
}
