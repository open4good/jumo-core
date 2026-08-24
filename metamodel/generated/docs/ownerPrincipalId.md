---
search:
  boost: 5.0
---

# Slot: ownerPrincipalId

<div data-search-exclude markdown="1">



URI: [jumo:ownerPrincipalId](https://jumo.dev/schemas/jumo-v1/ownerPrincipalId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationBody](OrganizationBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [OrganizationBody](OrganizationBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:ownerPrincipalId |
| native | jumo:ownerPrincipalId |




## LinkML Source

<details>
```yaml
name: ownerPrincipalId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationBody
domain_of:
- OrganizationBody
range: string
required: true

```
</details></div>