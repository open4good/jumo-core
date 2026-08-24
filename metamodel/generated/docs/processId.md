---
search:
  boost: 5.0
---

# Slot: processId

<div data-search-exclude markdown="1">



URI: [jumo:processId](https://jumo.dev/schemas/jumo-v1/processId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessSpecBody](ProcessSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [ProcessSpecBody](ProcessSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessSpecBody](ProcessSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:processId |
| native | jumo:processId |




## LinkML Source

<details>
```yaml
name: processId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessSpecBody
domain_of:
- ProcessSpecBody
range: Identifier
required: true

```
</details></div>