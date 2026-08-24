---
title: ADR-0019 — Proportional effort and worker selection
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [12]
---

# ADR-0019 — Proportional effort and worker selection

## Boundary

Nestor coordination varies latency and cognitive depth, but every action candidate stays
structured, catalog-bound and non-authoritative; contextual risk can only strengthen policy
obligations and never grants execution authority. The `proportional-effort` principle
(`.jumo/principles/core.yml`) requires cognitive effort and operator interruption in direct
proportion to evidence, stakes, and task requirements. Nestor remains a single agent identity
(Chief of Staff) — multiple concurrent instances or model-specific personalities are forbidden —
so audit integrity, a continuous transcript, and a single interactive identity hold. Cognitive
depth is carried dynamically per turn, per process stage, or through role defaults:

1. **WorkerRequirementProfile**: a multi-dimensional requirement vector (`taskClasses`, `context`,
   `interaction`, `quality`, `limits`) declaring intent, latency ceiling, cost class, and
   `reasoningEffort` — never a provider, a model, or an aggregate power score.
2. **CapabilityProfile**: a human-facing named preset over a `WorkerRequirementProfile`; the
   cockpit presents only human-readable intentions (`intent`), never models or power scores.
3. **ProviderAccount.routing.effortLadder**: deterministic resolution from `reasoningEffort` to a
   model alias, inherited from the declared `ProviderPlatform` unless overridden; both are
   Git-declared and reviewed per Realm.

`ConversationService` resolves `task` -> `PromptTemplate` -> `WorkerRequirementProfile` -> `ProviderAccount` -> matching effort rung deterministically and fail-closed; a rung with no declaring or inheriting account fails resolution explicitly with recorded evidence — silent fallback to a default or expensive model is prohibited. Fast coordination is a latency and cost profile, not an intent classifier, an allow/deny list, or an authority boundary: every turn is a structured Nestor proposal validated against the exact action catalog, an unknown operation is refused, and a declared operation stays only a candidate until policy and a trusted worker act.

When `WorkerInteractionRequirement.structuredOutput` is `REQUIRED`, the worker returns a structured sufficiency signal with its answer. A profile may select `AUTO_BOUNDED`: on an `INSUFFICIENT_NEEDS_DEPTH` signal, `ConversationService` retries once at the next effort rung, no higher than the profile ceiling and only within the same `ResourceBudget`; otherwise it offers a user decision under `ResourceBudget.onExhaustion: REQUEST_HUMAN_DECISION`. A mandatory contextual risk appraisal for a HIGH or uncertain operation is distinct: it uses a dedicated requirement profile of the same Nestor identity and can only strengthen the risk floor, never authorize an action or waive an obligation.

## Alternatives

- **Multiple Nestor instances** (e.g. Fast vs Deep): rejected — forking identities divides the
  transcript, confuses audit provenance, and exposes internal model mechanics to the user.
- **Pre-routing LLM arbiter**: rejected — an auxiliary model before each turn is non-deterministic
  and imposes latency and cost on every fast turn.
- **Lexical intent or safety filters**: rejected — natural-language matching cannot constitute
  connector authority; the signed catalog, policy and trusted worker remain the authority path.
- **User-facing model or speed sliders**: rejected — exposing model names or power levels violates
  the `CapabilityProfile` abstraction.

## Consequences

Runtime routing is deterministic, auditable, and checked against OPA during interactive dispatch
(`INTERACTIVE_INVOCATION`). A bounded automatic escalation is a retry of the same invocation, never
a new authority grant, and retains its reason code in sanitized evidence. When role assignments
declare `defaultWorkerRequirementRef`, the producing and verifying roles (e.g. `lead-architect` and
`qa-security-reviewer`) must resolve to disjoint provider `independenceGroup`s, preventing shared
failure modes.
