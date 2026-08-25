package jumo.corpus_test

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

valid_corpus := [
	document(
		".jumo/capabilities/core.yml",
		"ActionCapabilitySet",
		"core",
		{"capabilities": [
			{"name": "document.read", "requiredObligations": ["RETAIN_PROVENANCE"], "ringCeiling": "RING_2_AGENT_BEHAVIOR"},
			{"name": "change.review", "ringCeiling": "RING_1_CONTROL_PLANE"},
		]},
	),
	document(".jumo/realms/home.yml", "RealmTemplate", "home", {}),
	document("jumo.yml", "Project", "jumo", {
		"ownerRealm": "home",
		"repositoryBindings": [],
		"milestones": [{"id": "test-milestone", "order": 0, "exitCondition": "The fixture corpus passes all policy checks."}],
	}),
	document(".jumo/operators/implementer.yml", "RoleDefinition", "implementer", {"ownerRealm": "home"}),
	document(".jumo/operators/reviewer.yml", "RoleDefinition", "reviewer", {"ownerRealm": "home"}),
	document(".jumo/agents/reviewer.yml", "AgentDefinition", "reviewer", {"requestedCapabilities": ["change.review"]}),
	document(
		".jumo/operator-assignments/implementer.yml",
		"RoleAssignment",
		"implementer",
		{"ownerRealm": "home", "operatorRef": "implementer", "bearer": {"kind": "HUMAN"}},
	),
	document(
		".jumo/operator-assignments/reviewer.yml",
		"RoleAssignment",
		"reviewer",
		{"ownerRealm": "home", "operatorRef": "reviewer", "bearer": {"kind": "AGENT", "archetypeRef": "reviewer"}},
	),
	document(
		".jumo/operator-teams/software.yml",
		"TeamSpec",
		"software",
		{"ownerRealm": "home", "members": [
			{"operatorRef": "implementer", "independenceGroup": "build"},
			{"operatorRef": "reviewer", "independenceGroup": "review"},
		]},
	),
	document(
		".jumo/work/change.yml",
		"WorkOrder",
		"change",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "PROPOSED",
			"pathScope": ["docs/**"],
			"roadmapRef": "test-milestone",
		},
	),
	document(
		".jumo/interfaces/web.yml",
		"InterfaceSurface",
		"web",
		{
			"ownerRealm": "home",
			"facets": [{"entity": "Document", "create": "NONE", "modify": "NONE", "retire": "NONE", "commands": []}],
			"surfaces": [{"id": "documents", "proposes": ["document.read"], "writePaths": []}],
		},
	),
]

has_rule(violations, rule) if {
	some violation in violations
	violation.rule == rule
}

test_valid_corpus_has_no_semantic_denials if {
	violations := data.jumo.corpus.deny with input as valid_corpus
	count(violations) == 0
}

test_rejects_retired_api_version if {
	mutated := array.concat(valid_corpus, [document(".jumo/old.yml", "PolicySet", "old", {})])
	old := object.union(mutated[count(mutated) - 1].contents, {"apiVersion": "jumo.dev/v1alpha1"})
	input_corpus := array.concat(array.slice(mutated, 0, count(mutated) - 1), [{"path": ".jumo/old.yml", "contents": old}])
	violations := data.jumo.corpus.deny with input as input_corpus
	has_rule(violations, "corpus.api-version.v1alpha1-refused")
}

test_rejects_duplicate_identity if {
	duplicate := document(".jumo/realms/duplicate.yml", "RealmTemplate", "home", {})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [duplicate])
	has_rule(violations, "corpus.identity.unique")
}

test_rejects_placeholder_and_bad_namespace if {
	bad_contents := object.union(
		document(".jumo/policies/bad.yml", "PolicySet", "bad", {"description": "TODO"}).contents,
		{"metadata": {"id": "bad", "namespace": "not-reverse-dns"}},
	)
	bad_input := array.concat(valid_corpus, [{"path": ".jumo/policies/bad.yml", "contents": bad_contents}])
	violations := data.jumo.corpus.deny with input as bad_input
	has_rule(violations, "corpus.placeholder.none")
	has_rule(violations, "corpus.namespace.reverse-dns")
}

test_rejects_unsafe_personal_space_paths if {
	bad := document(
		".jumo/personal-spaces/bad.yml",
		"PersonalSpace",
		"bad",
		{"workspacePath": "../outside", "gitLfsPointers": ["   "]},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.personal-space.workspace-path")
	has_rule(violations, "corpus.personal-space.lfs-pointer")
}

test_rejects_base_identity_and_uniqueness_invariants if {
	misplaced := document(".jumo/other/misplaced.yml", "Project", "misplaced", {"repositoryBindings": [{"id": "same"}, {"id": "same"}]})
	connector := document(".jumo/connectors/duplicate.yml", "ConnectorDefinition", "duplicate", {"operations": [{"id": "same"}, {"id": "same"}]})
	surface := document(".jumo/interfaces/duplicate.yml", "InterfaceSurface", "duplicate", {"facets": [{"entity": "Document"}, {"entity": "Document"}]})
	orphan := document(".jumo/operators/orphan.yml", "RoleDefinition", "orphan", {"ownerRealm": "home"})
	violations := data.jumo.corpus.deny with input as array.flatten([valid_corpus, [misplaced, connector, surface, orphan]])
	has_rule(violations, "corpus.project.location")
	has_rule(violations, "corpus.unique.operation-id")
	has_rule(violations, "corpus.unique.repository-binding-id")
	has_rule(violations, "corpus.unique-interface-facet")
	has_rule(violations, "corpus.assignment.exactly-one")
}

test_rejects_base_project_kit_and_federation_invariants if {
	project := document(".jumo/projects/active.yml", "Project", "active", {"lifecycle": "ACTIVE", "personalSpaces": []})
	profile := document(".jumo/capability-profiles/alias.yml", "CapabilityProfile", "alias", {"ownerRealm": "home", "requirementProfileRef": "alias", "intent": "Échange conversationnel immédiat pour clarifier une intention."})
	tasks := document(".jumo/golden-tasks/duplicate.yml", "GoldenTaskSet", "duplicate", {"ownerRealm": "home", "cases": [{"id": "same"}, {"id": "same"}]})
	binding := document(".jumo/kit-bindings/kit.yml", "KitBinding", "kit", {"ownerRealm": "home", "kit": {"repository": "expected", "commit": "expected"}})
	certification := document(".jumo/kit-certifications/cert.yml", "KitReleaseCertification", "cert", {"repository": "expected", "commit": "expected", "manifestDigest": "expected", "signedBy": "implementer", "verifiedBy": "implementer"})
	lock := document(".jumo/kit-locks/bad.yml", "KitLock", "bad", {"ownerRealm": "home", "bindingRef": "kit", "certificationRef": "cert", "repository": "wrong", "commit": "wrong", "manifestDigest": "wrong", "rendered": [{"targetPath": "same"}, {"targetPath": "same"}]})
	peer := document(".jumo/federated-peers/self.yml", "FederatedPeer", "self", {"ownerRealm": "home", "peerRealm": "home"})
	violations := data.jumo.corpus.deny with input as array.flatten([valid_corpus, [project, profile, tasks, binding, certification, lock, peer]])
	has_rule(violations, "corpus.project.personal-space")
	has_rule(violations, "corpus.capability-profile.alias")
	has_rule(violations, "corpus.golden-task.case-unique")
	has_rule(violations, "corpus.kit-lock.certification")
	has_rule(violations, "corpus.kit-lock.binding")
	has_rule(violations, "corpus.kit-lock.target-unique")
	has_rule(violations, "corpus.federation.no-self")
	has_rule(violations, "corpus.independence.release")
}

test_rejects_dead_capability_reference if {
	bad := document(
		".jumo/agents/bad.yml",
		"AgentDefinition",
		"bad",
		{"requestedCapabilities": ["undeclared.action"]},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.reference.capability")
}

test_rejects_journey_dead_capability_reference if {
	bad := document(
		".jumo/journeys/bad.yml",
		"AssistedJourney",
		"bad",
		{"emitsCapability": "undeclared.action"},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.reference.capability")
}

test_rejects_journey_dead_budget_reference if {
	bad := document(
		".jumo/journeys/bad.yml",
		"AssistedJourney",
		"bad",
		{"budgetRef": "missing-budget"},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.reference.kind-id")
}

test_rejects_journey_dead_subjourney_reference if {
	bad := document(
		".jumo/journeys/bad.yml",
		"AssistedJourney",
		"bad",
		{"steps": [{"id": "s", "name": "S", "stepKind": "SUB_JOURNEY", "subJourneyRef": "missing-journey"}]},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.reference.kind-id")
}

test_rejects_journey_dead_prompt_reference if {
	bad := document(
		".jumo/journeys/bad.yml",
		"AssistedJourney",
		"bad",
		{"steps": [{"id": "s", "name": "S", "stepKind": "DIALOGUE_COLLECT", "promptRef": "missing-prompt"}]},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.reference.kind-id")
}

test_rejects_dead_kind_reference if {
	bad := document(
		".jumo/work/bad.yml",
		"WorkOrder",
		"bad",
		{"operatorRef": "missing", "projectRef": "jumo", "state": "PROPOSED", "pathScope": ["docs/**"]},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.reference.kind-id")
}

test_rejects_cross_realm_generic_reference if {
	other_realm := document(".jumo/realms/other.yml", "RealmTemplate", "other", {})
	profile := document(".jumo/worker-profiles/other.yml", "WorkerRequirementProfile", "other-profile", {"ownerRealm": "other"})
	capability_profile := document(".jumo/capability-profiles/bad.yml", "CapabilityProfile", "bad", {"ownerRealm": "home", "requirementProfileRef": "other-profile"})
	missing_realm := document(".jumo/worker-profiles/missing.yml", "WorkerRequirementProfile", "missing-realm", {"ownerRealm": "absent"})
	violations := data.jumo.corpus.deny with input as array.flatten([valid_corpus, [other_realm, profile, capability_profile, missing_realm]])
	has_rule(violations, "corpus.reference.same-realm")
	has_rule(violations, "corpus.reference.owner-realm")
}

test_rejects_cross_realm_reference if {
	other_realm := document(".jumo/realms/other.yml", "RealmTemplate", "other", {})
	contents := object.union(valid_corpus[6].contents, {"spec": {"ownerRealm": "other", "operatorRef": "implementer", "bearer": {"kind": "HUMAN"}}})
	mutated := array.concat(array.slice(valid_corpus, 0, 6), [{"path": valid_corpus[6].path, "contents": contents}])
	input_corpus := array.flatten([
		mutated,
		array.slice(valid_corpus, 7, count(valid_corpus)),
		[other_realm],
	])
	violations := data.jumo.corpus.deny with input as input_corpus
	has_rule(violations, "corpus.realm.role-assignment")
}

test_rejects_self_verification if {
	bad := document(
		".jumo/work/self-review.yml",
		"WorkOrder",
		"self-review",
		{
			"operatorRef": "implementer",
			"verifierRef": "implementer",
			"projectRef": "jumo",
			"state": "PROPOSED",
			"pathScope": ["docs/**"],
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.independence.work-verifier")
}

test_rejects_one_agent_bearing_both_producer_and_verifier if {
	producer := document(
		".jumo/operator-assignments/one.yml", "RoleAssignment", "one",
		{"ownerRealm": "home", "operatorRef": "builder", "bearer": {"kind": "AGENT", "archetypeRef": "solo"}},
	)
	checker := document(
		".jumo/operator-assignments/two.yml", "RoleAssignment", "two",
		{"ownerRealm": "home", "operatorRef": "checker", "bearer": {"kind": "AGENT", "archetypeRef": "solo"}},
	)
	bad := document(".jumo/work/one-agent.yml", "WorkOrder", "one-agent", {
		"operatorRef": "builder", "verifierRef": "checker", "projectRef": "jumo",
		"state": "PROPOSED", "pathScope": ["docs/**"],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [producer, checker, bad])
	has_rule(violations, "corpus.independence.work-verifier-bearer")
}

test_rejects_federated_peer_bearer_without_ref if {
	bad := document(".jumo/operator-assignments/bad-fed.yml", "RoleAssignment", "bad-fed", {
		"ownerRealm": "home", "operatorRef": "implementer",
		"bearer": {"kind": "FEDERATED_PEER"},
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.bearer.federated-peer-ref-required")
}

test_accepts_federated_peer_bearer_with_ref if {
	peer := document(".jumo/federated-peers/partner.yml", "FederatedPeer", "partner", {
		"ownerRealm": "home", "remoteRealm": "partner-realm", "endpointUrl": "https://marine.yamaka.me",
	})
	assignment := document(".jumo/operator-assignments/fed-role.yml", "RoleAssignment", "fed-role", {
		"ownerRealm": "home", "operatorRef": "peer-reviewer",
		"bearer": {"kind": "FEDERATED_PEER", "federatedPeerRef": "partner", "remoteOperatorKey": "marine-cos"},
	})
	role := document(".jumo/roles/peer-reviewer.yml", "RoleDefinition", "peer-reviewer", {
		"ownerRealm": "home", "mission": "Independent review from partner realm",
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [peer, assignment, role])
	not has_rule(violations, "corpus.bearer.federated-peer-ref-required")
}

test_rejects_producer_and_verifier_sharing_a_provider_independence_group if {
	producer := document(".jumo/operator-assignments/one.yml", "RoleAssignment", "one", {
		"ownerRealm": "home", "operatorRef": "builder",
		"bearer": {"kind": "AGENT", "archetypeRef": "builder", "defaultWorkerRequirementRef": "draft"},
	})
	checker := document(".jumo/operator-assignments/two.yml", "RoleAssignment", "two", {
		"ownerRealm": "home", "operatorRef": "checker",
		"bearer": {"kind": "AGENT", "archetypeRef": "checker", "defaultWorkerRequirementRef": "draft"},
	})
	requirement := document(".jumo/worker-requirements/draft.yml", "WorkerRequirementProfile", "draft", {
		"quality": {"reasoningEffort": "HIGH"},
	})
	account := document(".jumo/providers/one.yml", "ProviderAccount", "one", {
		"independenceGroup": "anthropic",
		"routing": {"effortLadder": [{"rung": "HIGH", "modelAlias": "claude"}]},
	})
	bad := document(".jumo/work/same-provider.yml", "WorkOrder", "same-provider", {
		"operatorRef": "builder", "verifierRef": "checker", "projectRef": "jumo",
		"state": "PROPOSED", "pathScope": ["docs/**"],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [producer, checker, requirement, account, bad])
	has_rule(violations, "corpus.independence.work-verifier-provider")
}

test_rejects_work_order_with_unroutable_project_team_combination if {
	eligibility := document(".jumo/operator-bindings/jumo-delivery.yml", "RoutingEligibility", "jumo-delivery", {
		"ownerRealm": "home", "projectRef": "jumo", "teamRefs": ["software"],
	})
	bad := document(".jumo/work/unroutable.yml", "WorkOrder", "unroutable", {
		"operatorRef": "implementer", "teamRef": "unroutable-team", "projectRef": "jumo",
		"state": "PROPOSED", "pathScope": ["docs/**"],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [eligibility, bad])
	has_rule(violations, "corpus.routing.work-order-eligibility")
}

test_accepts_work_order_with_eligible_project_team_combination if {
	eligibility := document(".jumo/operator-bindings/jumo-delivery.yml", "RoutingEligibility", "jumo-delivery", {
		"ownerRealm": "home", "projectRef": "jumo", "teamRefs": ["software"],
	})
	good := document(".jumo/work/eligible.yml", "WorkOrder", "eligible", {
		"operatorRef": "implementer", "teamRef": "software", "projectRef": "jumo",
		"state": "PROPOSED", "pathScope": ["docs/**"],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [eligibility, good])
	not has_rule(violations, "corpus.routing.work-order-eligibility")
}

realm_corpus_with_enforcement(base, enforcement) := array.flatten([
	[base[0]],
	[{"path": base[1].path, "contents": object.union(base[1].contents, {"spec": {"enforcement": enforcement}})}],
	array.slice(base, 2, count(base)),
])

test_advisory_independent_verification_is_unaffected if {
	violations := data.jumo.corpus.deny with input as realm_corpus_with_enforcement(valid_corpus, {"independentVerification": "ADVISORY"})
	count(violations) == 0
}

test_rejects_enforced_independent_verification_without_evidence if {
	violations := data.jumo.corpus.deny with input as realm_corpus_with_enforcement(valid_corpus, {"independentVerification": "ENFORCED"})
	has_rule(violations, "corpus.realm.independent-verification-evidence")
}

test_rejects_enforced_independent_verification_with_stale_evidence if {
	stale_observed_at := time.format(time.now_ns() - ((48 * 3600) * 1000000000))
	enforcement := {
		"independentVerification": "ENFORCED",
		"independentVerificationEvidenceRef": "docs/testing/independent-verification.md",
		"independentVerificationObservedAt": stale_observed_at,
		"independentVerificationEvidenceMaxAge": "PT24H",
	}
	violations := data.jumo.corpus.deny with input as realm_corpus_with_enforcement(valid_corpus, enforcement)
	has_rule(violations, "corpus.realm.independent-verification-evidence")
}

test_rejects_enforced_independent_verification_with_malformed_max_age if {
	enforcement := {
		"independentVerification": "ENFORCED",
		"independentVerificationEvidenceRef": "docs/testing/independent-verification.md",
		"independentVerificationObservedAt": time.format(time.now_ns()),
		"independentVerificationEvidenceMaxAge": "not-a-duration",
	}
	violations := data.jumo.corpus.deny with input as realm_corpus_with_enforcement(valid_corpus, enforcement)
	has_rule(violations, "corpus.realm.independent-verification-evidence")
}

test_accepts_enforced_independent_verification_with_fresh_evidence if {
	enforcement := {
		"independentVerification": "ENFORCED",
		"independentVerificationEvidenceRef": "docs/testing/independent-verification.md",
		"independentVerificationObservedAt": time.format(time.now_ns()),
		"independentVerificationEvidenceMaxAge": "PT24H",
	}
	violations := data.jumo.corpus.deny with input as realm_corpus_with_enforcement(valid_corpus, enforcement)
	not has_rule(violations, "corpus.realm.independent-verification-evidence")
}

test_rejects_duplicate_realm_ingress if {
	first := document(".jumo/realms/first.yml", "RealmTemplate", "first", {"ingress": {"subdomain": "acme", "baseDomain": "jumo.dev"}})
	second := document(".jumo/realms/second.yml", "RealmTemplate", "second", {"ingress": {"subdomain": "acme", "baseDomain": "jumo.dev"}})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [first, second])
	has_rule(violations, "corpus.realm.ingress-unique")
}

test_accepts_distinct_subdomains_under_same_base_domain if {
	first := document(".jumo/realms/first.yml", "RealmTemplate", "first", {"ingress": {"subdomain": "acme", "baseDomain": "jumo.dev"}})
	second := document(".jumo/realms/second.yml", "RealmTemplate", "second", {"ingress": {"subdomain": "beta", "baseDomain": "jumo.dev"}})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [first, second])
	not has_rule(violations, "corpus.realm.ingress-unique")
}

test_accepts_two_realms_without_ingress if {
	first := document(".jumo/realms/first.yml", "RealmTemplate", "first", {})
	second := document(".jumo/realms/second.yml", "RealmTemplate", "second", {})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [first, second])
	not has_rule(violations, "corpus.realm.ingress-unique")
}

test_rejects_invalid_realm_exposure_mode if {
	bad := document(".jumo/realms/bad-exposure.yml", "RealmTemplate", "bad-exposure", {"exposure": "INVALID_EXPOSURE"})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.realm.exposure-valid")
}

test_accepts_valid_realm_exposure_modes if {
	stealth := document(".jumo/realms/stealth.yml", "RealmTemplate", "stealth", {"exposure": "PRIVATE_STEALTH"})
	shared := document(".jumo/realms/shared.yml", "RealmTemplate", "shared", {"exposure": "CLUSTER_SHARED"})
	public_disc := document(".jumo/realms/public.yml", "RealmTemplate", "public", {"exposure": "PUBLIC_DISCOVERABLE"})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [stealth, shared, public_disc])
	not has_rule(violations, "corpus.realm.exposure-valid")
}

test_rejects_unfinished_dependency if {
	bad := document(
		".jumo/work/dependent.yml",
		"WorkOrder",
		"dependent",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "IN_PROGRESS",
			"dependsOn": ["change"],
			"pathScope": ["docs/**"],
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.dependency-complete")
}

test_accepted_work_requires_criteria_scope_and_ring if {
	bad := document(
		".jumo/work/unbounded.yml",
		"WorkOrder",
		"unbounded",
		{"operatorRef": "implementer", "projectRef": "jumo", "state": "ACCEPTED"},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.accepted-criteria")
	has_rule(violations, "corpus.work.accepted-scope")
	has_rule(violations, "corpus.work.accepted-ring")
}

test_completed_work_requires_evidence if {
	bad := document(
		".jumo/work/no-evidence.yml",
		"WorkOrder",
		"no-evidence",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "COMPLETED",
			"acceptanceCriteria": [{"id": "AC1", "statement": "The result is reproducible."}],
			"pathScope": ["docs/**"],
			"ring": "RING_1_CONTROL_PLANE",
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.completed-evidence")
}

test_completed_work_requires_ledger_location if {
	bad := document(
		".jumo/work/stray-completed.yml",
		"WorkOrder",
		"stray-completed",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "COMPLETED",
			"acceptanceCriteria": [{"id": "AC1", "statement": "The result is reproducible."}],
			"pathScope": ["docs/**"],
			"ring": "RING_1_CONTROL_PLANE",
			"evidenceRefs": ["commit:jumo 0000000"],
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.completed-in-ledger")
}

test_accepts_completed_work_in_ledger if {
	good := document(
		".jumo/work/ledger/closed.yml",
		"WorkOrder",
		"closed",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "COMPLETED",
			"acceptanceCriteria": [{"id": "AC1", "statement": "The result is reproducible."}],
			"pathScope": ["docs/**"],
			"ring": "RING_1_CONTROL_PLANE",
			"evidenceRefs": ["commit:jumo 0000000"],
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [good])
	not has_rule(violations, "corpus.work.completed-in-ledger")
}

test_decline_reason_matches_declined_state if {
	missing := document(
		".jumo/work/declined.yml",
		"WorkOrder",
		"declined",
		{"operatorRef": "implementer", "projectRef": "jumo", "state": "DECLINED"},
	)
	unexpected := document(
		".jumo/work/not-declined.yml",
		"WorkOrder",
		"not-declined",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "PROPOSED",
			"declineReason": "OUT_OF_SCOPE",
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [missing, unexpected])
	has_rule(violations, "corpus.work.decline-reason-required")
	has_rule(violations, "corpus.work.decline-reason-forbidden")
}

test_rejects_missing_verifier_reference if {
	bad := document(
		".jumo/work/missing-reviewer.yml",
		"WorkOrder",
		"missing-reviewer",
		{
			"operatorRef": "implementer",
			"verifierRef": "missing",
			"teamRef": "software",
			"projectRef": "jumo",
			"state": "PROPOSED",
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.reference.kind-id")
}

test_rejects_verifier_without_team if {
	bad := document(
		".jumo/work/no-team.yml",
		"WorkOrder",
		"no-team",
		{
			"operatorRef": "implementer",
			"verifierRef": "reviewer",
			"projectRef": "jumo",
			"state": "PROPOSED",
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.independence.work-verifier-team")
}

test_rejects_unroutable_verifier if {
	team := document(
		".jumo/operator-teams/build-only.yml",
		"TeamSpec",
		"build-only",
		{"ownerRealm": "home", "members": [{"operatorRef": "implementer", "independenceGroup": "build"}]},
	)
	bad := document(
		".jumo/work/unroutable-reviewer.yml",
		"WorkOrder",
		"unroutable-reviewer",
		{
			"operatorRef": "implementer",
			"verifierRef": "reviewer",
			"teamRef": "build-only",
			"projectRef": "jumo",
			"state": "PROPOSED",
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [team, bad])
	has_rule(violations, "corpus.independence.work-verifier-route")
}

test_rejects_verifier_without_review_capability if {
	bad := document(
		".jumo/work/incapable-reviewer.yml",
		"WorkOrder",
		"incapable-reviewer",
		{
			"operatorRef": "reviewer",
			"verifierRef": "implementer",
			"teamRef": "software",
			"projectRef": "jumo",
			"state": "PROPOSED",
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.independence.work-verifier-capability")
}

test_rejects_verifier_in_producer_group if {
	team := document(
		".jumo/operator-teams/same-group.yml",
		"TeamSpec",
		"same-group",
		{"ownerRealm": "home", "members": [
			{"operatorRef": "implementer", "independenceGroup": "shared"},
			{"operatorRef": "reviewer", "independenceGroup": "shared"},
		]},
	)
	bad := document(
		".jumo/work/same-group.yml",
		"WorkOrder",
		"same-group",
		{
			"operatorRef": "implementer",
			"verifierRef": "reviewer",
			"teamRef": "same-group",
			"projectRef": "jumo",
			"state": "PROPOSED",
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [team, bad])
	has_rule(violations, "corpus.independence.work-verifier-group")
}

test_rejects_ring_zero_work if {
	bad := document(
		".jumo/work/ring-zero.yml",
		"WorkOrder",
		"ring-zero",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "ACCEPTED",
			"acceptanceCriteria": [{"id": "AC1", "statement": "The root change is complete."}],
			"pathScope": ["root/**"],
			"ring": "RING_0_ROOT_OF_TRUST",
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.ring-zero")
}

test_rejects_undeclared_roadmap_ref if {
	bad := document(
		".jumo/work/undeclared-milestone.yml",
		"WorkOrder",
		"undeclared-milestone",
		{"operatorRef": "implementer", "projectRef": "jumo", "state": "PROPOSED", "roadmapRef": "not-a-milestone"},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.roadmap-ref-declared")
}

test_accepts_declared_roadmap_ref if {
	good := document(
		".jumo/work/declared-milestone.yml",
		"WorkOrder",
		"declared-milestone",
		{"operatorRef": "implementer", "projectRef": "jumo", "state": "PROPOSED", "roadmapRef": "test-milestone"},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [good])
	not has_rule(violations, "corpus.work.roadmap-ref-declared")
}

test_ledger_work_order_exempt_from_roadmap_ref_declared if {
	old := document(
		".jumo/work/ledger/pre-milestone.yml",
		"WorkOrder",
		"pre-milestone",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "COMPLETED",
			"acceptanceCriteria": [{"id": "AC1", "statement": "The historical work is done."}],
			"pathScope": ["docs/**"],
			"ring": "RING_1_CONTROL_PLANE",
			"evidenceRefs": ["commit:jumo 0000000"],
			"roadmapRef": "a-milestone-retired-before-this-scheme-existed",
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [old])
	not has_rule(violations, "corpus.work.roadmap-ref-declared")
}

test_rejects_two_node_dependency_cycle if {
	first := document(
		".jumo/work/first.yml",
		"WorkOrder",
		"first",
		{"operatorRef": "implementer", "projectRef": "jumo", "state": "PROPOSED", "dependsOn": ["second"]},
	)
	second := document(
		".jumo/work/second.yml",
		"WorkOrder",
		"second",
		{"operatorRef": "implementer", "projectRef": "jumo", "state": "PROPOSED", "dependsOn": ["first"]},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [first, second])
	has_rule(violations, "corpus.work.dependency-cycle")
}

# The four dependency rules and parent-self read spec.dependsOn and spec.parentRef, the pre
# ADR-0045 field names, while every real WorkOrder has carried dependsOnWorkOrderRefs and
# parentWorkOrderRef since the reference migration. The tests above all use the legacy shape, so
# they stayed green while the rules were inert against the actual corpus -- a real circular
# dependency had to be found and cut by hand in an evidence note on 2026-08-25 because
# dependency-cycle no longer saw it. These tests assert the current shape, so the rules cannot go
# blind to it again.
test_rejects_unfinished_structured_reference_dependency if {
	bad := document(
		".jumo/work/structured-dependent.yml",
		"WorkOrder",
		"structured-dependent",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "IN_PROGRESS",
			"dependsOnWorkOrderRefs": [{"kind": "WorkOrder", "namespace": "dev.jumo.test", "id": "change"}],
			"pathScope": ["docs/**"],
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.dependency-complete")
}

test_rejects_structured_reference_dependency_cycle if {
	first := document(
		".jumo/work/structured-first.yml",
		"WorkOrder",
		"structured-first",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "PROPOSED",
			"dependsOnWorkOrderRefs": [{"kind": "WorkOrder", "namespace": "dev.jumo.test", "id": "structured-second"}],
		},
	)
	second := document(
		".jumo/work/structured-second.yml",
		"WorkOrder",
		"structured-second",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "PROPOSED",
			"dependsOnWorkOrderRefs": [{"kind": "WorkOrder", "namespace": "dev.jumo.test", "id": "structured-first"}],
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [first, second])
	has_rule(violations, "corpus.work.dependency-cycle")
}

test_rejects_structured_self_missing_and_parent_dependencies if {
	bad := document(
		".jumo/work/structured-bad.yml",
		"WorkOrder",
		"structured-bad",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "PROPOSED",
			"dependsOnWorkOrderRefs": [
				{"kind": "WorkOrder", "namespace": "dev.jumo.test", "id": "structured-bad"},
				{"kind": "WorkOrder", "namespace": "dev.jumo.test", "id": "missing"},
			],
			"parentWorkOrderRef": {"kind": "WorkOrder", "namespace": "dev.jumo.test", "id": "structured-bad"},
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.dependency-self")
	has_rule(violations, "corpus.work.dependency-resolves")
	has_rule(violations, "corpus.work.parent-self")
}

test_rejects_self_missing_and_parent_dependencies if {
	bad := document(
		".jumo/work/bad-dependencies.yml",
		"WorkOrder",
		"bad-dependencies",
		{"operatorRef": "implementer", "projectRef": "jumo", "state": "PROPOSED", "dependsOn": ["bad-dependencies", "missing"], "parentRef": "bad-dependencies"},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.dependency-self")
	has_rule(violations, "corpus.work.dependency-resolves")
	has_rule(violations, "corpus.work.parent-self")
}

test_interface_contract_scope_requires_controlled_exception if {
	bad := document(
		".jumo/work/interface-proposed.yml",
		"WorkOrder",
		"interface-proposed",
		{
			"operatorRef": "implementer",
			"projectRef": "jumo",
			"state": "PROPOSED",
			"pathScope": [".jumo/interfaces/**"],
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.scope-boundary")
}

test_interface_contract_scope_accepts_ring_one_independent_review if {
	good := document(
		".jumo/work/interface-reviewed.yml",
		"WorkOrder",
		"interface-reviewed",
		{
			"operatorRef": "implementer",
			"verifierRef": "reviewer",
			"teamRef": "software",
			"projectRef": "jumo",
			"state": "ACCEPTED",
			"acceptanceCriteria": [{"id": "AC1", "statement": "The interface contract is reviewed."}],
			"pathScope": [".jumo/interfaces/**"],
			"ring": "RING_1_CONTROL_PLANE",
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [good])
	not has_rule(violations, "corpus.work.scope-boundary")
}

test_rejects_authority_scope_without_literal_prefix if {
	bad := document(
		".jumo/work/wide.yml",
		"WorkOrder",
		"wide",
		{"operatorRef": "implementer", "projectRef": "jumo", "state": "PROPOSED", "pathScope": ["**"]},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.work.scope-boundary")
}

test_rejects_surface_obligation_downgrade if {
	bad := document(
		".jumo/interfaces/bad.yml",
		"InterfaceSurface",
		"bad",
		{
			"ownerRealm": "home",
			"facets": [],
			"surfaces": [{
				"id": "bad",
				"proposes": ["document.read"],
				"writePaths": [
					{
						"pathGlob": "docs/**",
						"capabilityRef": "document.read",
						"ring": "RING_1_CONTROL_PLANE",
						"requiredObligations": [],
					},
					{
						"pathGlob": ".jumo/interfaces/bad.yml",
						"capabilityRef": "change.review",
						"ring": "RING_1_CONTROL_PLANE",
						"requiredObligations": [],
					},
				],
			}],
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.interface.write-obligations")
	has_rule(violations, "corpus.interface.ring-ceiling")
	has_rule(violations, "corpus.interface.write-capability")
	has_rule(violations, "corpus.interface.no-self-write")
}

test_rejects_interface_repository_boundaries if {
	project := document("jumo.yml", "Project", "docs", {"documentation": {"roots": [{"path": "docs", "maximumAudience": "REALM_PRIVATE"}]}})
	bad := document(".jumo/interfaces/boundaries.yml", "InterfaceSurface", "boundaries", {
		"facets": [{"entity": "Immutable", "create": "NONE", "modify": "NONE", "retire": "NONE", "commands": ["MUTATE"]}],
		"surfaces": [{
			"audience": "PUBLISHED_SUMMARY", "reads": ["DOCUMENT_TREE"], "proposes": ["project.create", "document.change.propose"],
			"writePaths": [
				{"capabilityRef": "project.create", "pathGlob": "anywhere/**"},
				{"capabilityRef": "document.change.propose", "pathGlob": "README.md"},
				{"capabilityRef": "project.create", "pathGlob": ".jumo/interfaces/**"},
			],
		}],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [project, bad])
	every rule in {
		"corpus.interface.immutable-command", "corpus.interface.document-audience",
		"corpus.interface.project-create-path", "corpus.interface.document-proposal-path",
		"corpus.interface.forbidden-write-root",
	} {
		has_rule(violations, rule)
	}
	without_project := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(without_project, "corpus.interface.document-root")
}

test_rejects_contract_proposal_path_outside_jumo if {
	bad := document(".jumo/interfaces/contracts.yml", "InterfaceSurface", "contracts", {
		"surfaces": [{
			"id": "contracts",
			"proposes": ["contract.change.propose"],
			"writePaths": [{
				"capabilityRef": "contract.change.propose",
				"pathGlob": "docs/**",
				"ring": "RING_1_CONTROL_PLANE",
				"editor": "STRUCTURED_YAML",
				"requiredObligations": ["RETAIN_PROVENANCE"],
			}],
		}],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [bad])
	has_rule(violations, "corpus.interface.contract-proposal-path")
}

test_rejects_interface_theme_narration_and_document_root_reference_loss if {
	theme := document(".jumo/themes/theme.yml", "ThemePack", "theme", {"terminology": [{"roleKey": "known"}]})
	surface := document(".jumo/interfaces/theme.yml", "InterfaceSurface", "theme", {"surfaces": [{"presenceRef": "missing"}]})
	self_description := document(".jumo/self-descriptions/bad.yml", "SelfDescription", "bad", {"answers": [{"narrationPromptRef": "missing"}]})
	project := document("jumo.yml", "Project", "nested", {"documentation": {"roots": [
		{"path": "docs", "maximumAudience": "REALM_PRIVATE"},
		{"path": "docs/public", "maximumAudience": "PUBLISHED_SUMMARY"},
	]}})
	violations := data.jumo.corpus.deny with input as array.flatten([valid_corpus, [theme, surface, self_description, project]])
	has_rule(violations, "corpus.interface.presence")
	has_rule(violations, "corpus.self-description.narration")
	has_rule(violations, "corpus.documentation-root.monotonic")
}

# LOT 4 tests — Shared repository co-governance
test_rejects_co_owner_realm_without_mirrored_binding if {
	# Goulven declares shared repo but Marine has no matching binding
	project_g := document("goulven/jumo.yml", "Project", "shared-vacation", {
		"ownerRealm": "home",
		"repositoryBindings": [{
			"id": "vacation", "provider": "github", "repository": "famille/vacances",
			"coOwnerRealms": ["marine"], "approvalPolicy": "MUTUAL_CONSENT",
		}],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [project_g])
	has_rule(violations, "corpus.project.mutual-repo-binding")
}

test_accepts_mutual_consent_when_both_realms_bind if {
	# Both realms bind the same repository
	project_g := document("goulven/jumo.yml", "Project", "shared-vacation", {
		"ownerRealm": "home",
		"repositoryBindings": [{
			"id": "vacation", "provider": "github", "repository": "famille/vacances",
			"coOwnerRealms": ["marine"], "approvalPolicy": "MUTUAL_CONSENT",
		}],
	})
	project_m := document("marine/jumo.yml", "Project", "shared-vacation-m", {
		"ownerRealm": "marine",
		"repositoryBindings": [{"id": "vacation-m", "provider": "github", "repository": "famille/vacances"}],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [project_g, project_m])
	not has_rule(violations, "corpus.project.mutual-repo-binding")
}

# LOT 5 tests — External federation exposure
test_rejects_federated_peer_without_discoverable_exposure if {
	peer := document(".jumo/federated-peers/ext.yml", "FederatedPeer", "ext", {
		"ownerRealm": "home", "peerRealm": "partner",
		"endpoint": "https://partner.example.com", "transport": "HTTP_CLOUDEVENTS",
		"mtls": {"peerCertificateSha256": "sha256:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"},
		"signing": {"peerKeyId": "k1", "peerPublicKeySha256": "sha256:bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"},
		"profileRefs": ["base-profile"],
	})

	# valid_corpus has RealmTemplate "home" with no exposure field → defaults to PRIVATE_STEALTH
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [peer])
	has_rule(violations, "corpus.federation.peer-requires-discoverable-exposure")
}

test_accepts_federated_peer_with_discoverable_exposure if {
	realm_discoverable := document(".jumo/realms/home-public.yml", "RealmTemplate", "home-public", {
		"exposure": "PUBLIC_DISCOVERABLE",
	})
	peer := document(".jumo/federated-peers/ext2.yml", "FederatedPeer", "ext2", {
		"ownerRealm": "home-public", "peerRealm": "partner",
		"endpoint": "https://partner.example.com", "transport": "HTTP_CLOUDEVENTS",
		"mtls": {"peerCertificateSha256": "sha256:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"},
		"signing": {"peerKeyId": "k1", "peerPublicKeySha256": "sha256:bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"},
		"profileRefs": ["base-profile"],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [realm_discoverable, peer])
	not has_rule(violations, "corpus.federation.peer-requires-discoverable-exposure")
}

# LOT 3 tests — Execution Cell workspace isolation
test_rejects_execution_cell_mounting_foreign_realm_personal_space if {
	# Marine's PersonalSpace, mounted into Goulven's ExecutionCell
	space_m := document(".jumo/personal-spaces/marine.yml", "PersonalSpace", "marine-space", {
		"ownerRealm": "marine", "ownerPrincipal": "marine", "workspacePath": "/workspace/marine", "storageQuotaBytes": 1048576,
	})
	cell_g := document(".jumo/execution-cells/goulven.yml", "ExecutionCell", "goulven-cell", {
		"ownerRealm": "home", "mountedPersonalSpaceRefs": ["marine-space"],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [space_m, cell_g])
	has_rule(violations, "corpus.cell.workspace-realm-scoped")
}

test_accepts_execution_cell_mounting_own_realm_personal_space if {
	space_g := document(".jumo/personal-spaces/goulven.yml", "PersonalSpace", "goulven-space", {
		"ownerRealm": "home", "ownerPrincipal": "goulven", "workspacePath": "/workspace/goulven", "storageQuotaBytes": 1048576,
	})
	cell_g := document(".jumo/execution-cells/goulven.yml", "ExecutionCell", "goulven-cell", {
		"ownerRealm": "home", "mountedPersonalSpaceRefs": ["goulven-space"],
	})
	violations := data.jumo.corpus.deny with input as array.concat(valid_corpus, [space_g, cell_g])
	not has_rule(violations, "corpus.cell.workspace-realm-scoped")
}
