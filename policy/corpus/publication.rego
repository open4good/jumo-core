package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

sealed_interoperability_adapters := {
	"jumo-profile-v1",
	"bpmn-2.0-v1",
	"a2a-v1-read-v1",
	"acs-jumo-opa-v1",
}

# 1. Unique public handle across all RealmPublication contracts
deny contains corpus.violation("corpus.publication.unique-handle", document, message) if {
	some document in corpus.documents_of_kind("RealmPublication")
	some other in corpus.documents_of_kind("RealmPublication")
	corpus.path(document) < corpus.path(other)
	corpus.spec(document).publicHandle == corpus.spec(other).publicHandle
	message := sprintf(
		"publicHandle %q in %s collides with %s; public handles must be globally unique",
		[corpus.spec(document).publicHandle, corpus.path(document), corpus.path(other)],
	)
}

# 2. Realm declaring RealmPublication must be an admitted member of the referenced Organization
deny contains corpus.violation("corpus.publication.member-organization-binding", document, message) if {
	some document in corpus.documents_of_kind("RealmPublication")
	spec := corpus.spec(document)
	org_ref := corpus.ref_id(spec.organizationRef)
	org_ref != ""
	org_doc := corpus.document_by_kind_id("Organization", org_ref)
	org_doc != null
	not spec.ownerRealm in object.get(corpus.spec(org_doc), "memberRealmIds", [])
	message := sprintf(
		"ownerRealm %q is not a member of Organization %q",
		[spec.ownerRealm, org_ref],
	)
}

# 3. Organization must declare an OrganizationPublicationPolicy
deny contains corpus.violation("corpus.publication.organization-policy-required", document, message) if {
	some document in corpus.documents_of_kind("RealmPublication")
	spec := corpus.spec(document)
	org_ref := corpus.ref_id(spec.organizationRef)
	org_ref != ""
	not has_organization_publication_policy(org_ref)
	message := sprintf(
		"Organization %q has no declared OrganizationPublicationPolicy",
		[org_ref],
	)
}

has_organization_publication_policy(org_id) if {
	some doc in corpus.documents_of_kind("OrganizationPublicationPolicy")
	corpus.ref_id(corpus.spec(doc).organizationRef) == org_id
}

# 4. RealmPublication enabledAdapters must be a subset of OrganizationPublicationPolicy allowedAdapters (narrowing only)
deny contains corpus.violation("corpus.publication.adapter-narrowing-only", document, message) if {
	some document in corpus.documents_of_kind("RealmPublication")
	spec := corpus.spec(document)
	org_ref := corpus.ref_id(spec.organizationRef)
	some org_policy in corpus.documents_of_kind("OrganizationPublicationPolicy")
	corpus.ref_id(corpus.spec(org_policy).organizationRef) == org_ref
	allowed := {adapter | some adapter in object.get(corpus.spec(org_policy), "allowedAdapters", [])}
	some adapter in object.get(spec, "enabledAdapters", [])
	not adapter in allowed
	message := sprintf(
		"enabledAdapter %q in RealmPublication exceeds OrganizationPublicationPolicy allowedAdapters [%s]",
		[adapter, concat(", ", sort(allowed))],
	)
}

# 5. Sealed adapter registry check for OrganizationPublicationPolicy and RealmPublication
deny contains corpus.violation("corpus.publication.sealed-adapter-only", document, message) if {
	some document in corpus.documents_of_kind("OrganizationPublicationPolicy")
	some adapter in object.get(corpus.spec(document), "allowedAdapters", [])
	not adapter in sealed_interoperability_adapters
	message := sprintf("adapter %q is not in the sealed registry [%s]", [adapter, concat(", ", sort(sealed_interoperability_adapters))])
}

deny contains corpus.violation("corpus.publication.sealed-adapter-only", document, message) if {
	some document in corpus.documents_of_kind("RealmPublication")
	some adapter in object.get(corpus.spec(document), "enabledAdapters", [])
	not adapter in sealed_interoperability_adapters
	message := sprintf("adapter %q is not in the sealed registry [%s]", [adapter, concat(", ", sort(sealed_interoperability_adapters))])
}

# 6. Exposure must be PUBLIC_DISCOVERABLE
deny contains corpus.violation("corpus.publication.exposure-must-be-public-discoverable", document, message) if {
	some document in corpus.documents_of_kind("RealmPublication")
	corpus.spec(document).exposure != "PUBLIC_DISCOVERABLE"
	message := sprintf(
		"RealmPublication requires exposure PUBLIC_DISCOVERABLE (found %q)",
		[corpus.spec(document).exposure],
	)
}

# 7. Artifact allowlist must not expose sensitive internal resources or invalid paths
deny contains corpus.violation("corpus.publication.artifact-allowlist-boundary", document, message) if {
	some document in corpus.documents_of_kind("RealmPublication")
	some artifact in object.get(corpus.spec(document), "artifactAllowlist", [])
	is_sensitive_or_forbidden_artifact(artifact)
	message := sprintf("artifact %q in artifactAllowlist references forbidden internal or sensitive resource", [artifact])
}

is_sensitive_or_forbidden_artifact(artifact) if {
	contains(lower(artifact), "secret")
}

is_sensitive_or_forbidden_artifact(artifact) if {
	contains(lower(artifact), "cell")
}

is_sensitive_or_forbidden_artifact(artifact) if {
	contains(lower(artifact), "personal-space")
}

is_sensitive_or_forbidden_artifact(artifact) if {
	contains(artifact, "..")
}

is_sensitive_or_forbidden_artifact(artifact) if {
	startswith(artifact, "/")
}
