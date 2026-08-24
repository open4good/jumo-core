---
search:
  boost: 5.0
---

# Slot: evidenceDigest

<div data-search-exclude markdown="1">



URI: [jumo:evidenceDigest](https://jumo.dev/schemas/jumo-v1/evidenceDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminResult](MachineAdminResult.md) | Result and sanitized evidence of an Ansible admin command execution |  no  |
| [WorkloadCommandResult](WorkloadCommandResult.md) | Terminal outcome of a claimed WorkloadCommand, sanitized before it leaves the... |  no  |
| [CliInvocationResult](CliInvocationResult.md) | Sanitized final output payload, exit code, and evidence digest from a CLI exe... |  no  |
| [McpCatalogAssessment](McpCatalogAssessment.md) |  |  no  |
| [McpReconciliationCandidate](McpReconciliationCandidate.md) |  |  no  |
| [McpReconciliationDecision](McpReconciliationDecision.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminResult](MachineAdminResult.md), [WorkloadCommandResult](WorkloadCommandResult.md), [CliInvocationResult](CliInvocationResult.md), [McpCatalogAssessment](McpCatalogAssessment.md), [McpReconciliationCandidate](McpReconciliationCandidate.md), [McpReconciliationDecision](McpReconciliationDecision.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:evidenceDigest |
| native | jumo:evidenceDigest |




## LinkML Source

<details>
```yaml
name: evidenceDigest
domain_of:
- MachineAdminResult
- WorkloadCommandResult
- CliInvocationResult
- McpCatalogAssessment
- McpReconciliationCandidate
- McpReconciliationDecision
range: string

```
</details></div>