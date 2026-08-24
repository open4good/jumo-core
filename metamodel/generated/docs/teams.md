---
search:
  boost: 5.0
---

# Slot: teams

<div data-search-exclude markdown="1">



URI: [jumo:teams](https://jumo.dev/schemas/jumo-v1/teams)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationTemplateSpec](OrganizationTemplateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [OrganizationTemplateSpec](OrganizationTemplateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OrganizationTemplateSpec](OrganizationTemplateSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:teams |
| native | jumo:teams |




## LinkML Source

<details>
```yaml
name: teams
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationTemplateSpec
domain_of:
- OrganizationTemplateSpec
range: Identifier
multivalued: true

```
</details></div>