---
search:
  boost: 5.0
---

# Slot: connectorCatalogScope

<div data-search-exclude markdown="1">



URI: [jumo:connectorCatalogScope](https://jumo.dev/schemas/jumo-v1/connectorCatalogScope)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |


<details>
<summary>Additional Constraints</summary>
**Must Equal:** `OWN_REALM_SANITIZED`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:connectorCatalogScope |
| native | jumo:connectorCatalogScope |




## LinkML Source

<details>
```yaml
name: connectorCatalogScope
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChiefOfStaffProfileSpec
domain_of:
- ChiefOfStaffProfileSpec
range: string
required: true
equals_string: OWN_REALM_SANITIZED

```
</details></div>