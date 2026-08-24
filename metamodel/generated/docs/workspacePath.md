---
search:
  boost: 5.0
---

# Slot: workspacePath

<div data-search-exclude markdown="1">



URI: [jumo:workspacePath](https://jumo.dev/schemas/jumo-v1/workspacePath)
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
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PersonalSpaceSpec](PersonalSpaceSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[A-Za-z0-9._/-]+$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:workspacePath |
| native | jumo:workspacePath |




## LinkML Source

<details>
```yaml
name: workspacePath
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PersonalSpaceSpec
domain_of:
- PersonalSpaceSpec
range: string
required: true
pattern: ^[A-Za-z0-9._/-]+$

```
</details></div>