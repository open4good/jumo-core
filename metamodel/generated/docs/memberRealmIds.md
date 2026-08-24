---
search:
  boost: 5.0
---

# Slot: memberRealmIds

<div data-search-exclude markdown="1">



URI: [jumo:memberRealmIds](https://jumo.dev/schemas/jumo-v1/memberRealmIds)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationBody](OrganizationBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [OrganizationBody](OrganizationBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OrganizationBody](OrganizationBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:memberRealmIds |
| native | jumo:memberRealmIds |




## LinkML Source

<details>
```yaml
name: memberRealmIds
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationBody
domain_of:
- OrganizationBody
range: Identifier
required: true
multivalued: true
minimum_cardinality: 1

```
</details></div>