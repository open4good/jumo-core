---
search:
  boost: 5.0
---

# Slot: subjectRef

<div data-search-exclude markdown="1">



URI: [jumo:subjectRef](https://jumo.dev/schemas/jumo-v1/subjectRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionTarget](AttentionTarget.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [AttentionTarget](AttentionTarget.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AttentionTarget](AttentionTarget.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:subjectRef |
| native | jumo:subjectRef |




## LinkML Source

<details>
```yaml
name: subjectRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AttentionTarget
domain_of:
- AttentionTarget
range: Identifier
required: true

```
</details></div>