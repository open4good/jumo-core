---
search:
  boost: 5.0
---

# Slot: blueprintName

<div data-search-exclude markdown="1">



URI: [jumo:blueprintName](https://jumo.dev/schemas/jumo-v1/blueprintName)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationTemplateSpec](OrganizationTemplateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [OrganizationTemplateSpec](OrganizationTemplateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OrganizationTemplateSpec](OrganizationTemplateSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{3,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:blueprintName |
| native | jumo:blueprintName |




## LinkML Source

<details>
```yaml
name: blueprintName
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationTemplateSpec
domain_of:
- OrganizationTemplateSpec
range: string
required: true
pattern: ^.{3,}$

```
</details></div>