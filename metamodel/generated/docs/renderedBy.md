---
search:
  boost: 5.0
---

# Slot: renderedBy


_The id of an InterfaceSurface `Surface` this projection is scoped to. Required and checked against every declared surface (Rego), rather than optional, so a projection nobody lists is never silently unconstrained -- the same fail-closed shape as every other reference in this metamodel._



<div data-search-exclude markdown="1">



URI: [jumo:renderedBy](https://jumo.dev/schemas/jumo-v1/renderedBy)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectionSpecBody](ProjectionSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [ProjectionSpecBody](ProjectionSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectionSpecBody](ProjectionSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:renderedBy |
| native | jumo:renderedBy |




## LinkML Source

<details>
```yaml
name: renderedBy
description: The id of an InterfaceSurface `Surface` this projection is scoped to.
  Required and checked against every declared surface (Rego), rather than optional,
  so a projection nobody lists is never silently unconstrained -- the same fail-closed
  shape as every other reference in this metamodel.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionSpecBody
domain_of:
- ProjectionSpecBody
range: Identifier
required: true

```
</details></div>