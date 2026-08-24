---
search:
  boost: 5.0
---

# Slot: documentation


_Where this Project's governed Markdown lives and who may retrieve it. Jumo indexes declared roots and nothing else (ADR-0014)._



<div data-search-exclude markdown="1">



URI: [jumo:documentation](https://jumo.dev/schemas/jumo-v1/documentation)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProjectDocumentation](ProjectDocumentation.md) |
| Domain Of | [ProjectSpec](ProjectSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectSpec](ProjectSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:documentation |
| native | jumo:documentation |




## LinkML Source

<details>
```yaml
name: documentation
description: Where this Project's governed Markdown lives and who may retrieve it.
  Jumo indexes declared roots and nothing else (ADR-0014).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectSpec
domain_of:
- ProjectSpec
range: ProjectDocumentation
inlined: true

```
</details></div>