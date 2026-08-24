---
search:
  boost: 5.0
---

# Slot: roles

<div data-search-exclude markdown="1">



URI: [jumo:roles](https://jumo.dev/schemas/jumo-v1/roles)
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
| self | jumo:roles |
| native | jumo:roles |




## LinkML Source

<details>
```yaml
name: roles
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationTemplateSpec
domain_of:
- OrganizationTemplateSpec
range: Identifier
multivalued: true

```
</details></div>