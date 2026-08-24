---
search:
  boost: 5.0
---

# Slot: sanitizedEvidence

<div data-search-exclude markdown="1">



URI: [jumo:sanitizedEvidence](https://jumo.dev/schemas/jumo-v1/sanitizedEvidence)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminResult](MachineAdminResult.md) | Result and sanitized evidence of an Ansible admin command execution |  no  |
| [WorkloadCommandResult](WorkloadCommandResult.md) | Terminal outcome of a claimed WorkloadCommand, sanitized before it leaves the... |  no  |
| [ConnectorTestResult](ConnectorTestResult.md) | Observed result and evidence of a connector test case execution |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminResult](MachineAdminResult.md), [WorkloadCommandResult](WorkloadCommandResult.md), [ConnectorTestResult](ConnectorTestResult.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:sanitizedEvidence |
| native | jumo:sanitizedEvidence |




## LinkML Source

<details>
```yaml
name: sanitizedEvidence
domain_of:
- MachineAdminResult
- WorkloadCommandResult
- ConnectorTestResult
range: string

```
</details></div>