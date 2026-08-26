---
search:
  boost: 5.0
---

# Slot: grantIds

<div data-search-exclude markdown="1">



URI: [jumo:grantIds](https://jumo.dev/schemas/jumo-v1/grantIds)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SessionPlanRequest](SessionPlanRequest.md) | Request to issue a signed MCP gateway session plan for one ExecutionCellLease... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [SessionPlanRequest](SessionPlanRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SessionPlanRequest](SessionPlanRequest.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:grantIds |
| native | jumo:grantIds |




## LinkML Source

<details>
```yaml
name: grantIds
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SessionPlanRequest
domain_of:
- SessionPlanRequest
range: Identifier
multivalued: true

```
</details></div>