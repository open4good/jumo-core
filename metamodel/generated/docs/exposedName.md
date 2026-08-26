---
search:
  boost: 5.0
---

# Slot: exposedName

<div data-search-exclude markdown="1">



URI: [jumo:exposedName](https://jumo.dev/schemas/jumo-v1/exposedName)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpBundleOperation](McpBundleOperation.md) |  |  no  |
| [PlannedOperation](PlannedOperation.md) | One operation exposed by a signed MCP gateway session plan, resolved from a v... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpBundleOperation](McpBundleOperation.md), [PlannedOperation](PlannedOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:exposedName |
| native | jumo:exposedName |




## LinkML Source

<details>
```yaml
name: exposedName
domain_of:
- McpBundleOperation
- PlannedOperation
range: string

```
</details></div>