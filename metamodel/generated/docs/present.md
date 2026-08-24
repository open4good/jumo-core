---
search:
  boost: 5.0
---

# Slot: present


_The value at `path` must be present and non-empty. Exactly one of equalsValue and present is required (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:present](https://jumo.dev/schemas/jumo-v1/present)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectionOptionCondition](ProjectionOptionCondition.md) | One condition a candidate instance must satisfy to be offered as a field's op... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [ProjectionOptionCondition](ProjectionOptionCondition.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectionOptionCondition](ProjectionOptionCondition.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:present |
| native | jumo:present |




## LinkML Source

<details>
```yaml
name: present
description: The value at `path` must be present and non-empty. Exactly one of equalsValue
  and present is required (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionOptionCondition
domain_of:
- ProjectionOptionCondition
range: boolean

```
</details></div>