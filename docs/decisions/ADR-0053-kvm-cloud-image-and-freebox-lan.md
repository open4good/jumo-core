---
title: ADR-0053 — Pinned cloud-image KVM and dedicated Freebox LAN
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [11]
---

# ADR-0053 — Pinned cloud-image KVM and dedicated Freebox LAN

## Boundary

Jumo provisions a KVM guest only from an explicitly released Ubuntu Cloud QCOW2 image. The host
agent verifies the release checksum and signed checksum manifest before it creates any differential
disk or libvirt domain. The initial approved release is
`ubuntu-24.04-server-cloudimg-amd64.img` from `20260814`, SHA-256
`6e40c07ae715f744f84af0bec76415cc1987dd115b4b8de437818561f01a3733`.

The guest boots with OVMF/UEFI and a signed NoCloud seed. It has a fixed control interface on
`10.203.11.0/24` and, only after fresh owner approval of an unused carrier-up Ethernet NIC, a
second interface attached to `br-freebox`. The host refuses an interface with an address, route or
existing bridge membership. The guest exposes no inbound SSH and limits its Freebox NIC to DHCP,
DNS, discovery and the detected Freebox endpoint.

Freebox association obtains an application token only after physical confirmation on the box and
writes it directly to OpenBao using the machine's delegated lease. Wi-Fi calls create a short
challenge/HMAC session; the application token is never used as a session token. The non-disruptive
recipe reads the current Wi-Fi state, obtains a fresh owner confirmation over its digest, writes
that unchanged state, reads it back, then closes the session.
