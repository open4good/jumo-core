---
search:
  boost: 5.0
---

# Slot: optionsFrom


_A contract kind whose declared instances populate this field's options, replacing a hardcoded roster lookup with a projection over real Git contracts. Must name a declared kind (Rego). An instance is offered as its `metadata.id` labelled by its `metadata.name`; a projection selects which instances are offered, never how one is addressed. Mutually exclusive with optionsFromEnum and optionsFromNested (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:optionsFrom](https://jumo.dev/schemas/jumo-v1/optionsFrom)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectionField](ProjectionField.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProjectionField](ProjectionField.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectionField](ProjectionField.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:optionsFrom |
| native | jumo:optionsFrom |




## LinkML Source

<details>
```yaml
name: optionsFrom
description: A contract kind whose declared instances populate this field's options,
  replacing a hardcoded roster lookup with a projection over real Git contracts. Must
  name a declared kind (Rego). An instance is offered as its `metadata.id` labelled
  by its `metadata.name`; a projection selects which instances are offered, never
  how one is addressed. Mutually exclusive with optionsFromEnum and optionsFromNested
  (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionField
domain_of:
- ProjectionField
range: string

```
</details></div>