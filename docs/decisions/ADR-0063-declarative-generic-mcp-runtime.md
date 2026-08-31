---
title: ADR-0063 — Declarative generic MCP runtime and hot Realm activation
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [8]
---

# ADR-0063 — Declarative generic MCP runtime and hot Realm activation

## Boundary

Jumo builds, signs and releases one generic MCP runtime. A server is admitted by importing an immutable
`McpServerRecipe` into Realm Git, qualifying its exact supply on the target machine, recording an independent
`McpServerAppraisal`, and applying a separate owner-approved `McpServerBinding` lifecycle change. No MCP server
may be represented by `ConnectorDefinition`, `ConnectorPackage`, `ConnectorPackageCertification`, `McpBundle`,
`RemoteMcpService` or `ConnectorAppraisal`; `ConnectorDefinition` remains available only to non-MCP integrations
such as FORGE.

1. **Recipe/binding split.** A recipe holds one exact supply, bounded transports/versions, typed
   parameters, credential slots, egress origins, resource limits and exposure rules. A binding holds
   only non-secret parameter values, typed `SecretBinding` refs, one target `ExecutionMachine` and
   lifecycle `DECLARED`/`ENABLED`/`SUSPENDED`. Neither a recipe nor a catalogue entry grants authority.
2. **Supply forms.** Closed set: remote Streamable HTTP; OCI stdio by digest; npm/Python/uv stdio by
   exact version; native binary/archive by origin, architecture, digest and signature. No free shell,
   mutable source, URL interpolation or custom transport. npm/Python/native supplies qualify into an
   offline content-addressed snapshot (resolved lock, SBOM, materialization digest) — not a Jumo
   connector or republished image.
3. **Structured wrapping.** Arguments/env/headers are literals, typed parameter refs or
   credential-slot refs, never shell strings. The wrapping DSL covers allowlist/rename, appraised
   description, strengthened schema, fixed/hidden/defaulted arguments, JSON projection/redaction, MIME
   bounds, size/duration/rate limits, egress, auth and effect classification; anything outside it stays
   hidden until the runtime grows a primitive. A tool without `outputSchema` may expose only a
   size-bounded opaque untrusted envelope; it creates no authority or grant.
4. **Qualification and appraisal.** `McpQualificationSnapshot`/`McpMaterializationSnapshot` are
   sanitized Postgres recognized state recording negotiated protocol, every advertised primitive and
   schema, hostile-test decisions and exact digests. `McpServerAppraisal` binds those digests,
   independent of the proposer; activation is a second owner decision. Later supply, inventory, schema,
   prompt or primitive drift raises `McpQuarantine` for the whole binding — runtime blocks it, Git is
   never auto-edited.
5. **Signed plans only.** `ActiveContractSet` points atomically to a content-addressed validated Realm
   snapshot. Every session plan carries `contractSetDigest`, recipe/binding/appraisal digests, exact
   supply/materialization digest, negotiated version/transport and per-primitive exposure/grants. The
   gateway never resolves settings from unvalidated YAML.
6. **Hot pull activation.** A pull-only reconciler reads one allowlisted Realm branch read-only, proves
   commit signature, exact SHA, required CI and owner decision, revalidates LinkML/Rego, then switches
   `ActiveContractSet` atomically — no build, deploy, restart or lock mutation. Updates apply only to
   new leases; existing ones drain on their original digest. Suspension/compromise/refusal revokes
   affected leases immediately; a prior digest can be reactivated for rollback.
7. **Isolated upstream.** Per lease/binding the machine agent runs one gateway and one upstream; the
   worker reaches only the local gateway. stdio runs from the pinned OCI supply or offline snapshot as
   non-privileged, read-only filesystem, dropped capabilities, bounded resources, appraised egress, no
   runtime socket, no secret mount — only approved credential slots render into the environment.
8. **Protocol/authorization.** The pinned official MCP SDK provides stdio and Streamable HTTP,
   sessions, SSE and bounded version negotiation; historical HTTP+SSE is an explicit allowlist mode;
   unknown transports/versions/methods/capabilities refuse. HTTP auth: bounded metadata discovery,
   OAuth 2.1 with PKCE and resource indicators, refresh, preregistered clients, CIMD or declared DCR.
   Clients and tokens live in OpenBao; no token passthrough.
9. **Default-deny protocol.** Tools need appraised mapping, schema, effect and a per-call grant.
   Resources/templates bind URI/MIME/size/pagination/subscriptions and stay untrusted. Only static
   prompts at an appraised digest form bounded task instructions; dynamic prompt results stay
   untrusted. Tasks are lease- and causality-bound. Sampling is opt-in, bounded by model/calls/tokens/
   budget/data class, audited per callback, with no implicit tools. Elicitation uses a Jumo form,
   explicit consent, sensitive-field default deny and appraised URL origins. Nothing overrides policy,
   role, consent or grants.
10. **Sanitized evidence.** Audit carries Realm, recipe, binding, primitive, digests, sizes, latency,
    decision, grant, dispatch, outcome and quarantine metadata only; tokens, arguments, content,
    prompts and secrets are forbidden from logs and evidence.

## Consequences

- Adding a supported MCP server needs two approved Realm YAML contracts and no Maven module, connector
  image, release, deployment or restart.
- GitHub/Google connector-specific modules and package-era instances are removed immediately; their
  capabilities stay unavailable until requalified through the generic path — no compatibility reader.
- Delivery proceeds in protocol lots: tools; resources/prompts/tasks; then sampling/elicitation.
- The shared catalogue stays provenance/adoption guidance only; import, qualification, appraisal,
  activation and quarantine display as distinct states.

## Rejected alternatives

- A compatibility reader: rejected — it would keep two executable authorities and make the hard reset
  unverifiable.
- Generating/republishing a wrapper or image per server: rejected — generic policy primitives belong in
  the runtime; server-specific executable code defeats declarative hot adoption.
- Treating catalogue screening, supply signatures or qualification as Realm consent: rejected — none is
  an owner activation decision.
