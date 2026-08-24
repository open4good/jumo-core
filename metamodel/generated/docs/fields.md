---
search:
  boost: 5.0
---

# Slot: fields

<div data-search-exclude markdown="1">



URI: [jumo:fields](https://jumo.dev/schemas/jumo-v1/fields)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectionSection](ProjectionSection.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProjectionField](ProjectionField.md) |
| Domain Of | [ProjectionSection](ProjectionSection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectionSection](ProjectionSection.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:fields |
| native | jumo:fields |




## LinkML Source

<details>
```yaml
name: fields
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionSection
domain_of:
- ProjectionSection
range: ProjectionField
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>