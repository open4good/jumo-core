---
search:
  boost: 5.0
---

# Slot: signature

<div data-search-exclude markdown="1">



URI: [jumo:signature](https://jumo.dev/schemas/jumo-v1/signature)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) | Specification of an allowlisted machine admin playbook |  no  |
| [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) | Signed, single-use MCP invocation authorization (ADR-0055) |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md), [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:signature |
| native | jumo:signature |




## LinkML Source

<details>
```yaml
name: signature
domain_of:
- MachineAdminPlaybookSpec
- InvocationAuthorizationReceipt
range: string

```
</details></div>