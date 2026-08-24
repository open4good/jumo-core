---
search:
  boost: 5.0
---

# Slot: sections

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
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
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
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionSpecBody
domain_of:
- ProjectionSpecBody
range: ProjectionSection
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>