---
title: ADR-0003 CI-gated owner release
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [3]
---

# ADR-0003 CI-gated owner release

## Decision

One owner triggers production deployment for an explicit current `main` SHA. The workflow fails
closed unless contracts, metamodel, secret scan, workflow lint, and Trivy checks for that exact SHA
have succeeded, then requires GitHub production-environment approval.

## Rationale and risk

The current private-repository plan cannot enforce GitHub branch protection. Direct pushes remain
an owner risk. Required CI, immutable image provenance, release-SHA validation, manual environment
approval, and retained audit URLs compensate; they do not create separation of duties.

## Operations

Do not reset PostgreSQL or OpenBao for v0. Retain the active release and one verified pre-v0 Jumo
rollback release only after host verification succeeds.
