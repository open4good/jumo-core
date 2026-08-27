---
search:
  boost: 5.0
---

# Slot: maxWidth


_Maximum content width in pixels for the surface. Absent means no constraint._



<div data-search-exclude markdown="1">



URI: [jumo:maxWidth](https://jumo.dev/schemas/jumo-v1/maxWidth)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [JourneyPresentation](JourneyPresentation.md) | Decorative and layout-only: how a journey or step is drawn, never what it may... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [JourneyPresentation](JourneyPresentation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [JourneyPresentation](JourneyPresentation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:maxWidth |
| native | jumo:maxWidth |




## LinkML Source

<details>
```yaml
name: maxWidth
description: Maximum content width in pixels for the surface. Absent means no constraint.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: JourneyPresentation
domain_of:
- JourneyPresentation
range: integer

```
</details></div>