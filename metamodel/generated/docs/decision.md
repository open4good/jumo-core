---
search:
  boost: 5.0
---

# Slot: decision

<div data-search-exclude markdown="1">



URI: [jumo:decision](https://jumo.dev/schemas/jumo-v1/decision)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpReconciliationDecision](McpReconciliationDecision.md) |  |  no  |
| [ConnectorActivationDecision](ConnectorActivationDecision.md) | Owner approval and activation decision activating a connector package |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpReconciliationDecision](McpReconciliationDecision.md), [ConnectorActivationDecision](ConnectorActivationDecision.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:decision |
| native | jumo:decision |




## LinkML Source

<details>
```yaml
name: decision
domain_of:
- McpReconciliationDecision
- ConnectorActivationDecision
range: string

```
</details></div>