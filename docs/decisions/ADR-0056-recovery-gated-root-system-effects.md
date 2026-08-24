---
title: ADR-0056 — Recovery-gated root system effects on user-provided machines
status: accepted
normative: true
audience: PROJECT_SCOPED
---

# ADR-0056 — Recovery-gated root system effects on user-provided machines

## Decision

ADR-0047 continues to reject arbitrary shell commands as machine administration. One separate,
narrow effect-applier is admitted for owner-directed system work on an opted-in
`USER_PROVIDED` Linux/systemd/amd64 machine.

1. The capability is never exposed as a generic MCP tool. A proposal contains the exact UTF-8
   script digest, interpreter, target machine, network posture, timeout, expected postconditions
   and recovery-plan digest. No field may be changed after approval.
2. The owner approves the exact proposal with fresh step-up authentication. One owner is the v2
   quorum. `LOCAL_DEV` does not waive step-up, recovery evidence or the local kill switch.
3. Authorization requires a recent attestation of a restorable snapshot or backup and its tested
   restoration procedure. Warning-only recovery is insufficient.
4. A root-owned local kill switch disables the systemd execution unit independently of the control
   plane. The applier refuses while `/etc/jumo/disable-system-effects` exists.
5. The script runs through a transient systemd unit with a clean environment, fixed
   `/bin/bash --noprofile --norc`, bounded resources and network disabled by default. Any egress is
   part of the approved proposal.
6. Intent is recorded before dispatch and completion evidence is sanitized. A lost result is
   `UNKNOWN`; automatic retry is prohibited until reconciliation or recovery is recorded.

## Alternatives

- Exposing `system.exec` through MCP was rejected because tool discovery would conflate connector
  semantics with unrestricted host authority.
- Owner approval without tested recovery was rejected because consent does not make an
  irreversible machine mutation recoverable.
- A control-plane-only kill switch was rejected because it fails when connectivity or the control
  plane is unavailable.

## Consequences

- The generic pull supervisor may host a dedicated `SYSTEM_EFFECT` driver only after this ADR's
  contracts, policy and disposable-VM runtime recipe are accepted.
- Phones, non-systemd systems, ARM machines and home-automation drivers remain outside this v2
  effect applier.
