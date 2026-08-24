---
search:
  boost: 5.0
---

# Slot: authorRef

<div data-search-exclude markdown="1">



URI: [jumo:authorRef](https://jumo.dev/schemas/jumo-v1/authorRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpReconciliationDecision](McpReconciliationDecision.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [McpReconciliationDecision](McpReconciliationDecision.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpReconciliationDecision](McpReconciliationDecision.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:authorRef |
| native | jumo:authorRef |




## LinkML Source

<details>
```yaml
name: authorRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpReconciliationDecision
domain_of:
- McpReconciliationDecision
range: Identifier
required: true

```
</details></div>