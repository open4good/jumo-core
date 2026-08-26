---
search:
  boost: 5.0
---

# Slot: grantId

<div data-search-exclude markdown="1">



URI: [jumo:grantId](https://jumo.dev/schemas/jumo-v1/grantId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PlannedOperation](PlannedOperation.md) | One operation exposed by a signed MCP gateway session plan, resolved from a v... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [PlannedOperation](PlannedOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PlannedOperation](PlannedOperation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:grantId |
| native | jumo:grantId |




## LinkML Source

<details>
```yaml
name: grantId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PlannedOperation
domain_of:
- PlannedOperation
range: Identifier
required: true

```
</details></div>