package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

# Semantic authority for ProjectionSpec (metamodel/modules/projection.yaml) and the
# AssistedJourneyStep.stepKind/projectionRef/processRef slots that reference it (work.yaml).
# LinkML owns shape (a field exists and is a string); this file owns whether the string names
# something real and whether a projection stays inside its declared job: selecting what to show
# or collect, never what may be done or where it may be written.

projection_specs := corpus.documents_of_kind("ProjectionSpec")

known_projection_classes contains name if {
	some name, _ in object.get(repository_facts, "classSlots", {})
}

known_payload_schemas contains name if {
	some name, _ in object.get(repository_facts, "payloadSchemaSlots", {})
}

class_slots(of) := object.get(object.get(repository_facts, "classSlots", {}), of, [])

payload_schema_slots(ref) := object.get(object.get(repository_facts, "payloadSchemaSlots", {}), ref, [])

# `of` (a generated LinkML class) and `payloadSchemaRef` (a raw JSON Schema file, for a payload
# with no generated class -- canonical decision 15 forbids the metamodel naming that instance)
# are mutually exclusive: a projection's payload shape comes from exactly one authority.
projection_slots(document) := slots if {
	of := object.get(corpus.spec(document), "of", "")
	of != ""
	slots := class_slots(of)
}

projection_slots(document) := slots if {
	object.get(corpus.spec(document), "of", "") == ""
	ref := object.get(corpus.spec(document), "payloadSchemaRef", "")
	slots := payload_schema_slots(ref)
}

# Attribute names that carry authority elsewhere in the metamodel (ActionCapability,
# SurfaceWritePath, ProcessStep) and so must never be reachable through a projected field -- a
# ProjectionSpec selects what to show or collect, never what may be done or where it may be
# written.
forbidden_field_paths := {
	"ring", "ringCeiling", "capabilityRef", "requiredObligations", "obligations",
	"pathGlob", "path", "opaEntrypoint", "idempotencyKey", "producesExternalEffect",
	"riskTier", "reversible",
}

deny contains corpus.violation("corpus.projection.class", document, message) if {
	some document in projection_specs
	of := object.get(corpus.spec(document), "of", "")
	of != ""
	not of in known_projection_classes
	message := sprintf("spec.of: %q is not a generated LinkML class", [of])
}

deny contains corpus.violation("corpus.projection.payload-schema", document, message) if {
	some document in projection_specs
	ref := object.get(corpus.spec(document), "payloadSchemaRef", "")
	ref != ""
	not ref in known_payload_schemas
	message := sprintf("spec.payloadSchemaRef: %q is not a declared payload schema", [ref])
}

deny contains corpus.violation("corpus.projection.payload-shape", document, message) if {
	some document in projection_specs
	object.get(corpus.spec(document), "of", "") == ""
	object.get(corpus.spec(document), "payloadSchemaRef", "") == ""
	message := "spec: exactly one of of or payloadSchemaRef is required"
}

deny contains corpus.violation("corpus.projection.payload-shape", document, message) if {
	some document in projection_specs
	object.get(corpus.spec(document), "of", "") != ""
	object.get(corpus.spec(document), "payloadSchemaRef", "") != ""
	message := "spec: of and payloadSchemaRef are mutually exclusive"
}

deny contains corpus.violation("corpus.projection.field-path", document, message) if {
	some document in projection_specs
	slots := projection_slots(document)
	some section_index, section in object.get(corpus.spec(document), "sections", [])
	some field_index, field in object.get(section, "fields", [])
	not field.path in slots
	message := sprintf(
		"spec.sections[%d].fields[%d].path: %q is not a slot of this projection's payload",
		[section_index, field_index, field.path],
	)
}

deny contains corpus.violation("corpus.projection.no-authority", document, message) if {
	some document in projection_specs
	some section_index, section in object.get(corpus.spec(document), "sections", [])
	some field_index, field in object.get(section, "fields", [])
	field.path in forbidden_field_paths
	message := sprintf(
		"spec.sections[%d].fields[%d].path: %q carries authority and may not be projected",
		[section_index, field_index, field.path],
	)
}

surface_named(surface_id) if {
	some surface in declared_surfaces
	surface.id == surface_id
}

surface_proposes(surface_id, capability) if {
	some surface in declared_surfaces
	surface.id == surface_id
	capability in object.get(surface, "proposes", [])
}

deny contains corpus.violation("corpus.projection.surface", document, message) if {
	some document in projection_specs
	rendered_by := object.get(corpus.spec(document), "renderedBy", "")
	not surface_named(rendered_by)
	message := sprintf("spec.renderedBy: %q is not a declared surface", [rendered_by])
}

deny contains corpus.violation("corpus.projection.action-not-proposed", document, message) if {
	some document in projection_specs
	rendered_by := object.get(corpus.spec(document), "renderedBy", "")
	surface_named(rendered_by)
	some action_index, action in object.get(corpus.spec(document), "actions", [])
	not surface_proposes(rendered_by, action)
	message := sprintf(
		"spec.actions[%d]: %q is not proposed by surface %q",
		[action_index, action, rendered_by],
	)
}

# A field's options come from exactly one authority: a contract kind's declared instances, or a
# closed enumeration's permissible values. An ENUMERATION rendered with neither is the free-text
# combobox this vocabulary exists to remove -- ProjectionRenderer degrades rather than showing a
# dead-end empty select, so an undeclared source fails silently in the surface instead of here.

deny contains corpus.violation("corpus.projection.options-source-missing", document, message) if {
	some document in projection_specs
	some section_index, section in object.get(corpus.spec(document), "sections", [])
	some field_index, field in object.get(section, "fields", [])
	field.representation == "ENUMERATION"
	object.get(field, "optionsFrom", "") == ""
	object.get(field, "optionsFromEnum", "") == ""
	message := sprintf(
		"spec.sections[%d].fields[%d]: an ENUMERATION field declares neither optionsFrom nor optionsFromEnum",
		[section_index, field_index],
	)
}

deny contains corpus.violation("corpus.projection.options-source-ambiguous", document, message) if {
	some document in projection_specs
	some section_index, section in object.get(corpus.spec(document), "sections", [])
	some field_index, field in object.get(section, "fields", [])
	options_source_count(field) > 1
	message := sprintf(
		"spec.sections[%d].fields[%d]: optionsFrom, optionsFromEnum and optionsFromNested are mutually exclusive",
		[section_index, field_index],
	)
}

# Counts how many of the three option-source attributes a field declares -- optionsFromNested is an
# inlined object, so its presence check is a null test, not the empty-string test the other two use.
options_source_count(field) := count([source |
	some source in ["optionsFrom", "optionsFromEnum"]
	object.get(field, source, "") != ""
]) + nested_source_present(field)

nested_source_present(field) := 1 if {
	object.get(field, "optionsFromNested", null) != null
}

nested_source_present(field) := 0 if {
	object.get(field, "optionsFromNested", null) == null
}

deny contains corpus.violation("corpus.projection.options-nested-kind", document, message) if {
	some document in projection_specs
	kinds := object.get(repository_facts, "contractKinds", [])
	some section_index, section in object.get(corpus.spec(document), "sections", [])
	some field_index, field in object.get(section, "fields", [])
	nested := object.get(field, "optionsFromNested", null)
	nested != null
	source_kind := object.get(nested, "sourceKind", "")
	source_kind != ""
	not source_kind in kinds
	message := sprintf(
		"spec.sections[%d].fields[%d].optionsFromNested.sourceKind: %q is not a declared contract kind",
		[section_index, field_index, source_kind],
	)
}

# Eligibility filters instances, so it is meaningless without the kind whose instances it filters:
# an enumeration's permissible values carry no document to read a condition path out of.
deny contains corpus.violation("corpus.projection.options-eligibility-without-kind", document, message) if {
	some document in projection_specs
	some section_index, section in object.get(corpus.spec(document), "sections", [])
	some field_index, field in object.get(section, "fields", [])
	count(object.get(field, "optionsEligibility", [])) > 0
	object.get(field, "optionsFrom", "") == ""
	message := sprintf(
		"spec.sections[%d].fields[%d]: optionsEligibility requires optionsFrom",
		[section_index, field_index],
	)
}

deny contains corpus.violation("corpus.projection.options-eligibility-form", document, message) if {
	some document in projection_specs
	some section_index, section in object.get(corpus.spec(document), "sections", [])
	some field_index, field in object.get(section, "fields", [])
	some condition_index, condition in object.get(field, "optionsEligibility", [])
	not exactly_one_condition_form(condition)
	message := sprintf(
		"spec.sections[%d].fields[%d].optionsEligibility[%d]: exactly one of equalsValue and present is required",
		[section_index, field_index, condition_index],
	)
}

exactly_one_condition_form(condition) if {
	object.get(condition, "equalsValue", "") != ""
	object.get(condition, "present", null) == null
}

exactly_one_condition_form(condition) if {
	object.get(condition, "equalsValue", "") == ""
	object.get(condition, "present", null) != null
}

deny contains corpus.violation("corpus.projection.options-kind", document, message) if {
	some document in projection_specs
	kinds := object.get(repository_facts, "contractKinds", [])
	some section_index, section in object.get(corpus.spec(document), "sections", [])
	some field_index, field in object.get(section, "fields", [])
	options_from := object.get(field, "optionsFrom", "")
	options_from != ""
	not options_from in kinds
	message := sprintf(
		"spec.sections[%d].fields[%d].optionsFrom: %q is not a declared contract kind",
		[section_index, field_index, options_from],
	)
}

# AssistedJourneyStep.stepKind is additive (work.yaml): a step with no stepKind at all -- every
# step declared before this lot -- is untouched by either rule below, so migrating a journey onto
# the model-driven renderer stays opt-in step by step.

deny contains corpus.violation("corpus.journey.observation-emits-capability", document, message) if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	spec := corpus.spec(document)
	spec.completionMode == "OBSERVATION"
	object.get(spec, "emitsCapability", null) != null
	message := "observation journeys may not declare emitsCapability"
}

deny contains corpus.violation("corpus.journey.verification-ref", document, message) if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some step_index, step in object.get(corpus.spec(document), "steps", [])
	object.get(step, "verificationSpecRef", null) != null
	not step.stepKind in {"COLLECT", "CONFIRM", "DIALOGUE_COLLECT"}
	message := sprintf("spec.steps[%d]: verificationSpecRef requires a collecting step", [step_index])
}

deny contains corpus.violation("corpus.journey.projection-ref", document, message) if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some step_index, step in object.get(corpus.spec(document), "steps", [])
	step.stepKind in {"COLLECT", "CONFIRM"}
	corpus.ref_id(object.get(step, "projectionSpecRef", object.get(step, "projectionRef", ""))) == ""
	message := sprintf("spec.steps[%d]: stepKind %q requires projectionSpecRef", [step_index, step.stepKind])
}

deny contains corpus.violation("corpus.journey.projection-ref", document, message) if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some step_index, step in object.get(corpus.spec(document), "steps", [])
	step.stepKind == "AWAIT"
	corpus.ref_id(object.get(step, "processSpecRef", object.get(step, "processRef", ""))) == ""
	message := sprintf("spec.steps[%d]: stepKind AWAIT requires processSpecRef", [step_index])
}

deny contains corpus.violation("corpus.journey.projection-ref", document, message) if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some step_index, step in object.get(corpus.spec(document), "steps", [])
	step.stepKind == "SUB_JOURNEY"
	corpus.ref_id(object.get(step, "subAssistedJourneyRef", object.get(step, "subJourneyRef", ""))) == ""
	message := sprintf("spec.steps[%d]: stepKind SUB_JOURNEY requires subAssistedJourneyRef", [step_index])
}

deny contains corpus.violation("corpus.journey.projection-ref", document, message) if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some step_index, step in object.get(corpus.spec(document), "steps", [])
	step.stepKind == "DIALOGUE_COLLECT"
	corpus.ref_id(object.get(step, "promptTemplateRef", object.get(step, "promptRef", ""))) == ""
	message := sprintf("spec.steps[%d]: stepKind DIALOGUE_COLLECT requires promptTemplateRef", [step_index])
}

# subAssistedJourneyRef resolving to a real AssistedJourney (corpus.reference.kind-id, references.rego)
# bounds the shape of the delegation graph but not its shape over time -- a step could still
# delegate back to an ancestor. Rego forbids recursive rules (termination guarantee), so
# reachability is computed as a bounded transitive closure by repeated self-composition
# ("doubling"): each stage's path-length coverage doubles the previous stage's, so six doublings
# over direct edges covers delegation chains up to 2^6 = 64 journeys deep -- far beyond any
# realistic SUB_JOURNEY graph -- without any rule referencing itself.

subjourney_edges contains [from, to] if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	from := corpus.id(document)
	some step in object.get(corpus.spec(document), "steps", [])
	step.stepKind == "SUB_JOURNEY"
	to := corpus.ref_id(object.get(step, "subAssistedJourneyRef", object.get(step, "subJourneyRef", "")))
	to != ""
}

compose(pairs) := {[a, c] |
	some left in pairs
	some right in pairs
	left[1] == right[0]
	a := left[0]
	c := right[1]
}

subjourney_closure_1 := subjourney_edges | compose(subjourney_edges)

subjourney_closure_2 := subjourney_closure_1 | compose(subjourney_closure_1)

subjourney_closure_3 := subjourney_closure_2 | compose(subjourney_closure_2)

subjourney_closure_4 := subjourney_closure_3 | compose(subjourney_closure_3)

subjourney_closure_5 := subjourney_closure_4 | compose(subjourney_closure_4)

subjourney_closure_6 := subjourney_closure_5 | compose(subjourney_closure_5)

deny contains corpus.violation("corpus.journey.subjourney-cycle", document, message) if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	id := corpus.id(document)
	[id, id] in subjourney_closure_6
	message := sprintf("spec: subAssistedJourneyRef delegation graph contains a cycle through %q", [id])
}

# requiredFields (work.yaml) and the referenced ProjectionSpec's own required fields describe the
# same gate today (work.yaml:756-763): JourneyService and JourneyRunner.vue still read
# requiredFields, but the rendered form is the projection. Until a later lot retires
# requiredFields, the two must not be allowed to drift apart silently.

projection_required_paths(projection_ref) := {field.path |
	some document in projection_specs
	corpus.id(document) == projection_ref
	some section in object.get(corpus.spec(document), "sections", [])
	some field in object.get(section, "fields", [])
	field.required == true
}

deny contains corpus.violation("corpus.journey.required-fields-drift", document, message) if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	some step_index, step in object.get(corpus.spec(document), "steps", [])
	step.stepKind in {"COLLECT", "CONFIRM"}
	projection_ref := corpus.ref_id(object.get(step, "projectionSpecRef", object.get(step, "projectionRef", "")))
	projection_ref != ""
	declared := {f.field | some f in object.get(step, "requiredFields", [])}
	projected := projection_required_paths(projection_ref)
	declared != projected
	message := sprintf(
		"spec.steps[%d]: requiredFields %v does not match projection %q's required fields %v",
		[step_index, declared, projection_ref, projected],
	)
}

# --- AssistedJourney emission -------------------------------------------------------------------
#
# A PROPOSAL journey produces a contract document. Which kind, where it is written, how it is
# rendered and what its fields must satisfy are declared here, so the platform reads one emission
# instead of recognising the journey by name -- canonical decision 15. An observation journey
# emits nothing and declares nothing.

proposal_journeys := [document |
	some document in corpus.documents
	document.kind == "AssistedJourney"
	object.get(corpus.spec(document), "completionMode", "PROPOSAL") == "PROPOSAL"
]

deny contains corpus.violation("corpus.journey.emission-missing", document, message) if {
	some document in proposal_journeys
	object.get(corpus.spec(document), "emission", null) == null
	message := "spec.emission: a PROPOSAL journey must declare what it emits"
}

deny contains corpus.violation("corpus.journey.emission-kind", document, message) if {
	some document in proposal_journeys
	emission := object.get(corpus.spec(document), "emission", null)
	emission != null
	kinds := object.get(repository_facts, "contractKinds", [])
	not emission.targetKind in kinds
	message := sprintf("spec.emission.targetKind: %q is not a declared contract kind", [emission.targetKind])
}

deny contains corpus.violation("corpus.journey.emission-reference-kind", document, message) if {
	some document in proposal_journeys
	emission := object.get(corpus.spec(document), "emission", null)
	emission != null
	kinds := object.get(repository_facts, "contractKinds", [])
	some check_index, check in object.get(emission, "referenceChecks", [])
	not check.kind in kinds
	message := sprintf(
		"spec.emission.referenceChecks[%d].kind: %q is not a declared contract kind",
		[check_index, check.kind],
	)
}

deny contains corpus.violation("corpus.journey.emission-template", document, message) if {
	some document in proposal_journeys
	emission := object.get(corpus.spec(document), "emission", null)
	emission != null
	template_id := object.get(object.get(emission, "documentTemplateRef", {}), "id", "")
	template_id != ""
	not template_id in corpus.ids_of_kind("DocumentTemplate")
	message := sprintf("spec.emission.documentTemplateRef: %q is not a declared DocumentTemplate", [template_id])
}

# A template renders one kind. Naming a template that renders another is how an emission would
# quietly produce a document of a kind its own journey never declared.
deny contains corpus.violation("corpus.journey.emission-template-kind", document, message) if {
	some document in proposal_journeys
	emission := object.get(corpus.spec(document), "emission", null)
	emission != null
	template_id := object.get(object.get(emission, "documentTemplateRef", {}), "id", "")
	template_id != ""
	template := corpus.document_by_kind_id("DocumentTemplate", template_id)
	renders := object.get(corpus.spec(template), "renders", "")
	renders != emission.targetKind
	message := sprintf(
		"spec.emission.documentTemplateRef: %q renders %q, not the declared %q",
		[template_id, renders, emission.targetKind],
	)
}

deny contains corpus.violation("corpus.journey.emission-path", document, message) if {
	some document in proposal_journeys
	emission := object.get(corpus.spec(document), "emission", null)
	emission != null
	not startswith(object.get(emission, "pathTemplate", ""), ".jumo/")
	message := "spec.emission.pathTemplate: an emitted contract is written under .jumo/"
}

deny contains corpus.violation("corpus.journey.emission-without-proposal", document, message) if {
	some document in corpus.documents
	document.kind == "AssistedJourney"
	object.get(corpus.spec(document), "completionMode", "PROPOSAL") != "PROPOSAL"
	object.get(corpus.spec(document), "emission", null) != null
	message := "spec.emission: an observation journey emits nothing"
}
