---
search:
  boost: 5.0
---

# Slot: optionsFromNested


_An alternative to optionsFrom for a value object with no standalone Git contract of its own, such as Project.spec.milestones -- see NestedOptionsSource. Mutually exclusive with optionsFrom and optionsFromEnum (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:optionsFromNested](https://jumo.dev/schemas/jumo-v1/optionsFromNested)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectionField](ProjectionField.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [NestedOptionsSource](NestedOptionsSource.md) |
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
| self | jumo:optionsFromNested |
| native | jumo:optionsFromNested |




## LinkML Source

<details>
```yaml
name: optionsFromNested
description: An alternative to optionsFrom for a value object with no standalone Git
  contract of its own, such as Project.spec.milestones -- see NestedOptionsSource.
  Mutually exclusive with optionsFrom and optionsFromEnum (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionField
domain_of:
- ProjectionField
range: NestedOptionsSource
inlined: true

```
</details></div>