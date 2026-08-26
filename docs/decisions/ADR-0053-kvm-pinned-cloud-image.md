---
title: ADR-0053 — Pinned cloud-image KVM
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [11]
---

# ADR-0053 — Pinned cloud-image KVM

## Boundary

Jumo provisions a KVM guest only from an explicitly released Ubuntu Cloud QCOW2 image. The host
agent verifies the release checksum and signed checksum manifest before it creates any differential
disk or libvirt domain. The initial approved release is
`ubuntu-24.04-server-cloudimg-amd64.img` from `20260814`, SHA-256
`6e40c07ae715f744f84af0bec76415cc1987dd115b4b8de437818561f01a3733`.

The guest boots with OVMF/UEFI and a signed NoCloud seed. It has a fixed control interface on
`10.203.11.0/24` and no other network attachment. It exposes no inbound SSH.

A cell has no second guest interface bridged onto a home LAN, and no application-token handling
behind one: no home-LAN attachment path exists in the provisioning chain.
