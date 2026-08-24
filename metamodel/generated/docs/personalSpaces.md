---
search:
  boost: 5.0
---

# Slot: personalSpaces

<div data-search-exclude markdown="1">



URI: [jumo:personalSpaces](https://jumo.dev/schemas/jumo-v1/personalSpaces)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProjectPersonalSpaceBinding](ProjectPersonalSpaceBinding.md) |
| Domain Of | [ProjectSpec](ProjectSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | jumo:personalSpaces |
| native | jumo:personalSpaces |




## LinkML Source

<details>
```yaml
name: personalSpaces
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectSpec
domain_of:
- ProjectSpec
range: ProjectPersonalSpaceBinding
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>