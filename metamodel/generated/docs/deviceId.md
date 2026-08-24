---
search:
  boost: 5.0
---

# Slot: deviceId

<div data-search-exclude markdown="1">



URI: [jumo:deviceId](https://jumo.dev/schemas/jumo-v1/deviceId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionCellIdentity](ExecutionCellIdentity.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [ExecutionCellIdentity](ExecutionCellIdentity.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ExecutionCellIdentity](ExecutionCellIdentity.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:deviceId |
| native | jumo:deviceId |




## LinkML Source

<details>
```yaml
name: deviceId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionCellIdentity
domain_of:
- ExecutionCellIdentity
range: Identifier
required: true

```
</details></div>