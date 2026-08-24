---
search:
  boost: 5.0
---

# Slot: includes

<div data-search-exclude markdown="1">



URI: [jumo:includes](https://jumo.dev/schemas/jumo-v1/includes)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitProfile](KitProfile.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [KitProfile](KitProfile.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [KitProfile](KitProfile.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z][a-z0-9-]*$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:includes |
| native | jumo:includes |




## LinkML Source

<details>
```yaml
name: includes
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: KitProfile
domain_of:
- KitProfile
range: string
multivalued: true
pattern: ^[a-z][a-z0-9-]*$

```
</details></div>