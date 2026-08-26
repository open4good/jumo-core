---
search:
  boost: 5.0
---

# Slot: sections


_Rendered fields grouped into sections. May be empty only for an action-only projection, where actions is non-empty and the projection exists solely to anchor a headless journey step's callable capabilities (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:sections](https://jumo.dev/schemas/jumo-v1/sections)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectionSpecBody](ProjectionSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProjectionSection](ProjectionSection.md) |
| Domain Of | [ProjectionSpecBody](ProjectionSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | jumo:sections |
| native | jumo:sections |




## LinkML Source

<details>
```yaml
name: sections
description: Rendered fields grouped into sections. May be empty only for an action-only
  projection, where actions is non-empty and the projection exists solely to anchor
  a headless journey step's callable capabilities (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionSpecBody
domain_of:
- ProjectionSpecBody
range: ProjectionSection
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>