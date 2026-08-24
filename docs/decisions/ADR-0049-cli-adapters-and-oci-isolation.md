---
title: ADR-0049 — OCI containerized CLI runtimes, strict output profiles, and secret-aware sanitization
status: accepted
normative: true
audience: PROJECT_SCOPED
supersedes: [ADR-0012]
decisions: [7]
---

# ADR-0049 — OCI containerized CLI runtimes, strict output profiles, and secret-aware sanitization

## Boundary

This ADR defines the execution substrate, adapter profiles, and evidence rules for AI CLI workers (Codex and Claude Code).

1. **Versioned OCI Runtimes**: AI CLIs execute exclusively inside pinned, immutable OCI container images with exact digests, signatures, and SBOMs. CLI containers run rootless, with read-only root filesystems, `tmpfs` for temporary runtime state, strict CPU/memory/time limits, seccomp/AppArmor profiles, and egress allowlists. Host binaries detected outside OCI runtimes are classified as `UNMANAGED` and cannot be assigned production WorkOrders.
2. **Adapter Profiles & Structured Output Guarantees**:
   - **Codex**: Utilizes `codex exec` in ephemeral non-interactive mode with JSONL event streaming, last-message capture, and `--output-schema` derived directly from LinkML metamodel schemas (`NATIVE_JSON_SCHEMA` profile).
   - **Claude Code**: Utilizes non-interactive stream-json mode with explicit turn limits, tool allowlists, prompt-embedded JSON schema definitions, and post-extraction validation against LinkML schemas (`PROMPTED_JSON_VALIDATED` profile).
   - **No Auto-Repair**: If a CLI output fails schema validation, the execution fails closed immediately. Auto-repair loops or hallucinated JSON repairs are prohibited.
3. **Secret-Aware Sanitization Before Digest Computation**: Raw CLI standard output and standard error streams are untrusted. Sanitization and secret redaction run inside the execution cell prior to hashing or evidence collection. Evidence digests are computed exclusively on sanitized outputs; raw streams containing potential secrets are discarded and never logged or uploaded.
4. **Typed Quota Observations**: Quotas and usage metrics are strictly categorized as `OBSERVED`, `USAGE_ONLY`, `UNKNOWN`, `UNSUPPORTED`, or `STALE` with exact timestamps and provenance. Static or synthetic quota values are forbidden.
5. **Release-qualified MCP adapters**: MCP configuration is generated from a `CliMcpAdapterProfile` attached to the exact `CliRelease`, never inferred from `toolRef` or a moving vendor default. Codex and Claude Code have separate compatibility evidence. A lease receives a fresh CLI home and one generated configuration containing only the loopback Jumo gateway and the operation names projected for that lease.
6. **No inherited integration authority**: User, image, plugin, repository, and provider MCP configurations are excluded. CLI-native connectors remain disabled; file and shell primitives remain available only inside the lease workspace and OCI isolation boundary. Client-side tool filters are defense in depth. The lease gateway remains authoritative if a CLI ignores or changes its own filtering behavior.

## Alternatives

- Running CLI tools directly as host subprocesses was rejected: it failed zero-trust isolation, allowed unmonitored host access, and prevented reproducible dependency pinning.
- Prompting models to auto-repair malformed JSON was rejected: it introduces non-deterministic execution drift and masks upstream model or schema failures.

## Consequences

- `CliToolDefinition`, `CliRelease`, `CliAdapterProfile`, and `ProviderQuotaObservation` govern CLI management.
- Adapters are implemented for Codex (`NATIVE_JSON_SCHEMA`) and Claude Code (`PROMPTED_JSON_VALIDATED`).
- Each activatable release records the MCP config format, isolation arguments, tool-name encoding, config schema digest, and a real smoke-test evidence reference.
- Gemini CLI and GitHub Copilot remain declarable in the metamodel but non-activatable until full qualification.
