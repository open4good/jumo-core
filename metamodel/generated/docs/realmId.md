---
search:
  boost: 5.0
---

# Slot: realmId

<div data-search-exclude markdown="1">



URI: [jumo:realmId](https://jumo.dev/schemas/jumo-v1/realmId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionSource](AttentionSource.md) |  |  no  |
| [MachineEnrollmentRequest](MachineEnrollmentRequest.md) | BYOVM one-shot machine enrollment request carrying CSR and system inventory |  no  |
| [MachineEnrollmentChallenge](MachineEnrollmentChallenge.md) | Short-lived enrollment challenge issued by the control plane |  no  |
| [DelegatedSecretGrant](DelegatedSecretGrant.md) | One response-wrapped OpenBao child token grant issued for a lease and SecretB... |  no  |
| [SessionPlan](SessionPlan.md) | Signed MCP gateway session plan scoped to one ExecutionCellLease (mcp-gateway... |  no  |
| [ApiProblem](ApiProblem.md) | RFC 9457 compliant problem details model for API errors without unconstrained... |  no  |
| [PolicyInput](PolicyInput.md) | Typed input structure evaluated by OPA policies |  no  |
| [ChangeSetProjection](ChangeSetProjection.md) | Observed record of the single atomic PR ForgeApplier opened for a ChangeSetPr... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AttentionSource](AttentionSource.md), [MachineEnrollmentRequest](MachineEnrollmentRequest.md), [MachineEnrollmentChallenge](MachineEnrollmentChallenge.md), [DelegatedSecretGrant](DelegatedSecretGrant.md), [SessionPlan](SessionPlan.md), [ApiProblem](ApiProblem.md), [PolicyInput](PolicyInput.md), [ChangeSetProjection](ChangeSetProjection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:realmId |
| native | jumo:realmId |




## LinkML Source

<details>
```yaml
name: realmId
domain_of:
- AttentionSource
- MachineEnrollmentRequest
- MachineEnrollmentChallenge
- DelegatedSecretGrant
- SessionPlan
- ApiProblem
- PolicyInput
- ChangeSetProjection
range: string

```
</details></div>