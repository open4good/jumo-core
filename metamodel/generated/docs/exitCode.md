---
search:
  boost: 5.0
---

# Slot: exitCode

<div data-search-exclude markdown="1">



URI: [jumo:exitCode](https://jumo.dev/schemas/jumo-v1/exitCode)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminResult](MachineAdminResult.md) | Result and sanitized evidence of an Ansible admin command execution |  no  |
| [CliInvocationResult](CliInvocationResult.md) | Sanitized final output payload, exit code, and evidence digest from a CLI exe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminResult](MachineAdminResult.md), [CliInvocationResult](CliInvocationResult.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:exitCode |
| native | jumo:exitCode |




## LinkML Source

<details>
```yaml
name: exitCode
domain_of:
- MachineAdminResult
- CliInvocationResult
range: string

```
</details></div>