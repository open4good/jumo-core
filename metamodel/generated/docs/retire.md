---
search:
  boost: 5.0
---

# Slot: retire

<div data-search-exclude markdown="1">



URI: [jumo:retire](https://jumo.dev/schemas/jumo-v1/retire)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EntityFacet](EntityFacet.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [EntityFacet](EntityFacet.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EntityFacet](EntityFacet.md) |


<details>
<summary>Additional Constraints</summary>
**Must Equal:** `NONE`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:retire |
| native | jumo:retire |




## LinkML Source

<details>
```yaml
name: retire
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EntityFacet
domain_of:
- EntityFacet
range: string
required: true
equals_string: NONE

```
</details></div>