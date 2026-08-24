---
search:
  boost: 5.0
---

# Slot: score

<div data-search-exclude markdown="1">



URI: [jumo:score](https://jumo.dev/schemas/jumo-v1/score)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpReconciliationCandidate](McpReconciliationCandidate.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Float](Float.md) |
| Domain Of | [McpReconciliationCandidate](McpReconciliationCandidate.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpReconciliationCandidate](McpReconciliationCandidate.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:score |
| native | jumo:score |




## LinkML Source

<details>
```yaml
name: score
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpReconciliationCandidate
domain_of:
- McpReconciliationCandidate
range: float
required: true

```
</details></div>