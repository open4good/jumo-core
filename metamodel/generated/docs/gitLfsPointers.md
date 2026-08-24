---
search:
  boost: 5.0
---

# Slot: gitLfsPointers

<div data-search-exclude markdown="1">



URI: [jumo:gitLfsPointers](https://jumo.dev/schemas/jumo-v1/gitLfsPointers)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PersonalSpaceSpec](PersonalSpaceSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PersonalSpaceSpec](PersonalSpaceSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PersonalSpaceSpec](PersonalSpaceSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:gitLfsPointers |
| native | jumo:gitLfsPointers |




## LinkML Source

<details>
```yaml
name: gitLfsPointers
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PersonalSpaceSpec
domain_of:
- PersonalSpaceSpec
range: string
multivalued: true

```
</details></div>